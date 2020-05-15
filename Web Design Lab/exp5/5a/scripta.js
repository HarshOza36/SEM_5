function formValid(){
	var uid=document.registration.userid;
	var pass=document.registration.pass;
	var name=document.registration.name;
	var cou=document.registration.country;
	var zip=document.registration.zip;
	var email=document.registration.email;
	if(userid_validation(uid,5,12)){
		if(passid_validation(pass,7,12)){
			if(name_valid(name)){
				if(allLetter(name)){
					if(country_val()){
						if(zipValid(zip)){
							if(gender_validation()){
								if(lang_validation()){if(emailverif()){
										alert("Submitted Successfully!");}
								}
							}
						}
					}
				}
			}
		}
	}
	function userid_validation(uid,mx,my){
		var uid_len=uid.value.length;
		if(uid_len==0||uid_len>my||uid_len<mx){
			alert("User ID should not be empty or length should be between " +mx+ " to " +my);
    			uid.focus();
    			return false;
		}
		return true;
	}
	function allLetter(name){
		var letters=/^[A-Za-z]+$/;
		if(name.value.match(letters)){
			return true;
		}else{
			alert("Name must have alphabets only");
   			name.focus();
   			return false;
		}
	}
	function zipValid(zip){
		var zl=zip.value.length;
		var ns=/^[0-9]+$/;
		if(zl!=0 && zip.value.match(ns)){
			return true;
		}else{
			alert("Zipcode can be numbers only/Zipcode cannot be empty");
   			zip.focus();
   			return false;
		}
	}
	function name_valid(name){
		var nl=name.value.length;
		if(nl==0){
			alert("Name cannot be empty");
   			name.focus();
   			return false;
		}else{
			return true;
		}	
	}
	function passid_validation(pass,mx,my){
		var passid_len = pass.value.length;
		if (passid_len == 0 ||passid_len >= my || passid_len < mx){
			alert("Password should not be empty / length be between " +mx+ " to " +my);
			passid.focus();
			return false;
		}
		return true;
	}
	function country_val(){
        		var e = document.getElementById("dll");
        		var optionSelIndex = e.options[e.selectedIndex].value;
        		var optionSelectedText = e.options[e.selectedIndex].text;
        		if (optionSelIndex == 0) {
            			alert("Please select a Country");
            			return false;
        		}else {
            			return true;
        		}
    	}
	function gender_validation(){
 		var gender=document.registration.g1;
		var x=0;
 		if(gender.value=="Male"){x=x+1;}
 		if(gender.value=="Female"){x=x+1;}
 		if(x==0){
  			alert("Select Male/Female");
			return false;
 		}else{
  			return true;
 		}
	}
	function lang_validation(){
 		var lang=document.registration.g3;
		if(document.getElementById('r3').checked || document.getElementById('r4').checked){
			return true;
		}else{
			alert("Select Language");
			return false;
		}
	}
	function emailverif(){
		var em=email.value.length;
		var el1=/^[A-Za-z0-9]@[A-za-z].[a-z]+$/;
		var el2=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var el=/\S+@\S+\.\S+/;
		if(em!=0 && email.value.match(el)){
			return true;
		}else{
			alert("Email required in form mymail@some.com/Email cannot be empty");
			return false;	
		}
	}
}
