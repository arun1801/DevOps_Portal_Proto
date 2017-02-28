
<jsp:include page="header.jsp"></jsp:include>


<div class="row">
	<div class="col-sm-5">
<div class="conainter animated bounceInLeft" id="image-info" hidden="true" style="margin-right: 300px;">
<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li style="margin-top:50px;">
						<a href="http://dribbble.com/shots/502538-Natalie-Justin-Cleaning">
							<img src="assets/images/7.jpg" />
							<div><span>Natalie & Justin Cleaning by Justin Younger</span></div>
						</a>
					</li>
					<li style="margin-left: 280px;margin-top: -184px;">
						<a href="http://dribbble.com/shots/501695-Cornwall-Map">
							<img src="assets/images/9.jpg" />
							<div><span>Cornwall Map by Katharina Maria Zimmermann</span></div>
						</a>
					</li>
					<li>
						<a href="http://dribbble.com/shots/500861-final-AD-logo">
							<img src="assets/images/10.jpg" />
							<div><span>final AD logo by Annette Diana</span></div>
						</a>
					</li>
					<li style="margin-left: 280px;margin-top: -184px;">
						<a href="http://dribbble.com/shots/500369-Land-Those-Planes">
							<img src="assets/images/11.jpg" />
							<div><span>Land Those Planes by Lee Ann Marcel</span></div>
						</a>
					</li>
					<li style="margin-left: 140px;">
						<a href="http://dribbble.com/shots/497795-Seahorse">
							<img src="assets/images/12.jpg" />
							<div><span>Seahorse by Trevor Basset</span></div>
						</a>
					</li>
					<!-- <li>
						<a href="http://dribbble.com/shots/505046-Menu">
							<img src="assets/images/1.jpg" />
							<div><span>Menu by Simon Jensen</span></div>
						</a>
					</li>
					<li>
						<a href="http://dribbble.com/shots/504336-TN-Aquarium">
							<img src="assets/images/2.jpg" />
							<div><span>TN Aquarium by Charlie Gann</span></div>
						</a>
					</li>
					<li>
						<a href="http://dribbble.com/shots/504197-Mr-Crabs">
							<img src="assets/images/3.jpg" />
							<div><span>Mr. Crabs by John Generalov</span></div>
						</a>
					</li>
					<li>
						<a href="http://dribbble.com/shots/503731-Gallery-of-Mo-2-Mo-logo">
							<img src="assets/images/4.jpg" />
							<div><span>Gallery of Mo 2.Mo logo by Adam Campion</span></div>
						</a>
					</li>
					<li>	
						<a href="http://dribbble.com/shots/503058-Ice-Cream-nom-nom">
							<img src="assets/images/5.jpg" />
							<div><span>Ice Cream - nom nom by Eight Hour Day</span></div>
						</a>
					</li>
					<li>
						<a href="http://dribbble.com/shots/502927-My-Muse">
							<img src="assets/images/6.jpg" />
							<div><span>My Muse by Zachary Horst</span></div>
						</a>
					</li>
					<li>
						<a href="http://dribbble.com/shots/502523-App-Preview">
							<img src="assets/images/8.jpg" />
							<div><span>App Preview by Ryan Deshler</span></div>
						</a>
					</li> -->
				</ul>
			</section>
</div>
		<div class="form-box animated bounceInLeft" id="loginbox">
			<div class="form-top">
				<div class="form-top-left">
					<h3>Login to your DevOps Portal</h3>
					<p>Enter accenture email and password to log on:</p>
				</div>
				<div class="form-top-right">
					<i class="fa fa-lock"></i>
				</div>
			</div>
			<div class="form-bottom">
				<form role="form" action="UserManager" method="post" class="login-form" id="login_form">
					<div class="form-group">
						<label class="sr-only" for="form-username">Username</label> <input
							type="text" name="form-username" placeholder="Enter your accenture email..."
							class="form-username form-control" id="form-username" required="required">
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-password">Password</label> <input
							type="password" name="form-password" placeholder="Enter your Password..."
							class="form-password form-control" id="form-password" required="required">
							<input type="hidden" value="log_in" id="form_value" name="form_value"> 
					</div>
					<button type="submit" class="btn">Sign in!</button>
				</form>
			</div>
				<div align="left" style="font-family: SansationLight;color: white;">&nbsp;&nbsp;<a style="color: white;" href="#" onClick="showBox();">Don't have any account ? Sign Up</a></div>
			    <div align="left" style="font-family: SansationLight;color: white;" id="messageDivLogin" value=""></div>
		</div>
	
		

	</div>

	<div class="col-sm-1 middle-border"></div>
	<div class="col-sm-1"></div>

	<div class="col-sm-5">

<div class="form-box animated bounceInRight" id="tutorial">
 <video width="500" height="375" controls>


Your browser does not support the video tag.
</video> 
</div>


		<div class="form-box animated bounceInUp" id="signup" hidden="true">
			<div class="form-top">
				<div class="form-top-left">
					<h3>Sign up now</h3>
					<p>Fill in the form below to get instant access:</p>
				</div>
				<div class="form-top-right">
					<i class="fa fa-pencil"></i>
				</div>
			</div>
			<div class="form-bottom">
				<form role="form" action="UserManager" method="post" class="registration-form" id="signup_form"> 
					<div class="form-group">
						<label class="sr-only" for="form-first-name">First name</label> <input
							type="text" name="form-first-name" placeholder="First name..."
							class="form-first-name form-control" id="form-first-name" >
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-last-name">Last name</label> <input
							type="text" name="form-last-name" placeholder="Last name..."
							class="form-last-name form-control" id="form-last-name" >
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-email">Email</label> <input
							type="text" name="form-email" placeholder="Email..."
							class="form-email form-control" id="form-email" >
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-password">Password</label> <input
							type="password" name="form-password" placeholder="Password..."
							class="form-password form-control" id="form-password" >
							
					</div>
					<div class="form-group">
						<label class="sr-only" for="form-about-yourself">About
							yourself</label>
						<textarea name="form-about-yourself"
							placeholder="About yourself..."
							class="form-about-yourself form-control" id="form-about-yourself"></textarea>
							<input type="hidden" value="sign_up" id="form_value" name="form_value">
					</div>
					<button type="submit" class="btn" id="signin">Sign me up!</button>
				</form>
			</div>
			<div align="left" style="font-family: SansationLight;color: white;">&nbsp;&nbsp;<a style="color: white;" href="#" onClick="showLoginBox();">Already have an account. Sign In</a></div>
			<div align="left" style="font-family: SansationLight;color: white;" id="messageDiv" value=""></div>
			
		</div>
       
	</div>
</div>

</div>
</div>

</div>
<div class="container">
			<!-- Top Navigation -->
		
			<section>
				
				<p><button hidden="true" id="trigger-overlay" type="button" class="overlay-button"></button></p>
			</section>
			
		</div><!-- /container -->
		<!-- open/close -->
		<div class="overlay overlay-genie" data-steps="m 701.56545,809.01175 35.16718,0 0,19.68384 -35.16718,0 z;m 698.9986,728.03569 41.23353,0 -3.41953,77.8735 -34.98557,0 z;m 687.08153,513.78234 53.1506,0 C 738.0505,683.9161 737.86917,503.34193 737.27015,806 l -35.90067,0 c -7.82727,-276.34892 -2.06916,-72.79261 -14.28795,-292.21766 z;m 403.87105,257.94772 566.31246,2.93091 C 923.38284,513.78233 738.73561,372.23931 737.27015,806 l -35.90067,0 C 701.32034,404.49318 455.17312,480.07689 403.87105,257.94772 z;M 51.871052,165.94772 1362.1835,168.87863 C 1171.3828,653.78233 738.73561,372.23931 737.27015,806 l -35.90067,0 C 701.32034,404.49318 31.173122,513.78234 51.871052,165.94772 z;m 52,26 1364,4 c -12.8007,666.9037 -273.2644,483.78234 -322.7299,776 l -633.90062,0 C 359.32034,432.49318 -6.6979288,733.83462 52,26 z;m 0,0 1439.999975,0 0,805.99999 -1439.999975,0 z">
			<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1440 806" preserveAspectRatio="none">
				<path class="overlay-path" d="m 701.56545,809.01175 35.16718,0 0,19.68384 -35.16718,0 z"/>
			</svg>
			
	
	<nav>
				<div class="spinner"></div><br><div id="overlayLogin" style="font-family: SansationLight;color: #fff;font-size: 26px;" value=""></div>
			</nav>
	
		</div>		
		<script src="assets/js/classie.js"></script>
<script src="assets/js/genie_effect.js"></script>
<script src="assets/js/modernizr.custom.js"></script>
<script src="assets/js/snap.svg-min.js"></script>
<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">

			<div class="col-sm-8 col-sm-offset-2">
				<div class="footer-border"></div>
				<p>
					Designed & Created by Arun Singh. Copyright @ 2017
				</p>
			</div>

		</div>
	</div>
</footer>
<div class="success" style="position:fixed;top:50%;left:50%;display:none;z-index:2;width:300px;height:100px;background-color:#fff;">Loading Now...</div>
<div class="overlay" style="background-color:#fff;opacity:.5;width:100%;height:100%;position:fixed;top:0px;left:0px;display:none;z-index:1">&nbsp;</div>

<script type="text/javascript">
function showBox()
{
var signupbox= document.getElementById("signup");
var tutorial = document.getElementById("tutorial");
tutorial.setAttribute("hidden", "true");
signupbox.removeAttribute("hidden");
document.getElementById("loginbox").setAttribute("hidden", "true");
document.getElementById("image-info").removeAttribute("hidden");
}
function showLoginBox()
{
var signupbox= document.getElementById("signup");
var tutorial = document.getElementById("tutorial");
tutorial.removeAttribute("hidden");
signupbox.setAttribute("hidden", "true");
document.getElementById("loginbox").removeAttribute("hidden");
document.getElementById("image-info").setAttribute("hidden", "true");
}
</script>
<script type="text/javascript">
			$(function() {

				$(' #da-thumbs > li ').each( function() { $(this).hoverdir({
					hoverDelay : 75
				}); } );

			});
		</script>
<!-- <script>
$("#signin").on('click',function()
		{
	alert("I am in");
	     var fname = $("#form-first-name").val();
	     var lname = $("#form-last-name").val();
	     var email = $("#form-email").val();
	     var password = $("#form-password").val();
	     var info = $("#form-about-yourself").val();
	     /* if(fname == "")
	    	 {
	    	 $("#messageDIV").css('display','block');
	    	 $("#messageDIV").html("<font color='red'>First name is required.</font>");
	    	 return;
	    	 }
	     if(lname == "")
	    	 {
	    	 $("#messageDIV").css('display','block');
	    	 $("#messageDIV").html("<font color='red'>Last name is required.</font>");
	    	 return;
	    	 }
	     if(email == "")
	    	 {
	    	 $("#messageDIV").css('display','block');
	    	 $("#messageDIV").html("<font color='red'>Email is required.</font>");
	    	 return;
	    	 }
	     if(password == "")
	    	 {
	    	 $("#messageDIV").css('display','block');
	    	 $("#messageDIV").html("<font color='red'>Please enter password.</font>");
	    	 return;
	    	 } */
	     alert("at ajax start");
	     $.ajax({
	    	 url : "UserManager",
	         method : post,
	         data :{
	        	 email : email,
	        	 fname : fname,
	        	 lname : lname,
	        	 password : password,
	        	 info : info
	         },
	         success : function(results){
	        	 if(results != null && results != ""){
	        		 showMessage(results);
	        		 $('#messageDiv').css("display","block");
                 }else{
                     $('#messageDiv').css("display","none");
                     $('#messageDiv').html("");
                     alert("Some exception occurred! Please try again.");
	        	 }
	         }
	     });
		});
		function showMessage(results){
            if(results == 'SUCCESS'){
                $('#messageDiv').html("<font color='green'>You are successfully logged in. </font>");
            }else if(results == 'FAILURE'){
                $('#messageDiv').html("<font color='red'>Username or password incorrect </font>");
            }
        }
</script>
 -->
 <script type="text/javascript">
 var form = $('#signup_form');
<%request.setAttribute("page_referer", "index.jsp");%>
 form.submit(function(){
	 $.ajax({
		type: form.attr('method'),
		url: form.attr('action'),
		data: form.serialize(),
		success: function(data){
			
			if(data == 'Succesfully Signed Up. Redirecting to Login Page.. !')
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
 </script>
 <script>
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
 </script>
</body>

</html>
</html>