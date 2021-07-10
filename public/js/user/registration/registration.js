var registrationController = {
	
	importStudentModal : null,
	registerParticipantForm : null,
	sortOptionForm : null,
	sortCategory : "",
	sortStatus : "",
	
	searchPreregisteredParticipant : function(){
		preregisteredParticipantData = $.trim($(".txt-preregistered-registant-name").val());
		console.log(preregisteredParticipantData);
		if(preregisteredParticipantData != ""){
			verifyRegistrant = ajax({action : "searchPreregisteredParticipant", preregisteredParticipantData : preregisteredParticipantData}, true);
			$("#displayParticipantsList").html(verifyRegistrant);	
			$("#btn-register-participant" + preregisteredParticipantData).focus();
		}else{
			bootbox.alert(messageBody("warning", "Please select a registrant."), function(){
				$(".txt-preregistered-registant-name").focus();	
			});
		}
	},

	registerPreregisterParticipant : function(participantData){
		
		bootbox.confirm(messageBody("question","Are you sure to register selected participant?"), function(result){
			if(result){
				registerParticipant = ajax({action : "registerParticipant", participantData : participantData},true);
				bootbox.alert(messageBody("info","Selected participant has been successfully registered."), function(){
					
					registrationController.displayPreRegistrationStatus();
					
					$(".txt-preregistered-registant-name").focus();
					$(".txt-preregistered-registant-name").val("");
				});
			}
		});	
	},
	
	refreshStudentList : function(){
		this.displayParticipantsList();
		this.displayPreRegistrationStatus();
		$(".txt-preregistered-registant-name").val("");
	},
	
	displayParticipantsList : function(){
		showComponents("participantsList","#displayParticipantsList");
	},
	
	displayPreRegistrationStatus : function(){
		getRegistrationStatus = ajax({action : "getRegistrationStatus"}, true);
		registrationStatus = JSON.parse(getRegistrationStatus);
		console.log(registrationStatus);
		$(".total-registered-students").html(registrationStatus[0]);
		$(".total-preregistered-percentage").html("(" + registrationStatus[1] + " %)");
	},
	
	importStudentList : function(){
		importStudentForm = ajax({action : "importStudentForm"}, true);
		this.importStudentModal = modalForm("Import students",importStudentForm);
	},
	
	closeForm : function(){
		this.importStudentModal.modal("hide");
	},
	
	displaySortOption : function(){
		this.sortOptionForm = modalForm("Sort Registrants Options	",ajax({action : "displaySortOption", type : "pre-registered"},true));
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
		$("#displayParticipantsList").html(ajax({action : "displaySortedRegistrationList", category : this.sortCategory, status : this.sortStatus, type : "pre-registered"},true));
		this.closeSortOptionForm();
	}
}

registrationController.displayParticipantsList();
registrationController.displayPreRegistrationStatus();