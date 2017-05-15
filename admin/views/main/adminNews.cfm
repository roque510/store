<cfset rc.title = "Administrator Home" />	<!--- set a variable to be used in a layout --->

<cfdump var="THIS IS THE NEWS SCREEN">

<div class="col-lg-4"></div>
<div class="container col-lg-4">
			<div class="row main">
				<div class="main-login main-center" style="background: #f44141; padding: 10px 40px; color: #fff; ">
				<h5>Please fill all the required fields.</h5>
					<form class="" method="post" action="#">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">News thumbnail IMG</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Title to be shown in the slider."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Title</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Description to be shown below the title."/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Description</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"  placeholder="Upload your img."/>
								</div>
							</div>
						</div>


						<div class="form-group ">
							<a href="http://deepak646.blogspot.in" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Save</a>
						</div>
						
					</form>
				</div>
			</div>
		</div>

</div>	

</div>	
