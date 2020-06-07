<div class="box">
	<div class="box-header">
    

    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('appointment_list');?>
                    	</a></li>
                            <li>
                <a href="#add" data-toggle="tab"><i class="icon-plus"></i>
                    <?php echo get_phrase('Adicionar Agendamento');?>
                        </a></li>
                    </li>
                    <li class="">
              


        </ul>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
        	
            <!----TABLE LISTING STARTS--->
            <div class="tab-pane box <?php if(!isset($edit_profile))echo 'active';?>" id="list">
				
                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                	<thead>
                		<tr>
                    		<th><div>#</div></th>
                    		<th><div><?php echo get_phrase('date');?></div></th>
                    		<th><div><?php echo get_phrase('profissional');?></div></th>
                            <th><div><?php echo get_phrase('Paciente');?></div></th>
                    		<th><div><?php echo get_phrase('especialidade');?></div></th>
                            <th><div><?php echo get_phrase('Gerenciar Consultas Agendadas');?></div></th>
						</tr>
					</thead>

                    <tbody>

                        <?php $count = 1;foreach($appointments as $row):?>
                        <tr>

                            <td><?php echo $count++;?></td>
                            <td><?php echo date('d M,Y', $row['appointment_timestamp']);?></td>
                            <td><?php echo $this->crud_model->get_type_name_by_id('profissional',$row['profissional_id'],'name');?></td>
                            <td><?php echo $this->crud_model->get_type_name_by_id('patient',$row['patient_id'],'name');?></td>
                            <td><?php echo $this->crud_model->get_type_name_by_id('especialidade',$row['especialidade_id'], 'name');?></td>
                             
                    
                              <td align="center">
                                <a href="<?php echo base_url();?>index.php?patient/manage_appointment/delete/<?php echo $row['appointment_id'];?>" onclick="return confirm('O Agendamento da Consulta será cancelado -delete?')"
                                    rel="tooltip" data-placement="top" data-original-title="<?php echo get_phrase('delete');?>" class="btn btn-red">
                                        <i class="icon-trash"></i>
                                </a>
                            </td>


                        </tr>
                        <?php endforeach;?>
                    </tbody>

                </table>
			</div>











<td align="center">
                                <a href="<?php echo base_url();?>index.php?patient/manage_appointment/edit/<?php echo $row['appointment_id'];?>"
                                    rel="tooltip" data-placement="top" data-original-title="<?php echo get_phrase('edit');?>" class="btn btn-blue">
                                        <i class="icon-wrench"></i>
                                </a>
                                <a href="<?php echo base_url();?>index.php?patient/manage_appointment/delete/<?php echo $row['appointment_id'];?>" onclick="return confirm('O Agendamento da Consulta será cancelado -delete?')"
                                    rel="tooltip" data-placement="top" data-original-title="<?php echo get_phrase('delete');?>" class="btn btn-red">
                                        <i class="icon-trash"></i>
                                </a>
                            </td>






            <!----TABLE LISTING ENDS--->
            <!----Schedule Appointment Start--->
           <!----CREATION FORM STARTS---->
            <div class="tab-pane box" id="add" style="padding: 5px">
                <div class="box-content">

                    <?php echo form_open('patient/manage_appointment/create/', array('class' => 'form-horizontal validatable'));?>
                        <div class="padded">
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('patient');?></label>
                                <div class="controls" style="padding-top:6px;">
                                    <?php echo $this->crud_model->get_type_name_by_id('patient' ,$this->session->userdata('patient_id') , 'name');?>
                                    <input type="hidden" name="patient_id" value="<?php echo $this->session->userdata('patient_id');?>"  />

                    <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Data da Consulta');?></label>
                                <div class="controls">
                                    <input type="text" class="datepicker fill-up" name="appointment_timestamp"/>
                                </div>
                            </div>


                              <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Profissional Desejado');?></label>
                                <div class="controls">
                                    <select class="chzn-select" name="profissional_id">
                                        <?php 
                                        $this->db->order_by('profissional_id' , 'asc');
                                        $profissional_id   =   $this->db->get('profissional')->result_array();
                                        foreach($profissional_id as $row):
                                        ?>
                                            <option value="<?php echo $row['profissional_id'];?>"><?php echo $row['name'];?></option>
                                        <?php
                                        endforeach;
                                        ?>
                                    </select>
                                </div>



                        <div class="padded">
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('paciente');?></label>
                                <div class="controls" style="padding-top:6px;">
                                    <?php echo $this->crud_model->get_type_name_by_id('patient' ,$this->session->userdata('patient_id') , 'name');?>
                                    <input type="hidden" name="patient_id" value="<?php echo $this->session->userdata('patient_id');?>"  />
                                </div>
                            </div>

                            </div>
                             <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Especialidade Desejada');?></label>
                                <div class="controls">
                                    <select class="chzn-select" name="especialidade_id">
                                        <?php 
                                        $this->db->order_by('especialidade_id' , 'asc');
                                        $especialidades   =   $this->db->get('especialidade')->result_array();
                                        foreach($especialidades as $row):
                                        ?>
                                            <option value="<?php echo $row['especialidade_id'];?>"><?php echo $row['name'];?></option>
                                        <?php
                                        endforeach;
                                        ?>
                                    </select>
                                </div>
                        </div>
                    </div>
                        
                        <!----Schedule Appointment End--->

                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-blue"><?php echo get_phrase('Marcar Consulta');?></button>
                        </div>
                    <?php echo form_close();?>                
                </div>                
            </div>
            <!----CREATION FORM ENDS--->
            
		</div>
	</div>
</div>