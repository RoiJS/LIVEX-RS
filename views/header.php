<div class="navbar navbar-fixed-top"  >
    <div class="navbar-inner">
		<div class="container">
            <button class="btn btn-navbar" data-toggle="collapse" data-target="#app-nav-top-bar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
			<a class="brand">
				<div class="row">
					<div class="span16" style="margin-top:20px;text-align:center;">
						Mindanao ICT Cluster Conference | Registration System
					</div>
				</div>
			</a>
			
            <div id="app-nav-top-bar" class="nav-collapse" hidden>	
                <ul class="nav pull-right">
                    <li>
                        <a href="?pg=user">Pre-registration</a>
                    </li>
                    <li>
                        <a href="?pg=user&vw=walkInRegistrations&dir=<?php echo sha1("registration");?>">Walk-in registration</a>
                    </li>
                    <li>
                        <a href="?pg=user&vw=walkInRegistrations&dir=<?php echo sha1("registration");?>">Import List</a>
                    </li>
                    <li>
                        <a href="?pg=access&vw=logout&dir=<?php echo sha1("logout"); ?>">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<br>