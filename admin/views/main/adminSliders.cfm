<cfset rc.title = "Sliders setup" />	<!--- set a variable to be used in a layout --->

<cfquery name="sliders" datasource="ecommerce">
	SELECT *
	FROM products
</cfquery>

<cfdump var="#sliders#">


</div>	
