<cfset rc.title = "Default View" />	<!--- set a variable to be used in a layout --->
<div class="row">
	<div style="border-style: solid; background: black; color: white; text-align: center; font-family: 'Anton', sans; letter-spacing: 1px;"class="col-xs-12">
		<h4>LOGIN</h4>
	</div>
</div>

<cfquery name="theTest" datasource="ecommerce">
	SELECT * FROM users
</cfquery>

<cfdump var="#theTest#" abort="false">
<div class="col-lg-6">
	<table>
		<cfform class="navbar-form navbar-left" action="index.cfm?action=main.adminLogin">
			<tr>
				<cfinput type="text" class="form-control" placeholder="Username" name="User">
			</tr>
			<tr>
				<cfinput type="text" class="form-control" placeholder="Password" name="Password">
			</tr>	
		    <tr>
		    	<cfinput type="submit" class="btn btn-default" name="submit" value="Submit">
		    </tr>	
		</cfform>
	</table>
</div>	