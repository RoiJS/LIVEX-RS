<?php

function sanitizeInput($input) {
	
	$search = array(
		'@<script[^>]*?>.*?</script>@si',   // Strip out javascript
		'@<[\/\!]*?[^<>]*?>@si',            // Strip out HTML tags
		'@<style[^>]*?>.*?</style>@siU',    // Strip style tags properly
		'@<![\s\S]*?--[ \t\n\r]*>@'         // Strip multi-line comments
	  );
	
		$output = preg_replace($search, '', $input)
		;
		return $output;
  }


 function sanitizeText($input) {

	  $search = array(
		'@<script[^>]*?>.*?</script>@si',   // Strip out javascript
		'@<style[^>]*?>.*?</style>@siU',    // Strip style tags properly
		'@<![\s\S]*?--[ \t\n\r]*>@'         // Strip multi-line comments
	  );
	
		$output = preg_replace($search, '', $input);
		return $output;
  } 

function uploadFile($file){
	
	require_once('../../PHPExcel/PHPExcel/IOFactory.php');

	$objPHPExcel = PHPExcel_IOFactory::load($file);
	
	foreach ($objPHPExcel->getWorksheetIterator() as $worksheet) {
		$worksheetTitle     = $worksheet->getTitle();
		$highestRow         = $worksheet->getHighestRow(); // e.g. 10
		$highestColumn      = $worksheet->getHighestColumn(); // e.g 'F'
		$highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
		
		for($row = 1; $row <= $highestRow; ++ $row) {
			$val = array();
			for ($col = 0; $col < $highestColumnIndex; ++ $col) {
			   $cell = $worksheet->getCellByColumnAndRow($col, $row);
			   $val[] = $cell->getValue();
			}
		
			$uploadResult = insertNewRegistrants($val);
			//$uploadResult = insertNewStaff($val);
		}	
	}

	return $uploadResult;
}

function getSections($section, $trackID){
	
	if($section != ""){
		$verifySection = query("SELECT sectionID FROM tbl_sections","WHERE section = :section",[":section" => $section],"variable",1);
		
		if(!empty($verifySection)){
			$sectionID = $verifySection["row"]["sectionID"];
		}else{
			query("INSERT INTO tbl_sections(section, trackID) VALUES(:section, :trackID)","",[":section" => $section, ":trackID" => $trackID]);
			$getSectionID = query("SELECT sectionID FROM tbl_sections","WHERE section = :section",[":section" => $section],"variable",1);
			$sectionID = $getSectionID["row"]["sectionID"];
		}
	}else{
		$sectionID = 0;
	}
	
	return $sectionID;
}

function getCategory($category){
	
	if($category != ""){
		$verifyCategory = query("SELECT categoryID FROM tbl_categories","WHERE category = :category",[":category" => $category],"variable",1);
		if(!empty($verifyCategory)){
			$categoryID = $verifyCategory["row"]["categoryID"];
		}else{
			query("INSERT INTO tbl_categories(category) VALUES(:category)","",[":category" => $category]);
			$getCategoryID = query("SELECT categoryID FROM tbl_categories","WHERE category = :category",[":category" => $category],"variable",1);
			$categoryID = $getCategoryID["row"]["categoryID"];
		}
	}else{
		$categoryID = "";
	}
	return $categoryID;
}

function insertNewRegistrants($registrant){
	
	$firstname = isset($registrant[0]) ? $registrant[0] : "";
	$middlename = isset($registrant[1]) ? $registrant[1] : "";
	$lastname = isset($registrant[2]) ? $registrant[2] : "";
	$suffix = isset($registrant[3]) ? $registrant[3] : "";
	$cas = isset($registrant[4]) ? $registrant[4] : "";
	$categoryID = getCategory($registrant[5]);
	$registration_type = "pre-registered";
	$registration_status = 0;
	$payment_status = 1;
	
	query("INSERT INTO tbl_registrants(
		lastname,
		firstname,
		middlename,
		suffix,
		company_affliated,
		categoryID,
		registration_type,
		registration_status,
		payment_status
	) VALUES(
		:lastname,
		:firstname,
		:middlename,
		:suffix,
		:company_affliated,
		:categoryID,
		:registration_type,
		:registration_status,
		:payment_status
	)","",[
		":lastname" => $lastname,
		":firstname" => $firstname,
		":middlename" => $middlename,
		":suffix" => $suffix,
		":company_affliated" => $cas,
		":categoryID" => $categoryID,
		":registration_type" => $registration_type,
		":registration_status" => $registration_status,
		":payment_status" => $payment_status
	]);
	return 1;
}

function insertNewStaff($staffInfo){
	$staffName = $staffInfo[0];
	$staffPosition = $staffInfo[1];
	
	query("INSERT INTO tbl_teachers(teacherName, position) VALUES(:teacherName, :position);","",[":teacherName"=> $staffName, ":position" => $staffPosition]);
	
}

