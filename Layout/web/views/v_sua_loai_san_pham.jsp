<%@page import="java.sql.ResultSet"%>
<div class="content-box-header">
  <h3><?php echo $tieude ?></h3>
  <div class="clear"></div>
</div>
<% ResultSet sp = (ResultSet)request.getAttribute("sp"); %>
<!-- End .content-box-header -->
<div class="content-box-content">
  <div class="tab-content default-tab" id="tab1">
    <!--`ma_tin_tuc`, `tieu_de`, `tom_tat`, `chi_tiet`, `hinh`, `tac_gia`, `ngay_dang`, `ngay_gui`, `so_luot_xem`-->
    <% sp.next(); %>
    <form method="post" action="Update_loai_san_pham">
        <fieldset>
            
            <input class="text-input small-input kiemtra" type="text" readonly="readonly" id="ma_loai" name="ma_loai" value="<%= sp.getInt("ma_loai")%>" />
          
          <p>
            <label>Tên lo?i s?n ph?m</label>
            <input class="text-input small-input kiemtra" type="text" id="ten_loai" name="ten_loai" value="<%= sp.getString("ten_loai")%>" />
          </p>
          
             <p>
            <label>mô t?</label>
            <textarea name="mo_ta" cols="50" rows="3" class="text-input textarea wysiwyg" id="medium-input"><%= sp.getString("mo_ta")%></textarea>
        </p>
          
         
      
          <p>
            <label>Mã lo?i cha</label>
               <select class="form-control" id="form-field-select-1" name="ma_loai_cha">
                   <option <% if(sp.getInt("ma_loai_cha")==9) out.print("selected"); %> value="9">Nam</option>
                   <option <% if(sp.getInt("ma_loai_cha")==15) out.print("selected"); %> value="15">Nu</option>       
              </select>          
          </p>
          
          
       
            
          <p>
            <input class="button" type="submit" value="Cap nhat" name="btnCapnhat" />
            <input class="button" type="button" value="Bo qua" onclick="window.location='read_lsp'" />
          </p>
        </fieldset>
        <div class="clear"></div>
        <!-- End .clear -->
        
      </form>
	   
  </div>
  
</div>
