<form style="margin:0px;" onsubmit="registrationController.saveSortOption(); return false;">
	<div class="row">
		<div class="span5">
			<div class="form-inner">
				<div class="well well-small well-shadow" style="width:150px;margin-bottom:-20px;margin-left:20px;">
					<b>Set sort option</b>
				</div>
				<div class="well" style="height:150px;">
					<div style="width:100%">
						<h6>* Category:</h6>
						<div class="input-prepend">
							<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
							<select style="width:90%;" id="select_category">
								<option></option>
								<?php $categoryList = query("SELECT * FROM tbl_categories","","","variable");?>
								<?php foreach($categoryList as $category){?>
									<option id="sort-option<?php echo $category["row"]["categoryID"]; ?>" value="<?php echo $category["row"]["categoryID"];?>"><?php echo $category["row"]["category"];?></option>
								<?php }?>
							</select>
						</div>
						
						<h6>* Registration Status:</h6>
						<div class="input-prepend">
							<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
							<select style="width:90%;"  id="select_status">
								<option></option>
								<option value="1">Registered</option>
								<option value="0">Not Registered</option>
								
							</select>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="span5">
			<button class="btn btn-primary form-control" type="submit">Save</button>
			<button class="btn btn-warning" type="button" onclick="registrationController.closeSortOptionForm();">Cancel</button>
		</div>
	</div>
</form>
