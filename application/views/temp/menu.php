<div class="main-menu text-center">
	<ul>
	    <li><a href="<?= base_url('home')?>">home</a></li>
	    <?php if($this->session->userdata('logged_in')): ?>
	    	<li><a href="<?= base_url('users/admission')?>">Admission</a></li>
	    	<li><a href="<?= base_url('users/all_students')?>">Students</a></li>
	    	<li><a href="<?= base_url('users/add_admin')?>" class="reg-btn"><i class="fas fa-user-plus"></i> Register</a></li>
	    	<li><a href="<?= base_url('home/logout')?>">Logout</a></li>
	    <?php else: ?>
	    <li><a href="<?= base_url('home/login')?>" class="login-menu"><i class="fas fa-sign-in-alt"></i> Login</a></li>
	    <li><a href="#">about</a></li>
	    <?php endif;  ?>
	</ul>
</div>