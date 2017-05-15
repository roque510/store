<cfcomponent output="true" accessors="true">
	<cfproperty name="beanFactory">
	<cfproperty name="formatterService">
	<cfproperty name="framework">

	<cfscript>
		
	
		public any function init( fw ) {
		variables.fw = fw;
		return this;
	}

	</cfscript>

	<cffunction name="default" returntype="void" access="public">
		<cfscript>
	        var instant = variables.beanFactory.getBean( "instant" );
			rc.today = variables.formatterService.longdate( instant.created() );
		</cfscript>
	</cffunction>

	<cffunction name="adminLogin" returntype="void" access="public">
		<cfset checkLogin = new admin.model.services.adminLoginService() >
		<cfset loginFound = checkLogin.checkLogin(form.User,form.Password)>

		<cfif loginFound.recordCount EQ 1 >
			<cfset SESSION.isLogged = 	TRUE>
			<cfset SESSION.fname	=	loginFound.UserFirstName>
			<cfset SESSION.lname 	=	loginFound.UserLastName>	

			<cflocation url="index.cfm?action=main.adminHome">
		</cfif>
	</cffunction>	

	<cffunction name="adminHome" returntype="void" access="public">
		<cfdump var="#rc#">
		<!--- Check if any button from the side bar has already been clicked --->
		<cfif structKeyExists(rc, "clicked")>
			<!--- determine where to go after button being clicked. --->
			<cfinclude template="includes/sidebarClickedAction.cfm">
		</cfif>
		<cfset variables.framework.setLayout('main.adminHome',true)>
	</cffunction>

	<cffunction name="adminSliders" returntype="void" access="public">

			<!--- Check if any button from the side bar has already been clicked --->
			<cfif structKeyExists(rc, "clicked")>
				<!--- determine where to go after button being clicked. --->
				<cfinclude template="includes/sidebarClickedAction.cfm">
			</cfif>

			<cfdump var="inside the admin sliders function">
			<cfset variables.framework.setLayout('main.adminHome',true)>
	</cffunction>

	<cffunction name="sliderInsert" returntype="void" access="public">

			<!--- Check if any button from the side bar has already been clicked --->
			<cfdump var="#form#">

			<cfdump var="inside the admin sliders function">
			<cfset variables.framework.setView('main.adminSliders')>
			<cfset variables.framework.setLayout('main.adminHome',true)>
	</cffunction>

	<cffunction name="adminPromos" returntype="void" access="public">
			
			<!--- Check if any button from the side bar has already been clicked --->
			<cfif structKeyExists(rc, "clicked")>
				<!--- determine where to go after button being clicked. --->
				<cfinclude template="includes/sidebarClickedAction.cfm">
			</cfif>

			<cfdump var="inside the admin sliders function">
			<cfset variables.framework.setLayout('main.adminHome',true)>
	</cffunction>	

	<cffunction name="adminNews" returntype="void" access="public">

			<!--- Check if any button from the side bar has already been clicked --->
			<cfif structKeyExists(rc, "clicked")>
				<!--- determine where to go after button being clicked. --->
				<cfinclude template="includes/sidebarClickedAction.cfm">
			</cfif>

			<cfdump var="inside the admin sliders function">
			<cfset variables.framework.setLayout('main.adminHome',true)>
	</cffunction>

</cfcomponent>