<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

		<link href="https://fonts.googleapis.com/css?family=Anton|Righteous" rel="stylesheet">

		<!--- Mobile first bootstrap --->
		<meta name="viewport" content="width=device-width, initial-scale=1">


		<!--- title set by a view - there is no default --->
		<title>FW/1 Skeleton - <cfoutput>#rc.title#</cfoutput></title>
	</head>
	<body>

		<div class="row">
			<div style="" class="col-xs-2"></div>
			<div style="" class="col-xs-2"></div>
			<div style=""class="col-xs-4 alert alert-warning">
				<h3 style="text-align: center;">Admin. Panel</h3>
			</div>
			<div style="" class="col-xs-2"></div>
			<div style="" class="col-xs-2"></div>
		</div>

		<!--- Black title bar --->
		<div class="row">
			<div style="border-style: solid; background: black; color: white; text-align: center; font-family: 'Anton', sans; letter-spacing: 1px;"class="col-xs-12">
				<h4>Administrator home</h4>
			</div>
		</div>

		<!--- Sidebar buttons --->
		<div class="btn-group-vertical" role="group" aria-label="...">
			<table>
				<cfform action="index.cfm?action=#rc.action#">			
					<tr>
						<cfinput type="submit" class="btn btn-default" name="clicked" value="sliders">
					</tr>
					<tr>
						<cfinput type="submit" class="btn btn-default" name="clicked" value="promos">
					</tr>	
				    <tr>
				    	<cfinput type="submit" class="btn btn-default" name="clicked" value="news">
				    </tr>		 	
				</cfform>
			</table>   
		</div>
		
		<cfoutput>#body#</cfoutput>	<!--- body is result of views --->
		<p style="font-size: small;">
			XANDUNNNNN <cfoutput>#variables.framework.version#</cfoutput>.<br />
			This request took <cfoutput>#getTickCount() - rc.startTime#</cfoutput>ms.
		</p>
	</body>
</html>