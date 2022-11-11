<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Build Your Computer</title>
<style type="text/css">
#p1 {
	color: red;
}
</style>
<script>
	var subjectObject = {
		"Monitor" : {
			"Dell" : [ "Vostro", "Latitude", "XPS", "Alienware" ],
			"Lenovo" : [ "Ideapad", "Thinkpad", "Thinkbook", "Legion" ],
			"Asus" : [ "VivoBook Flip", "VivoBook S", "ZenBook Flip",
					"VivoBook M" ]
		},
		"Printer" : {
			"Canon" : [ "319", "LBP 2900", "LBP 223W" ],
			"HP" : [ "Laser 107a", "Ink Tank 115", "107A-4ZB77A" ],
			"EPSON" : [ "TM-T81III", "L1800", "L1110", "Eco Tank L14150" ],
			"Brother" : [ "2321D", "dcp-t426w", "dcp-t510w", "hl-l2321d" ],
			"Others" : [ "Panasonic", "Ricoh" ],
		},
		"Scanner" : {
			"Pluktes" : [ "PS 186", "OptickBook A300", "PS406U" ],
			"HP" : [ "2000 S2", "laserjet", "Deskjet" ],
			"Brother" : [ "ads 2200", "dcp-t310", "ds 620" ],
			"Others" : [ "FlatBed" ]
		}
	}
	window.onload = function() {
		var type = document.getElementById("TYPE");
		var brand = document.getElementById("brand");
		var name = document.getElementById("NAME");
		for ( var x in subjectObject) {
			type.options[type.options.length] = new Option(x, x);
		}
		type.onchange = function() {

			name.length = 1;
			brand.length = 1;

			for ( var y in subjectObject[this.value]) {
				brand.options[brand.options.length] = new Option(y, y);
			}
		}
		brand.onchange = function() {

			name.length = 1;

			var z = subjectObject[type.value][this.value];
			for (var i = 0; i < z.length; i++) {
				name.options[name.options.length] = new Option(z[i], z[i]);
			}
		}
	}
</script>
<%@ include file="all_component/allCss.jsp"%>
</head>
<body>
	<form name="form1" id="form1" action="Information.jsp">
		<div class="container mt-5">
			<div class="row d-flex justify-content-center">
				<div class="col-md-6">
					<div class="card px-9 py-5" id="form1">
						<div class="form-data">
							<h1>
								<p id="p1" style="text-align: center;">Order Form</p>
							</h1>
							<table border="1" width="540" height="auto">

							<tr>
							<th><div class="forms-inputs mb-4">
							<h1 style="text-align: center;">Processor <i class="fa-solid fa-microchip"></i></h1>
								<input type="radio" id="r1" name="element" value="Celeron D">Celeron D <br> <br> 
								<input type="radio" id="r2" name="element" value="Pentium IV">Pentium IV <br> <br>
								<input type="radio" id="r3" name="element" value="Pentium D">Pentium D <br> <br>
							</div></th>
							<th><div class="forms-inputs mb-4">
								<h1 style="text-align: center;">Accessories</h1>
								TYPE: <select name="TYPE" id="TYPE">
									  <option value="" selected="selected">Select</option>
								      </select> <br> <br>
								 Brand: <select name="brand" id="brand">
									<option value="" selected="selected">Please choose an option</option>
								       </select> <br> <br>
								 NAME: <select name="NAME" id="NAME">
									<option value="" selected="selected">Please choose an option</option>
								      </select> <br> <br>
							</div></th>
								</tr>

							</table>

							<div class="mb-3">
								<button type="submit" class="btn btn-dark w-100">
									Purchase</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>