<?php if(!empty($participantsList)){?>
	<?php foreach($participantsList as $participant){?>
		<tr>
			<td><?php echo $participant["row"]["firstname"]." ".$participant["row"]["middlename"]." ".$participant["row"]["lastname"]." ".$participant["row"]["suffix"];?></td>
			<td>
				<?php echo $participant["row"]["company_affliated"];?>
			</td>
			<td>
				<?php $category = query("SELECT * FROM tbl_categories","WHERE categoryID = :id",[":id" => $participant["row"]["categoryID"]],"variable",1); ?>
				<?php echo (!empty($category["row"]["category"])) ? $category["row"]["category"] : "";?>
			</td>
			<td>
				<?php $category = query("SELECT * FROM tbl_paymenttype","WHERE payment_typeID = :id",[":id" => $participant["row"]["paymentID"]],"variable",1); ?>
				<?php echo (!empty($category["row"]["payment_type"])) ? $category["row"]["payment_type"] : "";?>
			</td>
			<td>
				<?php echo $participant["row"]["amount_paid"];?>
			</td>
			
			<?php if($participant["row"]["registration_status"] == 1){?>
				<td><button class="btn btn-warning" style="width:95px;" disabled >Registered</button></td>
			<?php }else{?>
				<td>
					<button class="btn btn-success" style="width:95px;" id="btn-register-participant<?php echo $participant["row"]["registrantID"];?>" onclick="walkInRegistrationController.registerWalkInParticipant(<?php echo $participant["row"]["registrantID"];?>);">Register</button>
				</td>
			<?php }?>
			<td>
				<button class="btn btn-warning" id="btn-update-participant<?php echo $participant["row"]["registrantID"];?>" onclick="walkInRegistrationController.displayUpdateWalkInRegistrationForm(<?php echo $participant["row"]["registrantID"];?>);"><i class="fa fa-edit"></i></button>
			</td>
		</tr>
	<?php }?>
<?php }else{?>
	<tr>
		<td colspan="4">
			<h4 style="color:red;">Empty registrant list&hellip;</h4>
		</td>
	</tr>
<?php }?>
