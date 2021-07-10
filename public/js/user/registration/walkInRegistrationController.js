var walkInRegistrationController = {
	
	walkInRegistrantForm : null,
	gender : null,
	registration_status : null,
	payment_status : null,
	sortOptionForm : null,
	sortCategory : "",
	sortStatus : "",
	
	searchWalkInRegistrants : function(){
		
		walkInRegistrantData = $.trim($(".txt-walk-in-registant-name").val());
		
		if(walkInRegistrantData != ""){
			verifyRegistrant = ajax({action : "searchWalkInRegistrants", walkInRegistrantData : walkInRegistrantData}, true);
			$("#displayWalkInRegistrants").html(verifyRegistrant);	
			$("#btn-register-participant" + walkInRegistrantData).focus();
		}else{
			bootbox.alert(messageBody("warning", "Please select a registrant."), function(){
				$(".txt-walk-in-registant-name").focus();	
			});
		}
	},
	
	
	registerWalkInParticipant : function(participantData){
		
		bootbox.confirm(messageBody("question","Are you sure to register selected participant?"), function(result){
			if(result){
				registerParticipant = ajax({action : "registerWalkInParticipant", participantData : participantData},true);
				console.log(registerParticipant)
				bootbox.alert(messageBody("info","Selected participant has been successfully registered."), function(){
					
					walkInRegistrationController.displayWalkInRegistrationStatus();
					
					$(".txt-walk-in-registant-name").focus();
					$(".txt-walk-in-registant-name").val("");
				});
			}
		});	
	},
	
	refreshWalkInRegistrantList : function(){
		this.displayWalkInRegistrants();
		this.displayWalkInRegistrationStatus();
		$(".txt-walk-in-registant-name").val("");
	},
	
	displayWalkInRegistrants : function(){
		showComponents("displayWalkInRegistrants","#displayWalkInRegistrants");
	},
	
	displayWalkInRegistrationStatus : function(){
		getWalkInRegistrationStatus = ajax({action : "getWalkInRegistrationStatus"}, true);
		registrationStatus = JSON.parse(getWalkInRegistrationStatus);
		$(".total-walk-in-registrants").html(registrationStatus[0]);
		$(".total-percentage").html("(" + registrationStatus[1] + " %)");
	},
	
	displayAddWalkInRegistrantForm : function(){
		this.walkInRegistrantForm = modalForm("Add new registrant",ajax({action : "addWalkInRegistrantForm"}, true));
	},
	
	closeAddNewRegistrantForm : function(){
		this.walkInRegistrantForm.modal("hide");
	},
	
	displayUpdateWalkInRegistrationForm: function(registrantData){
		this.walkInRegistrantForm = modalForm("Update registrant information",ajax({action : "updateWalkInRegistrantForm", registrantData : registrantData}, true));
		this.setGender(document.getElementById("default_gender").value);
		this.setRegistrationStatus(document.getElementById("default_registration_status").value);
	},
	
	saveNewWalkInRegistrant : function(registration_form){
		var person = {};
		
		person.firstname = registration_form.firstname.value;
		person.middlename = registration_form.middlename.value;
		person.lastname = registration_form.lastname.value;
		person.suffix = registration_form.suffix.value;
		person.gender = this.gender;
		person.cas = registration_form.cas.value;
		person.category = registration_form.category.value;
		person.payment_type = registration_form.payment_type.value;
		person.amount = registration_form.amount.value;
		person.registration_status = this.registration_status;
		
		bootbox.confirm(messageBody("question","Are you sure to save new walk in registrant?"), function(result){
			if(result){
				saveRegistrantInfo = ajax({action : "saveRegistrantInfo", person : person},true);
				bootbox.confirm(messageBody("info","New walk in registrant has been successfully saved."), function(result){
					if(result){
						location.reload();
					}
				});
			}
		});
	},
	
	setPaymentStatus : function(){
		var paymentID = document.getElementById("payment_type").value;
		document.getElementById("amount").value = parseInt(ajax({action : "getAmount", paymentID : paymentID},true));
	},
	
	saveUpdateWalkInRegistrant : function(registration_form){
		var person = {};
		
		person.registrantID = registration_form.registrantID.value;
		person.firstname = registration_form.firstname.value;
		person.middlename = registration_form.middlename.value;
		person.lastname = registration_form.lastname.value;
		person.suffix = registration_form.suffix.value;
		person.gender = this.gender;
		person.cas = registration_form.cas.value;
		person.category = registration_form.category.value;
		person.payment_type = registration_form.payment_type.value;
		person.amount = registration_form.amount.value;
		person.registration_status = this.registration_status;
		
		bootbox.confirm(messageBody("question","Are you sure to update information for the selected walk in registrant?"), function(result){
			if(result){
				saveUpdateRegistrantInfo = ajax({action : "saveUpdateRegistrantInfo", person : person},true);
				
				bootbox.confirm(messageBody("info","Selected walk in registrant has been successfully updated."), function(result){
					if(result){
						location.reload();
					}
				});
			}
		});
	},
	
	setGender : function(gender){
		this.gender = gender;
		
		if(gender == "Male"){
			document.getElementById("male").checked = true;
			document.getElementById("female").checked = false;
		}else{
			document.getElementById("male").checked = false;
			document.getElementById("female").checked = true;
		}
		console.log(this.gender);
	},
	
	setRegistrationStatus : function(registration_status){
		this.registration_status = registration_status;
		
		if(registration_status == 1){
			document.getElementById("registered").checked = true;
			document.getElementById("not_registered").checked = false;
		}else{
			document.getElementById("registered").checked = false;
			document.getElementById("not_registered").checked = true;
		}
		
		console.log(this.registration_status);
	},
	
	
	displaySortOption : function(){
		this.sortOptionForm = modalForm("Sort Registrants Options	",ajax({action : "displaySortOption", type : "walk-in"},true));
		document.getElementById("select_category").value = this.sortCategory;
		document.getElementById("select_status").value = this.sortStatus;
	},
	
	closeSortOptionForm : function(){
		this.sortOptionForm.modal("hide");
	},
	
	saveSortOption : function(){
		this.sortCategory = document.getElementById("select_category").value;
		this.sortStatus = document.getElementById("select_status").value;
		
		console.log(this.sortCategory);
		console.log(this.sortStatus);
		this.displaySortedRegistrationList();	
	
	},
	
	displaySortedRegistrationList : function(){
		$("#displayWalkInRegistrants").html(ajax({action : "displaySortedRegistrationList", category : this.sortCategory, status : this.sortStatus, type : "walk-in"},true));
		this.closeSortOptionForm();
	}
}

walkInRegistrationController.displayWalkInRegistrants();
walkInRegistrationController.displayWalkInRegistrationStatus();