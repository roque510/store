<!--- admin Sidebar actions include. --->
<cfswitch expression="#rc.clicked#">
	<cfcase value="sliders">
		<cfdump var="in sliders case">
		<cflocation url="#variables.framework.buildURL('main.adminSliders')#">
		<cfset variables.framework.setLayout('main.adminHome',true)>
	</cfcase>
	<cfcase value="promos">
		<cflocation url="#variables.framework.buildURL('main.adminPromos')#">
	</cfcase>
	<cfcase value="news">
		<cflocation url="#variables.framework.buildURL('main.adminNews')#">
	</cfcase>
</cfswitch>