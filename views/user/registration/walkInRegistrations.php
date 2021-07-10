<?php require_once('views/header.php');?>
<input type="hidden" value="<?php echo $_GET['pg'];?>" class="page"/>
<input type="hidden" value="tbl_items" class="tblname"/>
<div id="body-container">
   <div id="body-content">
	<?php require_once('views/'.getPage().'/navbar.php');?>
	
	
     <section class="nav nav-page nav-page-fixed">
        <div class="container">
            <div class="row">
                <div class="span7">
                    <header class="page-header">
                        <h3>Walk-in Registration<br/>
                        </h3>
                    </header>
                </div>
            </div>
        </div>
    </section>
	
	<section class="page container">
		<div class="row">
			<div class="span11">
				<div class="row">
					<div class="span16">
						<div class="row">
							<div class="span16">
									<div class="tab-content">
										<div class="tab-pane fade in active" id="student-registration">
											<div class="row">
												<div class="span5">
													<div class="row">
														<div class="span5">
															<div class="box well well-small well-shadow mainform">
																<div class="row">
																	<div style="text-align:center;float:left;width:50%;padding-left:40px;">
																		<i class="fa fa-users fa-5x"></i>
																		<p>Total number of walk-in registered participants</p>
																	</div>
																	<div>
																		<h3 style="font-size:25px;margin-top:50px;float:right;margin-right: 10px;">
																			<span class="total-walk-in-registrants" style="text-shadow:2px 2px 2px gray;">0</span>
																			<br>
																			<span style="font-size:20px;" class="total-percentage">(0%)</span>
																		</h3>
																	</div>
																</div>
															</div>	
														</div>
														<div class="span5">
															<div class="box well well-small well-shadow mainform">
																<div class="row">
																	<div style="text-align:center;float:left;width:50%;padding-left:40px;">
																		<p>Total number of walk-in registrants</p>
																	</div>
																	<div>
																		<h3 style="font-size:30px;float:right;margin-right: 30px;">
																			<?php $totalParticipants = query('SELECT COUNT(*) AS numberOfParticipants FROM tbl_registrants WHERE registration_type = "walk-in"','','','variable',1);?>
																			<span class="total-tudents"><?php echo $totalParticipants["row"]["numberOfParticipants"];?></span>
																		</h3>
																	</div>
																</div>
															</div>	
														</div>
													</div>
													
												</div>
												<div class="span11">
													<div class="row">
														<div class="span11" >
															<button class="btn btn-primary" onclick="walkInRegistrationController.displayAddWalkInRegistrantForm();"><i class="fa fa-plus"></i> Add Registrant</button>
														</div>
													</div>
													<br>
													<div class="row">
														<div class="span11">
															<div class="well well-small well-shadow mainform"> 
																<legend>Participants Registration <a onclick="walkInRegistrationController.displaySortOption();"><i style="margin-left:62%;" class="fa fa-gear fa-2x"></i></a></legend>
																<form class="item-select" onsubmit="walkInRegistrationController	.searchWalkInRegistrants(); return false;">
																	<div class="row" style="margin-left:auto;margin-right:auto;">
																		<div class="span6" >
																			<select class="select-students span6 txt-walk-in-registant-name" placeholder="Enter student's name&hellip;" >
																				<option></option>
																				<?php $participantList = query('SELECT * FROM tbl_registrants WHERE registration_type = "walk-in" ORDER BY lastname ASC','','','variable');?>
																				<?php foreach($participantList as $participant):?>
																					<option value="<?php echo $participant['row']['registrantID'];?>"><?php echo $participant['row']['firstname']." ".$participant['row']['middlename']." ",$participant['row']['lastname']." ".$participant['row']['suffix'];?></option>
																				<?php endforeach;?>
																			</select>
																		</div>
																		<div class="span2">
																			<button class="btn btn-primary span2 btn-see-items" type="submit" ><i class="fa fa-search" style="font-size:20px;"></i>&nbsp;Search</button>
																		</div>
																		<div class="span1">
																			<button class="btn btn-warning btn-refresh-student-list" onclick="walkInRegistrationController.refreshWalkInRegistrantList();" type="button"><i class="fa fa-refresh" style="font-size:20px;"></i></button>
																		</div>
																	</div>		
																</form>
																<div style="width:100%;height:20px;">
																	<label style="margin-left:90%;"><b>Count:</b> <span class="txt-counter"><?php echo $totalParticipants["row"]["numberOfParticipants"];?></span></label>
																</div>
																<div class="well well-small well-shadow" style="width:100px;margin-bottom:-20px;margin-left:20px;">
																	Registrants list
																</div>
																
																<div class="box">
																	<div class="box-content">
																	<br>
																		<div class="row">
																			<div class="span9" style="width:96%;">
																				<div class="table-responsive"  style="overflow-x:auto;height:400px;">
																					<table class="table table-hover table-striped">
																						<thead>
																							<tr>
																								<th>Name</th>
																								<th>Company/Agency</th>
																								<th>Category</th>
																								<th>Payment type</th>
																								<th>Amount Paid</th>
																								<th></th>
																							</tr>
																						</thead>
																						<tbody id="displayWalkInRegistrants">	
																							<!--Display student List-->
																						</tbody>
																					</table>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>	
										</div>
									</div>
							</div>
						</div>
							
						
					</div>
				</div>
				
			</div>
			
		</div>
	</section>
</div>
</div>
<script src="public/js/user/registration/walkInRegistrationController.js"></script>
<?php require_once('views/footer.php');?>
