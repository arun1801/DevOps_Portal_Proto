var form = $('#signup_form');

 form.submit(function(){
	 $.ajax({
		type: form.attr('method'),
		url: form.attr('action'),
		data: form.serialize(),
		success: function(data){
			
			if(data == 'Succesfully Signed Up. Redirecting to Login Page..')
			{	/* $('.overlay').show();
				$('.success').show(); */
				$('.overlay-button').click();
				$('#overlayLogin').html(data);
				setTimeout(function(){ window.location.href='index.jsp'; }, 2000);
			} else
				{
				setTimeout(function(){ window.location.href='error.jsp'; }, 3000);
				}
		 	var result = data;
			$('#messageDiv').attr("value",result);
			$('#messageDiv').html(result);
			$('#signup_form').find("input[type=text],input[type=password],textarea").val(""); 
		}
	 });
	 return false;
 });
 var form1 = $('#login_form');

 form1.submit(function(){
	 $.ajax({
		type: form1.attr('method'),
		url: form1.attr('action'),
		data: form1.serialize(),
		success: function(data){
			
			if(data == 'You have been logged in Successfully. Redirecting to Home Page..')
			{	/* $('.overlay').show();
				$('.success').show(); */
				$('.overlay-button').click();
				$('#overlayLogin').html(data);
				setTimeout(function(){ window.location.href='user_home.jsp'; }, 5000);
			} else
				{
				setTimeout(function(){ window.location.href='error.jsp'; }, 3000);
				}
		 	var result = data;
			$('#messageDivLogin').attr("value",result);
			$('#messageDivLogin').html(result);
			$('#login_form').find("input[type=text],input[type=password],textarea").val(""); 
		}
	 });
	 return false;
 });

$(document).ready(function(){
	$('a[href="#log_out"]').click(function(){
		<%session.invalidate();%>
		alert("You have been logged out.");
		var data = "You have been logged out successfully. Redirecting to login page..";
		$('#overlayLogin').html(data);
		setTimeout(function(){ window.location.href="index.jsp";}, 3000);
	});
});
