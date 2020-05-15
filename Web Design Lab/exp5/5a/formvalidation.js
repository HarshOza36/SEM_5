function formvalidation()
{
 	var uid=document.registration.userid;
 	var uname=document.registration.username;
 	if(userid_validation(uid,5,12)){
  		if(allLetter(uname))
 		{ 
  			alert("Successfully submitted");
		}
	}

	function userid_validation(uid,mx,my)
	{
  		var uid_len=uid.value.length;
  		if(uid_len==0||uid_len>my||uid_len<mx)
  		{
    			alert("User ID should not be empty or length should be between " +mx+ "to" +my);
    			uid.focus();
    			return false;
  		}
  	return true;
	}

	function allLetter(uname)
	{
 		var letters=/^[A-Za-z]+$/;
 		if(uname.value.match(letters))
 		{
   			return true;
 		}else
 		{
   			alert("Username must have alphabets only");
   			uname.focus();
   			return false;
 		}
	}	

	function passid_validation(passid,mx,my)
	{
		var passid_len = passid.value.length;
		if (passid_len == 0 ||passid_len >= my || passid_len < mx)
		{
			alert("Password should not be empty / length be between "+mx+" to "+my);
			passid.focus();
			return false;
		}
		return true;
	}
	function gender_validation()
	{
 		var gender=document.registration.g1;
 		var name=document.registration.name;
 		alert(name.value);
 		alert(gender.value);
		 var x=0;
 		if(gender.value=="Male")
 		{
  			x=x+1;
 		}
 		if(gender.value=="Female")
 		{
 			 x=x+1;
 		}
 		if(x==0)
 		{
  			alert("Select Male/Female");
 		}else
 		{
  			alert("successfullly submitted");
 		}
	}
}