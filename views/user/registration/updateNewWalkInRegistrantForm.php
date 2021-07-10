<form style="margin:0px;" onsubmit="walkInRegistrationController.saveUpdateWalkInRegistrant(this); return false;">
	<input type="hidden" value="<?php echo $registrantInfo["row"]["registrantID"]; ?>" name="registrantID">
	<div class="row">
		<div class="span7">
			<div class="form-inner">
				<div class="well well-small well-shadow" style="width:150px;margin-bottom:-20px;margin-left:20px;">
					<b>Personal Information</b>
				</div>
				<div class="well" style="height:280px;">
					<div style="width:100%">
						<h6>* First name:</h6>
						<div class="input-prepend">
							<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
							<input type='text' style="width:90%;" name="firstname" autofocus="autofocus" placeholder="Enter first name&hellip;" value="<?php echo $registrantInfo["row"]["firstname"]; ?>" required />
						</div>
						
						<h6>* Middle name:</h6>
						<div class="input-prepend">
							<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
							<input type='text' style="width:90%;" name="middlename" placeholder="Enter middle name&hellip;" value="<?php echo $registrantInfo["row"]["middlename"]; ?>" required />
						</div>
						
						<h6>* Last name:</h6>
						<div class="input-prepend">
							<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
							<input type='text' style="width:90%;" name="lastname" placeholder="Enter last name&hellip;" value="<?php echo $registrantInfo["row"]["lastname"]; ?>" required />
						</div>
						<div style="width:100%;height:50px;">
							<div style="width:40%;float:left;margin-right:70px;">
								<h6>* Suffix:</h6>
								<div class="input-prepend">
									<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
									<input type='text' style="width:90%;" name="suffix" placeholder="Enter suffix&hellip;" value="<?php echo $registrantInfo["row"]["suffix"]; ?>" />
								</div>
							</div>
							<div style="width:40%;float:left;">
								<h6>* Sex:</h6>
								
								<input type="hidden" value="<?php echo $registrantInfo["row"]["sex"]; ?>" id="gender">
								<label><input type="radio" id="male" <?php if($registrantInfo["row"]["sex"] == "Male"){echo "checked";}?> onclick="walkInRegistrationController.setGender('Male');"> <b>Male</b> <input type="radio" id="female" <?php if($registrantInfo["row"]["sex"] == "Female"){echo "checked";}?> onclick="walkInRegistrationController.setGender('Female');"> <b>Female</b> </label>
							</div>
						</div>
						
					</div>
				</div>
				
				<hr style="margin:5px;">
				
				<div class="well well-small well-shadow" style="width:170px;margin-bottom:-20px;margin-left:20px;">
					<b>Registration Information</b>
				</div>
				<div class="well">
					<div style="height:70px;">
						<div style="width:40%;float:left;margin-right:40px;">
							<h6>* Company/Agency/School:</h6>
							<div class="input-prepend">
								<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
								<input type='text' style="width:90%;" name="cas" placeholder="Enter company/agency/school&hellip;" value="<?php echo $registrantInfo["row"]["company_affliated"];?>" required />
							</div>
						</div>
						<div style="width:40%;float:left;">
							<h6>* Category:</h6>
							<div class="input-prepend">
								<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
								<select name="category" required>
									<option></option>
									<?php $categoryList = query("SELECT * FROM tbl_categories","","","variable");?>
									<?php foreach($categoryList as $category){?>
										<option <?php if($registrantInfo["row"]["categoryID"] == $category["row"]["categoryID"]){echo "selected";}?> value="<?php echo $category["row"]["categoryID"];?>"><?php echo $category["row"]["category"];?></option>
									<?php }?>
								</select>
							</div>
						</div>
					</div>
					<hr style="margin:10px 0px 10px 0px;">
					<div style="height:80px;">
						<div style="width:40%;float:left;margin-right:40px;">
							<h6>* Registration Status:</h6>
							<input type="hidden" value="<?php echo $registrantInfo["row"]["registration_status"]; ?>" id>
							<div class="input-prepend">
								<label><input type="radio" id="registered" <?php if($registrantInfo["row"]["registration_status"] == 1){echo "checked";}?> onclick="walkInRegistrationController.setRegistrationStatus(1);"> <b>Registered</b></label> 
								<label><input type="radio" id="not_registered" <?php if($registrantInfo["row"]["registration_status"] == 0){echo "checked";}?> onclick="walkInRegistrationController.setRegistrationStatus(0);"> <b>Not registered</b></label>
							</div>
						</div>
						<div style="width:40%;float:left;">
							<h6>* Payment status:</h6>
							<input type="hidden" value="<?php echo $registrantInfo["row"]["payment_status"]; ?>">
							<div class="input-prepend">
								<label><input type="radio" <?php if($registrantInfo["row"]["payment_status"] == 1){echo "checked";}?> id="paid" onclick="walkInRegistrationController.setPaymentStatus(1);"> <b>Paid</b></label>
								<label><input type="radio" <?php if($registrantInfo["row"]["payment_status"] == 0){echo "checked";}?> id="not_paid" onclick="walkInRegistrationController.setPaymentStatus(0);"> <b>Not Paid</b></label>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="span7">
			<button class="btn btn-primary form-control" type="submit">Save</button>
			<button class="btn btn-warning" type="button" onclick="walkInRegistrationController.closeAddNewRegistrantForm();">Cancel</button>
		</div>
	</div>
</form>
