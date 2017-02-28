<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false" import="java.util.*"%>
<%

HttpSession sess = request.getSession(false);
try
{
	if(null!=sess.getAttribute("first_name"))	
		{ 
	/* Date date = null;
	date = new Date(sess.getCreationTime());
	out.println(date); */%>
	<jsp:include page="header.jsp"></jsp:include>



<div class="container">
<section>

<div><button type="button" id="open_wizard" class="btn btn-success" style="margin-top:15%; color:#5cb85c ;background-image: linear-gradient(to bottom, #5cb85c 0px, #419641 100%);"><span class="glyphicon glyphicon-edit"></span> Creating new Project ? Click Here!</button></div>
<div><button type="button" class="btn btn-success" style="margin-top:3%; color:#5cb85c ;background-image: linear-gradient(to bottom, #337ab7 0px, #265a88 100%);"><span class="glyphicon glyphicon-edit"></span> Already have XMl ? Upload Here!</button></div>
				
				<p><button hidden="true" id="trigger-overlay" type="button" class="overlay-button"></button></p>
			</section></div>

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
		</div>	
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
<script type="text/javascript">
$('#open_wizard').click(function(){
	
	setTimeout(function(){window.location.href="project_wizard.jsp";}, 0000)
});


</script>
	</body>

	</html>
	</html>