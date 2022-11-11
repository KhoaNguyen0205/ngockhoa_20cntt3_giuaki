<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
#p1{
color: red;
}
</style>
<title>Information Page</title>
<%@ include file="all_component/allCss.jsp"%>
</head>
<body>
<form name="soluong" method="post" action="LV3.jsp">
	<div class="container mt-5">
		<div class="row d-flex justify-content-center">
			<div class="col-md-6">
				<div class="card px-5 py-5" id="form1">
					<div class="form-data">
						<h1>
							<p id="p1" style="text-align: center;">Order Summary</p>
						</h1>
						<div class="forms-inputs mb-4"></div>
						<div class="forms-inputs mb-4">
							<table border="1" width="450" height="150">
								<tr>
									<td><b>Processor</b></td>
									<td><b> <%out.print(request.getParameter("element"));%>
									</b></td>
								</tr>
								<tr>
									<td><b>Accessories</b></td>
									<td>
										<p>
											<b> <%out.print(request.getParameter("monitor")); %></b> 
										</p>
									</td>
								</tr>
							</table>
							 <input id="p1" type="submit"  value="Edit">						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	  
</body>
</html>