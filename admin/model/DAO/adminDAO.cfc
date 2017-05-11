<cfcomponent output="true" accessors="true">

	<cffunction name="checkLogin" returntype="Any">
		<cfargument name="User" type="string" default="">
		<cfargument name="Password" type="string" default="">

			<cfquery name="loginVerified" datasource="ecommerce">
				SELECT *
				FROM users
				WHERE UserEmail = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.User#">
				AND UserPassword = <cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.Password#">
				AND admin = 1
			</cfquery>

			<cfreturn loginVerified>
	</cffunction>

</cfcomponent>