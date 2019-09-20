<html>

  
	<title>Data Mining</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	
<!--	<script src="http://code.jquery.com/jquery.js"></script> -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
 
<head>

<script language="javascript">
function validasi(form){
  if (form.username.value == ""){
    alert("Anda belum mengisikan Username.");
    form.username.focus();
    return (false);
  }
     
  if (form.password.value == ""){
    alert("Anda belum mengisikan Password.");
    form.password.focus();
    return (false);
  }
  return (true);
}
</script>

<link href="templates/login.css" rel="stylesheet" type="text/css" />
</head>

<body OnLoad="document.login.username.focus();">
<div id="login">
	
	<div class="container">
	<?php include "menu.php"; ?>
		
			<form name="login" action="cek_login.php" method="POST" onSubmit="return validasi(this)">
        <div class="formRow">
		Username :
            <div class="field">
                <input type="text" name="id_user">
				<input type="hidden" name="level" value='manager'>
            </div>
        </div>
        <div class="formRow">    
		Password :
            <div class="field">
                <input type="password" name="password">
            </div>
        </div>
		
		
	<div class="signupButton">
        <br/><input type="submit" name="submit" id="submit" value="Login" />
    </div>
			</form>
			<div class="row-fluid">
		<?php include "footer.php"; ?>
	</div>
</div>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="script.js"></script>
</body>
</html>