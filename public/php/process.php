<?php 

require_once('../../functions/sqlQuery.function.php');
require_once('../../functions/system.function.php');
require_once('../../library/directoryPath.php');

$PATH_ADMIN = '../../views/admin/';
$PATH_USER = '../../views/user/';
$PATH_GENERAL = '../../views/';	


if(isset($_POST["import-student-file"])){
	uploadFile($_FILES['file-import-file']['tmp_name']);
	header("location: ../../?pg=user");
	exit;
}

if(isset($_POST["showComponents"])){
	$components = $_POST["components"];
	if($components == "participantsList"){
		$participantsList = query("SELECT * FROM tbl_registrants WHERE registration_type = 'pre-registered' ORDER BY lastname ASC;","","","variable");
		include_once($PATH_USER."registration/participantsList.php");
	}
	
	if($components == "displayWalkInRegistrants"){
		$participantsList = query("SELECT * FROM tbl_registrants WHERE registration_type = 'walk-in' ORDER BY lastname ASC;","","","variable");
		include_once($PATH_USER."registration/walkInParticipants.php");
	}
}

if(isset($_POST["action"])){
	
	// =============== Pre-registration Functions =================
	if($_POST["action"] == "searchPreregisteredParticipant"){
		$preregisteredParticipantData = $_POST["preregisteredParticipantData"];
		
		$participantsList = query("SELECT * FROM tbl_registrants a","WHERE registrantID = :id AND registration_type = :type",[":id" => $preregisteredParticipantData, ":type" => 'pre-registered'],"variable");
		
		require_once($PATH_USER."registration/participantsList.php");
		exit;
	}
	
	
	if($_POST["action"] == "registerParticipant"){
		$participantData = $_POST["participantData"];
		
		query("UPDATE tbl_registrants","SET registration_status = :status WHERE registrantID = :id",[":status" => 1, ":id" => $participantData]);
		
		exit;
	}


	if($_POST["action"] == "getRegistrationStatus"){
		$totalRegisteredPreregisteredParticipants = query("SELECT COUNT(*) AS totalRegisteredPreregisteredParticipants FROM tbl_registrants WHERE registration_status = 1 AND registration_type = 'pre-registered'","","","variable",1);
		$totalPreregisteredParticipants = query("SELECT COUNT(*) AS totalPreregisteredParticipants FROM tbl_registrants WHERE registration_type = 'pre-registered'","","","variable",1);
		
		$percentage = number_format((($totalRegisteredPreregisteredParticipants["row"]["totalRegisteredPreregisteredParticipants"] / $totalPreregisteredParticipants["row"]["totalPreregisteredParticipants"]) * 100),2,".","");
		$status = array($totalRegisteredPreregisteredParticipants["row"]["totalRegisteredPreregisteredParticipants"], $percentage);
		echo json_encode($status);
		exit;
	}

	if($_POST["action"] == "login"){
		session_start();
		$username = $_POST["username"];
		$password = $_POST["password"];
		
		$verify = query("SELECT accountID FROM tbl_accounts","WHERE username = :username AND password = :password",[":username" => $username, ":password" => $password],"variable",1);
		
		if(!empty($verify)){
			$_SESSION["account_id"] = $verify["row"]["accountID"];
			echo 1;
		}else{
			echo 0;
		}
		
		exit;
	}

	if($_POST["action"] == "importStudentForm"){
		require_once($PATH_USER."registration/importStudentForm.php");
		exit;
	}
	
	//========================================== Walk in Registration Functions ==============================
	
	if($_POST["action"] == "searchWalkInRegistrants"){
		$walkInRegistrantData = $_POST["walkInRegistrantData"];
		$participantsList = query("SELECT * FROM tbl_registrants","WHERE registrantID = :id AND registration_type = :type",[":id" => $walkInRegistrantData, ":type" => 'walk-in'],"variable");
		
		require_once($PATH_USER."registration/walkInParticipants.php");
		exit;
	}
	
	if($_POST["action"] == "getWalkInRegistrationStatus"){
		$totalRegisteredPreregisteredParticipants = query("SELECT COUNT(*) AS totalRegisteredPreregisteredParticipants FROM tbl_registrants WHERE registration_status = 1 AND registration_type = 'walk-in'","","","variable",1);
		$totalPreregisteredParticipants = query("SELECT COUNT(*) AS totalPreregisteredParticipants FROM tbl_registrants WHERE registration_type = 'walk-in'","","","variable",1);
		
		$percentage = number_format((($totalRegisteredPreregisteredParticipants["row"]["totalRegisteredPreregisteredParticipants"] / $totalPreregisteredParticipants["row"]["totalPreregisteredParticipants"]) * 100),2,".","");
		$status = array($totalRegisteredPreregisteredParticipants["row"]["totalRegisteredPreregisteredParticipants"], $percentage);
		echo json_encode($status);
		exit;
	}
	
	
	if($_POST["action"] == "registerWalkInParticipant"){
		$participantData = $_POST["participantData"];
		query("UPDATE tbl_registrants","SET registration_status = :status WHERE registrantID = :id",[":status" => 1, ":id" => $participantData]);

		exit;
	}
	
	if($_POST["action"] == "addWalkInRegistrantForm"){
		require_once($PATH_USER."registration/addNewWalkInRegistrantForm.php");
		exit;
	}
	
	if($_POST["action"] == "saveRegistrantInfo"){
		$person = $_POST["person"];
		
		$firstname = $person["firstname"];
		$middlename = $person["middlename"];
		$lastname = $person["lastname"];
		$suffix = $person["suffix"];
		$gender = $person["gender"];
		$cas = $person["cas"];
		$category = $person["category"];
		$registration_type = "walk-in";
		$paymentID = $person["payment_type"];
		$amount_paid = $person["amount"];
		$registration_status = $person["registration_status"];
		$registration_time = date("Y-m-d h:i:s a");
		
		query("INSERT INTO tbl_registrants(
				lastname,
				firstname,
				middlename,
				suffix,
				company_affliated,
				sex,
				categoryID,
				registration_type,
				registration_status,
				paymentID,
				amount_paid,
				registration_time
			) VALUES(
				:lastname,
				:firstname,
				:middlename,
				:suffix,
				:company_affliated,
				:sex,
				:categoryID,
				:registration_type,
				:registration_status,
				:paymentID,
				:amount_paid,
				:registration_time
			)","",[
				":lastname" => $lastname,
				":firstname" => $firstname,
				":middlename" => $middlename,
				":suffix" => $suffix,
				":company_affliated" => $cas,
				":sex" => $gender,
				":categoryID" => $category,
				":registration_type" => $registration_type,
				":registration_status" => $registration_status,
				":paymentID" => $paymentID,
				":amount_paid" => $amount_paid,
				":registration_time" => $registration_time
			]);
		exit;
	}
	
	if($_POST["action"] == "updateWalkInRegistrantForm"){
		$registrantData = $_POST["registrantData"];
		
		$registrantInfo = query("SELECT * FROM tbl_registrants","WHERE registrantID = :id",[":id" => $registrantData],"variable",1);
		require_once($PATH_USER."registration/updateNewWalkInRegistrantForm1.php");
	}
	
	if($_POST["action"] == "saveUpdateRegistrantInfo"){
		$person = $_POST["person"];
		
		$registrantID = $person["registrantID"];
		$firstname = $person["firstname"];
		$middlename = $person["middlename"];
		$lastname = $person["lastname"];
		$suffix = $person["suffix"];
		$gender = $person["gender"];
		$cas = $person["cas"];
		$category = $person["category"];
		$paymentID = $person["payment_type"];
		$amount_paid = $person["amount"];
		$registration_status = $person["registration_status"];
		
		query("UPDATE 
					tbl_registrants",
					
				"SET	
					lastname = :lastname,
					firstname = :firstname,
					middlename = :middlename,
					suffix = :suffix,
					company_affliated = :company_affliated,
					sex = :sex,
					categoryID = :categoryID,
					registration_status = :registration_status,
					paymentID = :paymentID,
					amount_paid = :amount
				WHERE 
					registrantID = :id",
			[
				":lastname" => $lastname,
				":firstname" => $firstname,
				":middlename" => $middlename,
				":suffix" => $suffix,
				":company_affliated" => $cas,
				":sex" => $gender,
				":categoryID" => $category,
				":registration_status" => $registration_status,
				":paymentID" => $paymentID,
				":amount" => $amount_paid,
				":id" => $registrantID
			]);
			exit;
	}
	
	if($_POST["action"] == "displaySortOption"){
		if($_POST["type"] == "pre-registered"){
			require_once($PATH_USER."registration/sortOptionForm.php");	
		}else{
			require_once($PATH_USER."registration/sortOptionWalkInForm.php");	
		}
		exit;
	}
	
	if($_POST["action"] == "displaySortedRegistrationList"){
		$category = $_POST["category"];
		$status = $_POST["status"];
		$type = $_POST["type"];
		
		$query = "SELECT * FROM tbl_registrants ";
		$exec_query = "WHERE registration_type = :type ";
		$actual_values = [":type" => $type];
		
		if($category != NULL || $category != ""){
			$exec_query .= " AND categoryID = :id ";
			$actual_values += [":id" => $category];
		}
		
		if($status != NULL || $status != ""){
			$exec_query .= " AND registration_status = :status ";
			$actual_values += [":status" => $status];
		}
		
		if(($category != NULL || $category != "") || ($status != NULL || $status != "")){
			$exec_query .= "ORDER BY lastname ASC";
		}else{
			$query .=  "ORDER BY lastname  ASC";
		}
		
		$participantsList = query($query,$exec_query,$actual_values,"variable");
		include_once($PATH_USER."registration/participantsList.php"); 
		
		exit;
	}
	
	if($_POST["action"] == "displayRegistrationStatusSort"){
		$category = $_POST["category"];
		
		$totalRegisteredPreregisteredParticipants = query("SELECT COUNT(*) AS totalRegisteredPreregisteredParticipants FROM tbl_registrants WHERE registration_status = 1 AND registration_type = 'pre-registered' AND categoryID = ".$category,"","","variable",1);
		$totalPreregisteredParticipants = query("SELECT COUNT(*) AS totalPreregisteredParticipants FROM tbl_registrants WHERE registration_type = 'pre-registered' AND categoryID = ".$category,"","","variable",1);
		
		$percentage = floor((($totalRegisteredPreregisteredParticipants["row"]["totalRegisteredPreregisteredParticipants"] / $totalPreregisteredParticipants["row"]["totalPreregisteredParticipants"]) * 100));
		$status = array($totalRegisteredPreregisteredParticipants["row"]["totalRegisteredPreregisteredParticipants"], $percentage);
		echo json_encode($status);
		exit;
	}
	
	if($_POST["action"] == "getAmount"){
		$amount = query("SELECT amount FROM tbl_paymenttype","WHERE payment_typeID = :id",[":id" => $_POST["paymentID"]],"variable",1);
		echo $amount["row"]["amount"];
		exit;
	}
}

