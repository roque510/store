<cfset rc.title = "Default View" />	<!--- set a variable to be used in a layout --->
<div class="row">
	<div style="border-style: solid; background: black; color: white; text-align: center; font-family: 'Anton', sans; letter-spacing: 1px;"class="col-xs-12">
		<h4>CHECK THE NEWEST ARRIVALS</h4>
	</div>
</div>

<cfset path = expandPath("/views/main/includes/promotext.cfm")>
<cfinclude template="../main/includes/promotext.cfm">

<cfinclude template="../main/includes/promophoto.cfm">


