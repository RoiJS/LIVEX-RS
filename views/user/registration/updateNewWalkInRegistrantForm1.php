<form style="margin:0px;" onsubmit="walkInRegistrationController.saveUpdateWalkInRegistrant(this); return false;">
	<input type="hidden" value="<?php echo $registrantInfo["row"]["registrantID"]; ?>" name="registrantID">
	<div class="row">
		<div class="span14">
			<div class="row">
				<div class="span7">
					<div class="form-inner">
						<div class="well well-small well-shadow" style="width:150px;margin-bottom:-20px;margin-left:20px;">
							<b>Personal Information</b>
						</div>
						<div class="well" style="height:221px;">
							<div style="width:100%;">
								<div style="width:40%;float:left;margin-right:40px;">
									<h6>* First name:</h6>
									<div class="input-prepend">
										<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
										<input type='text' style="width:90%;" name="firstname" autofocus="autofocus" placeholder="Enter first name&hellip;" value="<?php echo $registrantInfo["row"]["firstname"]; ?>" required />
									</div>
								</div>
								<div style="width:40%;float:left;margin-right:40px;">
									<h6>* Middle name:</h6>
									<div class="input-prepend">
										<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
										<input type='text' style="width:90%;" name="middlename" placeholder="Enter middle name&hellip;" value="<?php echo $registrantInfo["row"]["middlename"]; ?>"  />
									</div>	
								</div>
							</div>
							<div style="width:100%">
								<div style="width:40%;float:left;margin-right:40px;">
									<h6>* Last name:</h6>
									<div class="input-prepend">
										<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
										<input type='text' style="width:90%;" name="lastname" placeholder="Enter last name&hellip;" value="<?php echo $registrantInfo["row"]["lastname"]; ?>" required />
									</div>
								</div>
								<div style="width:40%;float:left;margin-right:40px;">
									<h6>* Suffix:</h6>
									<div class="input-prepend">
										<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
										<input type='text' style="width:90%;" name="suffix" placeholder="Enter suffix&hellip;" value="<?php echo $registrantInfo["row"]["suffix"]; ?>" />
									</div>
								</div>
							</div>
							<div style="width:100%;height:50px;">
								<div style="width:40%;float:left;">
									<h6>* Sex:</h6>
										<input type="hidden" value="<?php echo $registrantInfo["row"]["sex"]; ?>" id="default_gender">
										<label><input type="radio" id="male" <?php if($registrantInfo["row"]["sex"] == "Male"){echo "checked";}?> onclick="walkInRegistrationController.setGender('Male');"> <b>Male</b> <input type="radio" id="female" <?php if($registrantInfo["row"]["sex"] == "Female"){echo "checked";}?> onclick="walkInRegistrationController.setGender('Female');"> <b>Female</b> </label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="span7"> 
					<div class="form-inner">
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
										<select name="category" required >
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
							<div style="height:70px;">
								<div style="width:40%;float:left;margin-right:40px;">
									<h6>* Payment type:</h6>
									<div class="input-prepend">
										<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
										<select name="payment_type" id="payment_type" style="width:100%;" onchange="walkInRegistrationController.setPaymentStatus();" >
											<option></option>
											<?php $paymentTypeList = query("SELECT * FROM tbl_paymenttype","","","variable");?>
											<?php foreach($paymentTypeList as $paymentType){?>
												
												<option value="<?php echo $paymentType["row"]["payment_typeID"];?>" <?php if($paymentType["row"]["payment_typeID"] == $registrantInfo["row"]["paymentID"]){echo "selected";}?>><?php echo $paymentType["row"]["payment_type"];?> </option>
												
											<?php }?>
										</select>
									</div>
								</div>
								<div style="width:40%;float:left;">
									<h6>* Amount:</h6>
									<div class="input-prepend">
										<span class="add-on " rel="tooltip" data-placement="top"><i class="icon-user"></i></span>
										<input type='number' style="width:100%;" name="amount" id="amount" placeholder="Enter amount&hellip;"value="<?php echo $registrantInfo["row"]["amount_paid"];?>"  />
									</div>
								</div>
							</div>
							<div style="height:60px;">
								<div style="width:40%;float:left;margin-right:40px;">
									<h6>* Registration Status:</h6>
									<div class="input-prepend">
										<input type="hidden" value="<?php echo $registrantInfo["row"]["registration_status"]; ?>" id="default_registration_status">
										<label><input type="radio" id="registered" <?php if($registrantInfo["row"]["registration_status"] == 1){echo "checked";}?> onclick="walkInRegistrationController.setRegistrationStatus(1);"> <b>Registered</b>  <input type="radio" id="not_registered" <?php if($registrantInfo["row"]["registration_status"] == 0){echo "checked";}?> onclick="walkInRegistrationController.setRegistrationStatus(0);"> <b>Not registered</b></label>
									</div>
								</div>
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
