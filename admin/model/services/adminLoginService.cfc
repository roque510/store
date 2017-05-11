<cfcomponent output="true" accessors="true">

	<cffunction name="checkLogin" returntype="Any">
		<cfargument name="User" type="string" default="">
		<cfargument name="Password" type="string" default="">

			<cfset adminLogin = new admin.model.DAO.adminDAO() >
			<cfset adminLoginSuccess = adminLogin.checkLogin(ARGUMENTS.User,ARGUMENTS.Password)>

			<cfif adminLoginSuccess.recordCount EQ 1>
				<cfreturn adminLoginSuccess>	
			</cfif>

			<cfdump var="#session#" abort="false">
		
	</cffunction>

</cfcomponent>