<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
        	<?php if(isset($edit_profile)):?>
			<li class="active">
            	<a href="#edit" data-toggle="tab"><i class="icon-wrench"></i> 
					<?php echo get_phrase('edit_patient');?>
                    	</a></li>
            <?php endif;?>
			<li class="<?php if(!isset($edit_profile))echo 'active';?>">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('patient_list');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('add_patient');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
        	<!----EDITING FORM STARTS---->
        	<?php if(isset($edit_profile)):?>
			<div class="tab-pane box active" id="edit" style="padding: 5px">
                <div class="box-content">
                	<?php foreach($edit_profile as $row):?>
                    <?php echo form_open('profissional/manage_patient/edit/do_update/'.$row['patient_id'] , array('class' => 'form-horizontal validatable'));?>
                        <div class="padded">
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('name');?></label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="name" value="<?php echo $row['name'];?>"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('email');?></label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="email" value="<?php echo $row['email'];?>"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('password');?></label>
                                <div class="controls">
                                    <input type="password" class="validate[required]" name="password" value="<?php echo $row['password'];?>"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('address');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="address" value="<?php echo $row['address'];?>"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('phone');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="phone" value="<?php echo $row['phone'];?>"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('sex');?></label>
                                <div class="controls">
                                    <select name="sex" class="uniform" style="width:100%;">
                                    	<option value="male" <?php if($row['sex']=='male')echo 'selected';?>><?php echo get_phrase('male');?></option>
                                    	<option value="female" <?php if($row['sex']=='female')echo 'selected';?>><?php echo get_phrase('female');?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('birth_date');?></label>
                                <div class="controls">
                                    <input type="date" class="" name="birth_date" value="<?php echo $row['birth_date'];?>"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('age');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="age" value="<?php echo $row['age'];?>"/>
                                </div>
                            </div>
                             

 <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('blood_group');?></label>
                                <div class="controls">
                                    <select name="blood_group" class="uniform" style="width:100%;">
                                        <option value="A+">A+</option>
                                        <option value="A-">A-</option>
                                        <option value="B+">B+</option>
                                        <option value="B-">B-</option>
                                        <option value="AB+">AB+</option>
                                        <option value="AB-">AB-</option>
                                        <option value="O+">O+</option>
                                        <option value="O-">O-</option>
                                    </select>
                                </div>
                                <br/>

                         <label class="control-label"><?php echo get_phrase('Tratamento Estetico Anterior');?></label>
                              <div class="controls">
                                    <select name="TEA" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['TEA']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['TEA']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
                            
                                <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Descreva');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="TEA_OBS" value="<?php echo $row['TEA_OBS'];?>"/>
                                </div></div>
                        </div>

                <label class="control-label"><?php echo get_phrase('Usa Lentes de Contato?');?></label>
                              <div class="controls">
                                    <select name="LDC" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['LDC']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['LDC']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
</div>

                            <label class="control-label"><?php echo get_phrase('Usa Cosméticos?');?></label>
                              <div class="controls">
                                    <select name="UDC" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['UDC']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['UDC']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
</div>
                                    <label class="control-label"><?php echo get_phrase('Exposição ao Sol?');?></label>
                              <div class="controls">
                                    <select name="EAS" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['EAS']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['EAS']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>

                                    </div>
                                    <label class="control-label"><?php echo get_phrase('Tabagismo?');?></label>
                              <div class="controls">
                                    <select name="TBG" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['TBG']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['TBG']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>

                                     </div>
                                    <label class="control-label"><?php echo get_phrase('Ingere Bebida Alcoólica?');?></label>
                              <div class="controls">
                                    <select name="IBA" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['IBA']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['IBA']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
 </div>
                       <label class="control-label"><?php echo get_phrase('Funcionamento Intestinal');?></label>
                              <div class="controls">
                                    <select name="IBA" class="uniform" style="width:100%;">
                                        <option value="1-2 semana" <?php if($row['FI']=='1-2 semana')echo 'selected';?>><?php echo get_phrase('1-2 vezes / semana');?></option>
                                        <option value="1-2 vezes / dia" <?php if($row['FI']=='1-2 dia')echo 'selected';?>><?php echo get_phrase('1-2 vezes / dia');?></option>
                                        <option value="3-4" <?php if($row['FI']=='3-4 semana')echo 'selected';?>><?php echo get_phrase('3-4 vezes / semana');?></option>
                                        <option value="+3 dia" <?php if($row['FI']=='3 vezes dia')echo 'selected';?>><?php echo get_phrase('+3 vezes / dia');?></option>
                                    </select>
                                </div>

                        <label class="control-label"><?php echo get_phrase('Qualidade de Sono');?></label>
                              <div class="controls">
                                    <select name="QDS" class="uniform" style="width:100%;">
                                        <option value="Boa" <?php if($row['QDS']=='Boa')echo 'selected';?>><?php echo get_phrase('Boa');?></option>
                                        <option value="Regular" <?php if($row['QDS']=='Regular')echo 'selected';?>><?php echo get_phrase('Regular');?></option>
                                       <option value="Ruim" <?php if($row['QDS']=='Ruim')echo 'selected';?>><?php echo get_phrase('Ruim');?></option></select>

</div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Ingestão de Água (Copos)');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="IDA" value="<?php echo $row['IDA'];?>"/>
                                </div>
                            </div>

</div>
                                    <label class="control-label"><?php echo get_phrase('Pratica de Atividade Física?');?></label>
                              <div class="controls">
                                    <select name="PAF" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['PAF']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['PAF']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
</div>
                                    <label class="control-label"><?php echo get_phrase('Tratamento médico atualmente?');?></label>
                              <div class="controls">
                                    <select name="TMA" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['TMA']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['TMA']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Descreva o Tratamento');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="TMA_OBS" value="<?php echo $row['TMA_OBS'];?>"/>
                                </div></div>
                        </div>

                                <label class="control-label"><?php echo get_phrase('Antecedente Alérgico?');?></label>
                              <div class="controls">
                                    <select name="ALRG" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['ALRG']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['ALRG']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
</div>
                                <label class="control-label"><?php echo get_phrase('Portador de Marcapasso?');?></label>
                              <div class="controls">
                                    <select name="PDMP" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['PDMP']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['PDMP']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
</div>
                                <label class="control-label"><?php echo get_phrase('Alterações Cardiacas?');?></label>
                              <div class="controls">
                                    <select name="ATCD" class="uniform" style="width:100%;">
                                        <option value="sim" <?php if($row['ATCD']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                        <option value="nao" <?php if($row['ATCD']=='nao')echo 'selected';?>><?php echo get_phrase('nao');?></option>
                                    </select>
                                     <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Quais?');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="TEA_OBS" value="<?php echo $row['ATCD_OBS'];?>"/>
                                </div></div>
                        </div>
                      

                                <label class="control-label"><?php echo get_phrase('Hipertenção Arterial?');?></label>
                              <div class="controls">
                                    <select name="HIPAR" class="uniform" style="width:100%;">
                                        <option value="nao" <?php if($row['HIPAR']=='nao')echo 'selected';?>><?php echo get_phrase('Nao');?></option>
                                        <option value="sim" <?php if($row['HIPAR']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                    </select>
                                </div>
                                </p>
                                <label class="control-label"><?php echo get_phrase('Dist. Circulatório?');?></label>
                              <div class="controls">
                                    <select name="DISCIR" class="uniform" style="width:100%;">
                                        <option value="nao" <?php if($row['DISCIR']=='nao')echo 'selected';?>><?php echo get_phrase('Nao');?></option>
                                        <option value="sim" <?php if($row['DISCIR']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                    </select>

                                    </div>
                                </p>
                                <label class="control-label"><?php echo get_phrase('Dist. Renal?');?></label>
                              <div class="controls">
                                    <select name="DISRE" class="uniform" style="width:100%;">
                                        <option value="nao" <?php if($row['DISRE']=='nao')echo 'selected';?>><?php echo get_phrase('Nao');?></option>
                                        <option value="sim" <?php if($row['DISRE']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                    </select>

                                    <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Descreva Disturbio');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="DISRE_OBS" value="<?php echo $row['DISRE_OBS'];?>"/>
                                </div></div>
                        </div>

                                </p>
                                <label class="control-label"><?php echo get_phrase('Dist. Hormonal?');?></label>
                              <div class="controls">
                                    <select name="DISHOR" class="uniform" style="width:100%;">
                                        <option value="nao" <?php if($row['DISHOR']=='nao')echo 'selected';?>><?php echo get_phrase('Nao');?></option>
                                        <option value="sim" <?php if($row['DISHOR']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                    </select>

                                    <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('Descreva Disturbio');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="DISHOR_OBS" value="<?php echo $row['DISHOR_OBS'];?>"/>
                                </div></div>
                        </div>

                                </p>
                                <label class="control-label"><?php echo get_phrase('Diabetes?');?></label>
                              <div class="controls">
                                    <select name="DIABT" class="uniform" style="width:100%;">
                                        <option value="nao" <?php if($row['DIABT']=='nao')echo 'selected';?>><?php echo get_phrase('Nao');?></option>
                                        <option value="sim" <?php if($row['DIABT']=='sim')echo 'selected';?>><?php echo get_phrase('Sim');?></option>
                                    </select>
                                    </div>

                                </p>
                                <label class="control-label"><?php echo get_phrase('Acne?');?></label>
                              <div class="controls">
                                    <select name="ACNE" class="uniform" style="width:100%;">
                                        <option value="nao" <?php if($row['ACNE']=='nao')echo 'selected';?>><?php echo get_phrase('Nao');?></option>
                                        <option value="Grau I" <?php if($row['ACNE']=='Grau I')echo 'selected';?>><?php echo get_phrase('Grau I');?></option>
                                         <option value="Grau II" <?php if($row['ACNE']=='Grau II')echo 'selected';?>><?php echo get_phrase('Grau II');?></option>
                                          <option value="Grau III" <?php if($row['ACNE']=='Grau III')echo 'selected';?>><?php echo get_phrase('Grau III');?></option>
                                          <option value="Grau IV" <?php if($row['ACNE']=='Grau IV')echo 'selected';?>><?php echo get_phrase('Grau IV');?></option>
                                            <option value="Grau V" <?php if($row['ACNE']=='Grau V')echo 'selected';?>><?php echo get_phrase('Grau V');?></option>
                                    </select>
                                     </div>
                                </p>

                                <label class="control-label"><?php echo get_phrase('Manchas Pigmentares (Melanina)?');?></label>
                              <div class="controls">
                                    <select name="MANCHPIG" class="uniform" style="width:50%;">
                                        <option value="nao" <?php if($row['MANCHPIG']=='nao')echo 'selected';?>><?php echo get_phrase('Nao');?></option>
                                        <option value="Acromia" <?php if($row['MANCHPIG']=='Acromia')echo 'selected';?>><?php echo get_phrase('Acromia');?></option>
                                         <option value="Efélides" <?php if($row['MANCHPIG']=='Efélides')echo 'selected';?>><?php echo get_phrase('Efélides');?></option>
                                          <option value="Hipocromia" <?php if($row['MANCHPIG']=='Hipocromia')echo 'selected';?>><?php echo get_phrase('Hipocromia');?></option>
                                          <option value="Melanose" <?php if($row['MANCHPIG']=='Melanose')echo 'selected';?>><?php echo get_phrase('Melanose');?></option>
                                            <option value="Hipercromia" <?php if($row['MANCHPIG']=='Hipercromia')echo 'selected';?>><?php echo get_phrase('Hipercromia');?></option>
                                    </select>     </div>      
                           
                            </p><br/><br/>
                              <label class="controls"><?php echo get_phrase('Cor da Pele');?></label>
                              <div class="controls">
                                    <select name="CORPEL" class="uniform" style="width:100%;">
                                        <option value="Branca" <?php if($row['CORPEL']=='Branca')echo 'selected';?>><?php echo get_phrase('Branca');?></option>
                                        <option value="Negra" <?php if($row['CORPEL']=='Negra')echo 'selected';?>><?php echo get_phrase('Negra');?></option>
                                         <option value="Amarela" <?php if($row['CORPEL']=='Amarela')echo 'selected';?>><?php echo get_phrase('Amarela');?></option>
                                          <option value="Parda" <?php if($row['CORPEL']=='Parda')echo 'selected';?>><?php echo get_phrase('Parda');?></option>
                                      </select> 
                                </div>
                              
                    


            <div class="form-actions">
            <button type="submit" class="btn btn-blue"><?php echo get_phrase('edit_patient');?></button>
            </div>
                    <?php echo form_close();?>
                    <?php endforeach;?>
            </div>
            </div>
                      
                           


			</div>
            <?php endif;?>
            <!----EDITING FORM ENDS--->
            
            <!----TABLE LISTING STARTS--->
            <div class="tab-pane box <?php if(!isset($edit_profile))echo 'active';?>" id="list">
				
                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                	<thead>
                		<tr>
                    		<th><div>#</div></th>
                    		<th><div><?php echo get_phrase('patient_name');?></div></th>
                    		<th><div><?php echo get_phrase('age');?></div></th>
                    		<th><div><?php echo get_phrase('sex');?></div></th>
                            <th><div><?php echo get_phrase('CPF');?></div></th>
                            <th><div><?php echo get_phrase('phone');?></div></th>
                    		<th><div><?php echo get_phrase('birth_date');?></div></th>
                    		<th><div><?php echo get_phrase('options');?></div></th>
						</tr>
					</thead>
                    <tbody>
                    	<?php $count = 1;foreach($patients as $row):?>
                        <tr>
                            <td><?php echo $count++;?></td>
							<td><?php echo $row['name'];?></td>
							<td><?php echo $row['age'];?></td>
							<td><?php echo $row['sex'];?></td>
                            <td><?php echo $row['CPF'];?></td>
                                <td><?php echo $row['phone'];?></td>
							<td><?php echo $row['birth_date'];?></td>
							<td align="center">
                            	<a href="<?php echo base_url();?>index.php?profissional/manage_patient/edit/<?php echo $row['patient_id'];?>"
                                	rel="tooltip" data-placement="top" data-original-title="<?php echo get_phrase('edit');?>" class="btn btn-blue">
                                		<i class="icon-wrench"></i>
                                </a>
                            	<a href="<?php echo base_url();?>index.php?profissional/manage_patient/delete/<?php echo $row['patient_id'];?>" onclick="return confirm('delete?')"
                                	rel="tooltip" data-placement="top" data-original-title="<?php echo get_phrase('delete');?>" class="btn btn-red">
                                		<i class="icon-trash"></i>
                                </a>
        					</td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
			</div>
            <!----TABLE LISTING ENDS--->
            
            
			<!----CREATION FORM STARTS---->
			<div class="tab-pane box" id="add" style="padding: 5px">
                <div class="box-content">
                    <?php echo form_open('profissional/manage_patient/create/' , array('class' => 'form-horizontal validatable'));?>
                        <div class="padded">
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('name');?></label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="name"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('email');?></label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="email"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('password');?></label>
                                <div class="controls">
                                    <input type="password" class="validate[required]" name="password"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('address');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="address"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('phone');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="phone"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('sex');?></label>
                                <div class="controls">
                                    <select name="sex" class="uniform" style="width:100%;">
                                    	<option value="male"><?php echo get_phrase('male');?></option>
                                    	<option value="female"><?php echo get_phrase('female');?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('birth_date');?></label>
                                <div class="controls">
                                    <input type="date" class="" name="birth_date"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('age');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="age"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('blood_group');?></label>
                                <div class="controls">
                                    <select name="blood_group" class="uniform" style="width:100%;">
                                    	<option value="A+">A+</option>
                                        <option value="A-">A-</option>
                                        <option value="B+">B+</option>
                                        <option value="B-">B-</option>
                                        <option value="AB+">AB+</option>
                                        <option value="AB-">AB-</option>
                                        <option value="O+">O+</option>
                                        <option value="O-">O-</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-blue"><?php echo get_phrase('add_patient');?></button>
                        </div>
                    <?php echo form_close();?>                
                </div>                
			</div>
			<!----CREATION FORM ENDS--->
            
		</div>
	</div>
</div>