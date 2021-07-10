<div class="body-nav body-nav-vertical body-nav-fixed" >
    <div class="container">
         <ul>
           <li class="<?php echo getPage() == 'user' && getView() == 'index' ? 'active' : '';?>">
				<a href="?pg=user">
					<i class="icon-edit icon-large"></i>Pre-Registration
                </a>
            </li>
           <li class="<?php echo getPage() == 'user' && getView() == 'walkInRegistrations' ? 'active' : '';?>">
				<a href="?pg=user&vw=walkInRegistrations&dir=<?php echo sha1("registration");?>">
					<i class="icon-edit icon-large"></i>Walk-in Registration
                </a>
            </li>
           <li class="<?php echo getPage() == 'user' && getView() == 'importStudentList' ? 'active' : '';?>">
				<a onclick="registrationController.importStudentList();">
					<i class="icon-upload icon-large"></i>Import list
                </a>
            </li>
           <li class="<?php echo getPage() == 'user' && getView() == 'logout' ? 'active' : '';?>">
				<a href="?pg=access&vw=logout&dir=<?php echo sha1("logout"); ?>">
					<i class="icon-signout icon-large"></i>Logout
                </a>
            </li>
        </ul>
    </div>
</div>