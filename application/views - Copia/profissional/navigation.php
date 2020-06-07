<div class="sidebar-background">
	<div class="primary-sidebar-background">
	</div>
</div>
<div class="primary-sidebar">
	<!-- Main nav -->
    <br />
    <div style="text-align:center;">
    	<a href="<?php echo base_url();?>">
        	<img src="<?php echo base_url();?>uploads/logo.png"  style="max-height:100px; max-width:100px;"/>
        </a>
    </div>
   	<br />
	<ul class="nav nav-collapse collapse nav-collapse-primary">
    
        
        <!------dashboard----->
		<li class="<?php if($page_name == 'dashboard')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?profissional/dashboard" >
					<i class="icon-desktop icon-2x"></i>
					<span><?php echo get_phrase('dashboard');?></span>
				</a>
		</li>
        
        <!------patient----->
		<li class="<?php if($page_name == 'manage_patient')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?profissional/manage_patient" >
					<i class="icon-user icon-2x"></i>
					<span><?php echo get_phrase('patient');?></span>
				</a>
		</li>
        
        <!------appointment----->
		<li class="<?php if($page_name == 'manage_appointment')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?profissional/manage_appointment" >
					<i class="icon-edit icon-2x"></i>
					<span><?php echo get_phrase('manage_appointment');?></span>
				</a>
		</li>
        
        <!------prescription----->
		<li class="<?php if($page_name == 'manage_prescription')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?profissional/manage_prescription" >
					<i class="icon-stethoscope icon-2x"></i>
					<span><?php echo get_phrase('manage_prescription');?></span>
				</a>
		</li>
        
        <!------consult allotment----->
		<li class="<?php if($page_name == 'manage_consult_allotment')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?profissional/manage_consult_allotment" >
					<i class="icon-hdd icon-2x"></i>
					<span><?php echo get_phrase('consult_allotment');?></span>
				</a>
		</li>
        
      

		
		<!------manage report--->
		<li class="<?php if($page_name == 'manage_report')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?profissional/manage_report" >
					<i class="icon-hospital icon-2x"></i>
					<span><?php echo get_phrase('manage_report');?></span>
				</a>
		</li>

		<!------manage own profile--->
		<li class="<?php if($page_name == 'manage_profile')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?profissional/manage_profile" >
					<i class="icon-lock icon-2x"></i>
					<span><?php echo get_phrase('profile');?></span>
				</a>
		</li>
		
	</ul>
	
</div>