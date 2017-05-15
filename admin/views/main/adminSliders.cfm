<cfset rc.title = "Sliders setup" />	<!--- set a variable to be used in a layout --->

<cfquery name="sliders" datasource="ecommerce">
	SELECT *
	FROM products
</cfquery>

<div class="col-lg-4"></div>
<div class="container col-lg-4">
			<div class="row main">
				<div class="main-login main-center" style="background: #009edf; padding: 10px 40px; color: #fff; ">
				<h5>Please fill all the required fields.</h5>
					<form class="" method="post" action="index.cfm?action=main.adminSliders">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Slider title</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Title to be shown in the slider."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Slider description</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Description to be shown below the title."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">IMG</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"  placeholder="Upload your img."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">disclaimer</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Disclaimer in small sized text."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Alternate link</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Alternate link to redirect to when clicked."/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<input type="submit" class="button" name="save" id="button">
							
							
						</div>
						
					</form>
				</div>
			</div>
		</div>



<cfdump var="#sliders#">


</div>	
