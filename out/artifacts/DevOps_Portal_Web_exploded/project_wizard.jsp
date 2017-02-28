<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false" import="java.util.*"%>
<%

HttpSession sess = request.getSession(false);
try
{
	if(null!=sess.getAttribute("first_name"))	
		{ %><jsp:include page="header.jsp"></jsp:include>
<div id="ip-container" class="ip-container">
	<header class="ip-header">
		<div class="ip-loader">
			<svg class="ip-inner" width="60px" height="60px" viewBox="0 0 80 80">
						<path class="ip-loader-circlebg"
					d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z" />
						<path id="ip-loader-circle" class="ip-loader-circle"
					d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z" />
					</svg>
		</div>
	</header>
	<!-- top bar -->
	<div class="row">
		<div
			class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box"
			style="margin-top: -2%;">
			<form role="form" action="WizardManager" method="post" class="f1"
				style="width: 1000px; margin-left: -41%;" id="wizard_form">

				<h3>
					Create your <b>DEVOPS PROJECT</b>
				</h3>
				<p>You are few steps left to setup your infrastructure</p>
				<div class="f1-steps">
					<div class="f1-progress">
						<div class="f1-progress-line" data-now-value="16.66"
							data-number-of-steps="3" style="width: 16.66%;"></div>
					</div>
					<div class="f1-step active">
						<div class="f1-step-icon">
							<i class="fa fa-bullseye"></i>
						</div>
						<p>task</p>
					</div>
					<div class="f1-step">
						<div class="f1-step-icon">
							<i class="fa fa-firefox"></i>
						</div>
						<p>tools</p>
					</div>
					<div class="f1-step">
						<div class="f1-step-icon">
							<i class="fa fa-server"></i>
						</div>
						<p>servers</p>
					</div>
				</div>

				<fieldset>
					<h2>Tell us what your goal is:</h2>
					<div class="form-group">
						<label for="f1-domain"><h4>Select Domain</h4></label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select class="selectpicker">
							<option data-tokens="ecommerce">E-Commerce</option>
						</select>
						<!--  <input type="text" name="f1-first-name" placeholder="First name..." class="f1-first-name form-control" id="f1-first-name"> -->
					</div>
					<div class="form-group">
						<label for="f1-goal"><h4>Your Goal</h4></label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select class="selectpicker" style="background-color: lightblue;">
							<option data-tokens="goal">Setup B2B Portal</option>
							<option data-tokens="goal">Setup B2C Portal</option>
							<option data-tokens="goal">Setup DataHub</option>
							<option data-tokens="goal">Setup Database related
								Console</option>
						</select>
					</div>
					<div class="f1-buttons">
						<button type="button" class="btn btn-next">Next</button>
					</div>
				</fieldset>

				<fieldset>
					<h2>Set up your tools:</h2>
					<div class="form-group">
						<label for="f1-goal"><h4>Application Server</h4></label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select class="selectpicker" style="background-color: lightblue;">
							<option data-tokens="goal">Hybris</option>
							<option data-tokens="goal">WebSphere Commerce</option>
							<option data-tokens="goal">ATG</option>
						</select>
					</div>
					<div class="form-group">
						<label for="f1-goal"><h4>Repository Mgmt</h4></label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select class="selectpicker" style="background-color: lightblue;">
							<option data-tokens="goal">GitHub</option>
							<option data-tokens="goal">BitBucket</option>
							<option data-tokens="goal">SVN</option>
						</select>
					</div>
					<div class="form-group">
						<label for="f1-goal"><h4>Ticket Mgmt</h4></label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select class="selectpicker" style="background-color: lightblue;">
							<option data-tokens="goal">Jira</option>
							<option data-tokens="goal">HP QC</option>
							<option data-tokens="goal">ServiceNow</option>
						</select>
					</div>
					<div class="form-group">
						<label for="f1-goal"><h4>CI & CD</h4></label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select class="selectpicker" style="background-color: lightblue;">
							<option data-tokens="goal">Jenkins</option>
							<option data-tokens="goal">Bamboo</option>
							<option data-tokens="goal">Hudson</option>
							<option data-tokens="goal">TeamCity</option>
						</select>
					</div>
					<div class="form-group">
						<label for="f1-goal"><h4>Build Automation</h4></label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select class="selectpicker" style="background-color: lightblue;">
							<option data-tokens="goal">Maven</option>
							<option data-tokens="goal">Gradle</option>
							<option data-tokens="goal">Ant</option>
							<option data-tokens="goal">Make</option>
						</select>
					</div>
					<div class="f1-buttons">
						<button type="button" class="btn btn-previous">Previous</button>
						<button type="button" class="btn btn-next">Next</button>
					</div>
				</fieldset>

				<fieldset>
					<h2>Provide Server Details :</h2>
					<div class="form-group">
						<input type="text" name="f1-facebook"
							placeholder="Application Server Host..." id="f1-facebook"
							style="width: 250px;"> <select class="selectpicker">
							<option data-tokens="goal">Windows</option>
							<option data-tokens="goal">Unix</option>
							<option data-tokens="goal">Mac</option>
						</select> <input type="text" name="f1-facebook" placeholder="Username"
							id="f1-facebook" style="width: 150px;"> <input
							type="text" name="f1-facebook" placeholder="Password"
							id="f1-facebook" style="width: 150px;">
							<button class="btn">Test</button>
					</div>
					<div class="form-group">
						<label class="sr-only" for="f1-twitter">Repository
							Management</label> <input type="text" name="f1-twitter"
							placeholder="Repository Management Host..." id="f1-twitter"
							style="width: 250px;"> <select class="selectpicker">
							<option data-tokens="goal">Windows</option>
							<option data-tokens="goal">Unix</option>
							<option data-tokens="goal">Mac</option>

						</select> <input type="text" name="f1-facebook" placeholder="Username"
							id="f1-facebook" style="width: 150px;"> <input
							type="text" name="f1-facebook" placeholder="Password"
							id="f1-facebook" style="width: 150px;">
							<button class="btn">Test</button>
					</div>
					<div class="form-group">
						<label class="sr-only" for="f1-twitter">Ticket Management</label>
						<input type="text" name="f1-twitter"
							placeholder="Ticket Management Host..." id="f1-twitter"
							style="width: 250px;"> <select class="selectpicker">
							<option data-tokens="goal">Windows</option>
							<option data-tokens="goal">Unix</option>
							<option data-tokens="goal">Mac</option>
						</select> <input type="text" name="f1-facebook" placeholder="Username"
							id="f1-facebook" style="width: 150px;"> <input
							type="text" name="f1-facebook" placeholder="Password"
							id="f1-facebook" style="width: 150px;">
							<button class="btn">Test</button>
					</div>
					<div class="form-group">
						<label class="sr-only" for="f1-twitter">Build Automation </label>
						<input type="text" name="f1-twitter"
							placeholder="Build Automation Host..." id="f1-twitter"
							style="width: 250px;"> <select class="selectpicker">
							<option data-tokens="goal">Windows</option>
							<option data-tokens="goal">Unix</option>
							<option data-tokens="goal">Mac</option>
						</select> <input type="text" name="f1-facebook" placeholder="Username"
							id="f1-facebook" style="width: 150px;"> <input
							type="text" name="f1-facebook" placeholder="Password"
							id="f1-facebook" style="width: 150px;">
							<button class="btn">Test</button>
					</div>
					<div class="form-group">
						<label class="sr-only" for="f1-google-plus">CI & CD</label> <input
							type="text" name="f1-google-plus" placeholder="CI Host..."
							id="f1-google-plus" style="width: 250px;"> <select
							class="selectpicker">
							<option data-tokens="goal">Windows</option>
							<option data-tokens="goal">Unix</option>
							<option data-tokens="goal">Mac</option>
						</select> <input type="text" name="f1-facebook" placeholder="Username"
							id="f1-facebook" style="width: 150px;"> <input
							type="text" name="f1-facebook" placeholder="Password"
							id="f1-facebook" style="width: 150px;">
							<button class="btn">Test</button>
					</div>
					<div class="f1-buttons">
						<button type="button" class="btn btn-previous">Previous</button>
						<button type="submit" class="btn btn-submit">Submit</button>
					</div>
				</fieldset>

			</form>
		</div>
        <p><button hidden="true" id="trigger-overlay" type="button" class="overlay-button"></button></p>
        <div class="overlay overlay-genie" data-steps="m 701.56545,809.01175 35.16718,0 0,19.68384 -35.16718,0 z;m 698.9986,728.03569 41.23353,0 -3.41953,77.8735 -34.98557,0 z;m 687.08153,513.78234 53.1506,0 C 738.0505,683.9161 737.86917,503.34193 737.27015,806 l -35.90067,0 c -7.82727,-276.34892 -2.06916,-72.79261 -14.28795,-292.21766 z;m 403.87105,257.94772 566.31246,2.93091 C 923.38284,513.78233 738.73561,372.23931 737.27015,806 l -35.90067,0 C 701.32034,404.49318 455.17312,480.07689 403.87105,257.94772 z;M 51.871052,165.94772 1362.1835,168.87863 C 1171.3828,653.78233 738.73561,372.23931 737.27015,806 l -35.90067,0 C 701.32034,404.49318 31.173122,513.78234 51.871052,165.94772 z;m 52,26 1364,4 c -12.8007,666.9037 -273.2644,483.78234 -322.7299,776 l -633.90062,0 C 359.32034,432.49318 -6.6979288,733.83462 52,26 z;m 0,0 1439.999975,0 0,805.99999 -1439.999975,0 z">
            <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1440 806" preserveAspectRatio="none">
                <path class="overlay-path" d="m 701.56545,809.01175 35.16718,0 0,19.68384 -35.16718,0 z"/>
            </svg>


            <nav>
                <div class="spinner"></div><br><div id="overlayLogin" style="font-family: SansationLight;color: #fff;font-size: 26px;" value=""></div>
            </nav>
        </div>
	</div>
	<!-- main content -->
</div>
<script src="assets/js/classie.js"></script>
<script src="assets/js/genie_effect.js"></script>
<script src="assets/js/modernizr.custom.js"></script>
<script src="assets/js/snap.svg-min.js"></script>
<script src="assets/js/pathLoader.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/retina-1.1.0.min.js"></script>
<script src="assets/js/form_script.js"></script>
<%
//sess.invalidate();

} else
{
response.sendRedirect("index.jsp");
}}catch(Exception e)
{
	response.sendRedirect("index.jsp");
}
%>
<script type="text/javascript">
$('.selectpicker').selectpicker({

});
</script>
<script type="text/javascript">

	var form = $('#wizard_form');
	form.submit(function ()
        {

		$.ajax({
            type: form.attr('method'),
            url: form.attr('action'),
            data: form.serialize(),
            success: function(data)
            {
               setTimeout(function () { window.location.href="installation.jsp"} , 1000);
            }
        });
            return false;
        }


	);


</script>
<!-- /container -->


<script type="text/javascript">
    <%request.setAttribute("page_referer", "user_home.jsp");%>
    $('#log_out').click(function(){
        $.ajax({
            url:'UserManager',
            type:'POST',
            data: {category:"logout"},
            success: function(data){
                $('.overlay-button').click();
                $('#overlayLogin').html(data);
                setTimeout(function(){ window.location.href="index.jsp";}, 3000);
            }

        });
        //alert("You have been logged out.");

    });

</script>
</body>
</html>