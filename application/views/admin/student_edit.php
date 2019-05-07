<br>
<div class="section-title">Update Student Informations</div>
<?= form_open_multipart('users/student_edit/'.$student_details->id.'')?>
<div class="row">
	<div class="col-lg-6">
		<div class="form-group">
			<label>Student Name</label>
			<?= form_input(['name' => 's_name', 'value' => set_value('s_name', $student_details->s_name), 'class'=>'form-control'])?>
			<div class="text-danger"><?= form_error('s_name')?></div>
		</div>

		<div class="form-group">
			<label>Gurdian Name</label>
			<?= form_input(['name' => 'g_name', 'value' => set_value('g_name', $student_details->g_name), 'class'=>'form-control'])?>
			<div class="text-danger"><?= form_error('g_name')?></div>
		</div>

		<div class="form-group">
			<label>Contact</label>
			<?= form_input(['name' => 'contact', 'value' => set_value('contact', $student_details->contact), 'class'=>'form-control'])?>
			<div class="text-danger"><?= form_error('contact')?></div>
		</div>

		<div class="form-group">
			<label>Email</label>
			<?= form_input(['name' => 'email', 'value' => set_value('email', $student_details->email), 'class'=>'form-control'])?>
			<div class="text-danger"><?= form_error('email')?></div>
		</div>

		<div class="form-group">
			<label>Address</label>
			<?= form_textarea(['name' => 'address', 'value' => set_value('address', $student_details->address), 'class'=>'form-control', 'rows'=>'5'])?>
			<div class="text-danger"><?= form_error('address')?></div>
		</div>

		<div class="form-group">
			<label>Class</label>
			<?= form_input(['name' => 'class', 'value' => set_value('class', $student_details->class), 'class'=>'form-control'])?>
			<div class="text-danger"><?= form_error('class')?></div>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="form-group">
			<label>Division</label>
			<?php 
				$options = array(
					"" 	=> "Choose",
					"1"	=> "Science",
					"2"	=> "Commerce",
					"3"	=> "Arts",
					"4"	=> "N/A"
				);
			 ?>
			 <?= form_dropdown('division', $options, set_value('division', $student_details->division), array('class'=>'form-control'))?>
			<div class="text-danger"><?= form_error('division')?></div>
		</div>

		<div class="form-group">
			<label>Blood group</label>
			<?= form_input(['name' => 'b_group', 'value' => set_value('b_group', $student_details->b_group), 'class'=>'form-control'])?>
			<div class="text-danger"><?= form_error('b_group')?></div>
		</div>

		<div class="form-group">
			<label>Shift</label>
			<?php
				$options = array(
					" "	=> "Choose",
					"1" => "Morning",
					"2" => "Evening"
				);
			?>
			<?= form_dropdown('shift', $options, set_value('shift', $student_details->shift), array('class'=>'form-control'))?>
			<div class="text-danger"><?= form_error('shift')?></div>
		</div>

		<div class="form-group">
			<label>Gender</label>
			<div class="radio">
				<?= form_radio('gender', 'M', set_radio('gender', 'M'))?> Male
			</div>
			<div class="radio">
				<?= form_radio('gender', 'F', set_radio('gender', 'F'))?> Female
			</div>
			<div class="text-danger"><?= form_error('gender')?></div>
		</div>

		<div class="form-group">
			<label>Profile Image</label>
			<?= form_upload(['name'=>'userfile', 'class'=>'form-control', 'value' => ''])?>
             <div class="text-secondary">* Upload PNG, JPG format. Image should not be more than 400KB</div>
             <div class="text-danger">
	            <?php 
		            if (isset($upload_errors))
		            {
		            	print $upload_errors;
		            }
		            else
		            {
		            	print form_error('userfile');
		            }  
	            ?>	
            </div>
		</div>
		
		<div class="form-group">
			<?= form_submit(['name'=> 'submit', 'value'=> 'Update Info', 'class'=>'btn btn-primary'])?>
		</div>
		
	</div>
	
</div>

<?= form_close()?>
<br>