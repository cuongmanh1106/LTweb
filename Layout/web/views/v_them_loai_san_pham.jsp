<div class="content-box-header">
  <h3><?php echo $tieude ?></h3>
  <div class="clear"></div>
</div>
<!-- End .content-box-header -->
<div class="content-box-content">
  <div class="tab-content default-tab" id="tab1">
    <!--`ma_tin_tuc`, `tieu_de`, `tom_tat`, `chi_tiet`, `hinh`, `tac_gia`, `ngay_dang`, `ngay_gui`, `so_luot_xem`-->
    <form method="post" action="Add_loai_san_pham">
        <fieldset>
          
          <p>
            <label>Tên lo?i s?n ph?m</label>
            <input class="text-input small-input kiemtra" type="text" id="ten_loai" name="ten_loai" />
          </p>
          
             <p>
            <label>mô t?</label>
            <textarea name="mo_ta" cols="50" rows="3" class="text-input textarea wysiwyg " id="medium-input"></textarea>
        </p>
          
         
      
          <p>
            <label>Mã lo?i cha</label>
			<select class="form-control" id="form-field-select-1" name="ma_loai_cha">
              <option value="9">Nam</option>
              <option value="15">Nu</option>       
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
