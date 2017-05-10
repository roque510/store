<cfcomponent output="true" accessors="true">
	<cfproperty name="beanFactory">
	<cfproperty name="formatterService">

	<cffunction name="init" returntype="any" access="public">
		<cfset variables.fw = fw>
		<cfreturn this>
	</cffunction>

	<cffunction name="default" returntype="void" access="public">
		<cfscript>
	        var instant = variables.beanFactory.getBean( "instant" );
			rc.today = variables.formatterService.longdate( instant.created() );
		</cfscript>
	</cffunction>

	<cffunction name="adminLogin" returntype="boolean" access="public">
		<cfset checkLogin = new admin.model.services.adminLoginService() >
		<cfset loginFound = checkLogin.checkLogin(form.User,form.Password)>
	</cffunction>	

</cfcomponent>