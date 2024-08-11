<?php
ob_start();
session_start();
if($_SESSION["frontuserid"]=="")
{header("location:login.php");exit();}
include("include/connection.php");
$category=$_POST['category'];
$userid=$_SESSION['frontuserid'];
$today=date('Y-m-d');
if($category=='parity')
{?>
        <div class="containerrecord text-center">
    <p> <i class="icon ion-md-trophy"></i> <div class="title"><b>Live Results</b></div> </p>
        </div>
        
        <div class="table-container" id="paritycontainer">
        <table class="table text-center" id="parityt">
        <thead class="thead-dark">
        <tr>
        <th><b>Period</b></th>
        <th><b>Number</b></th>    
        <th><b>Result</b></th>
        </tr>
        </thead>
        <tbody>
        <?php
 $parityrecordQuery=mysqli_query($con,"select * from `tbl_result` where `tabtype`='parity' order by id desc limit 480");
 $parityrecordRow=mysqli_num_rows($parityrecordQuery);
 if($parityrecordRow==''){?>
 <tr>
        <td colspan="5">
        <div style="display: flex;">
        <div class="spacer"></div>
        <div>No data available !</div>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php 
		}else{
		while($parityResult=mysqli_fetch_array($parityrecordQuery)){
			if($parityResult['resulttype']=='real'){
			?>
        <tr>
        <td><?php echo $parityResult['periodid'];?></td>
        <td><span style="color:<?php if($parityResult['color']=='green'){echo"#008d43";}else if($parityResult['color']=='red'){echo"#ff1100";}else if($parityResult['color']=='red+violet'){echo"#ff1100";}else if($parityResult['color']=='green+violet'){echo"#008d43";}?>;"><?php echo $parityResult['result'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($parityResult['color']=='green'){ ?>
        <div class="point green" style="background:#008d43;"></div>
        <?php }else if($parityResult['color']=='red'){?>
        <div class="point red" style="background:#ff1100;"></div>
        <?php }else if($parityResult['color']=='red+violet'){?>
         <div class="point" style="background:#ff1100;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($parityResult['color']=='green+violet'){?>
 <div class="point" style="background:#008d43;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }else if($parityResult['resulttype']=='random'){?>
        <tr>
        <td><?php echo $parityResult['periodid'];?></td>
        
        <td><span style="color:<?php if($parityResult['randomcolor']=='green'){echo"#008d43";}else if($parityResult['randomcolor']=='red'){echo"#ff1100";}else if($parityResult['randomcolor']=='red++violet'){echo"#ff1100";}else if($parityResult['randomcolor']=='green++violet'){echo"#008d43";}?>;"><?php echo $parityResult['randomresult'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($parityResult['randomcolor']=='green'){ ?>
        <div class="point green" style="background:#008d43;"></div>
        <?php }else if($parityResult['randomcolor']=='red'){?>
        <div class="point red" style="background:#ff1100;"></div>
        <?php }else if($parityResult['randomcolor']=='red++violet'){?>
         <div class="point" style="background:#ff1100;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($parityResult['randomcolor']=='green++violet'){?>
 <div class="point" style="background:#008d43;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }?>
        <?php }}?>
         </tbody>
          </table>
        </div>
        <div class="containerrecord text-center mt-1">
        
    <p>
    <i class="icon ion-md-paper"></i> <div class="title"><b>My Order Records</b>
    </div> 
    </p>
    
        </div>
         
         
         
         <div class="table-container">
        <table class="table table-borderless" id="myrecordparityt">
        <thead><tr><th></th></tr></thead>    
    <tbody>
        <div id="paritywait"></div>
    <?php
  $userResultQuery=mysqli_query($con,"select *,(select `result` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultnumber,(select `color` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultcolor from `tbl_userresult` where `userid`='".$userid."' and `tab`='parity' and date(`createdate`)='".$today."' order by id desc limit 480");
  while($userResult=mysqli_fetch_array($userResultQuery)){
	  $post_date = $userResult['createdate'];
 $post_date2 = strtotime($post_date);
 $convert=date('Y-m-d H:i',$post_date2);
	?>
        <tr data-toggle="collapse" data-target="#accordion<?php echo($userResult['id']);?>" class="clickable" style="border-bottom:1px solid #ccc;">
            <td class="pl-3" style="border:none;">
            <?php echo ($userResult['periodid']);?> <span style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"> <?php echo ucfirst($userResult['status']);?> <?php if($userResult['status']=='success'){echo"+";}else{echo"-";}?><?php echo number_format($userResult['paidamount'],2);?></span>
            <div id="accordion<?php echo($userResult['id']);?>" class="detail collapse mt-1 mb-1 p-1" style="padding:0px 30px;">
                <span style="color:#1DCC70"> Period Detail</span>
         <div class="mt-1" style="display: flex;">
        <div class="point2">Periodid</div>
        <div class="point2"><?php echo ($userResult['periodid']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Money</div>
        <div class="point2"><?php echo number_format($userResult['amount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Count</div>
        <div class="point2">1</div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Delivery</div>
        <div class="point2"><?php echo number_format($userResult['amount']-$userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Fee</div>
        <div class="point2"><?php echo number_format($userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Result</div>
        <div class="point2" style="color:#1DCC70"><?php echo $userResult['resultnumber'].' ';
		$tt=explode("+",$userResult['resultcolor']); echo ucwords(implode(" + ",$tt));?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Select</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"><?php echo $userResult['value'];?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Status</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php echo ucfirst($userResult['status']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Amount</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php if($userResult['status']=='success'){echo"+";}else{echo"-";} echo number_format($userResult['paidamount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Create Time</div>
        <div class="point2"><?php echo $convert;?></div>
        </div>
                </div>
            </td>
        </tr>
        <?php }?>
    </tbody>
</table>
        </div>
    
 <?php }?>