<?php 
ob_start();
session_start();
if($_SESSION['frontuserid']=="")
{header("location:login.php");exit();}?>

<!doctype html>

<!--**********************************

Script : Colour Prediction Game.
By : QuickDigitalize.com
Email : quickdigitalize@gmail.com
Call : +91 8355965199

**********************************-->


<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php include'head.php' ?>

<link rel="stylesheet" href="assets/css/style.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="Bitter Mobile Template">
<meta name="keywords" content="bootstrap, mobile template, bootstrap 4, mobile, html, responsive" />
<style>
   .mainLayout {
    width: 384px !important;
    background-color: #fafbfc;
    position: relative;
	margin: 0 auto;
}
/* media query */
@media screen and (max-width:468px){
    
    .mainLayout {
        padding: 0 !important;
        margin: 0 !important;
        width: 100% !important;
    } 
</style><style>

.appHeader1 {
	background-color: #fff !important;
	border-color: #fff !important;
}

* {
  box-sizing: border-box;
}
/* Create two equal columns that floats next to each other */
.column1 {
    padding-left: 15px;
    padding-right: 15px;
    width: calc(100% / 3);
    float: left;
   /* Should be removed. Only for demonstration */
}
/* Clear floats after the columns */
.row1:after {
  content: "";
  display: table;
  clear: both;
      margin-bottom: -0.50cm;
}
/* Create two equal columns that floats next to each other */
.column {
  float: center;
  width: calc(100% / 2);
   /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.appContent3 {
	background-color: #ffb700 !important;
	border-color: #ffb700 !important;
	padding:20px;
	font-size:16px;
    border-radius: 20px 20px 20px 20px;
	box-shadow: 0 4px 8px 0 rgb(0 0 0 / 21%);
}
.user-block img {
	width: 40px;
	height: 40px;
	float: left;
	margin-right:10px;
		margin-top:-10px;
	background:#333;
}
.img-circle {
	border-radius: 50%;
}
.accordion .btn-link {
	box-shadow:none;
	padding:8px !important;
	margin:0px 0px;
	color: #333 !important;
	font-size: 17px;
	font-weight: normal;
	border-top:solid 1px #ccc;
}
.accordion .collapsed {
	border:none;
}
.accordion .show {
	border-bottom:solid 1px #ccc;
}
.accordion .sub-link {
	box-shadow:none;
	padding:8px !important;
	color: #333 !important;
	font-size: 14px;
	font-weight: normal;
	display:block;
}
.accordion .sub-link:hover {
color:#00F !important;
}
.accordion .btn-link:hover {
	background:#F5F5F5;
}
.accordion .btn-link {
	position: relative;
}
.btn3 {
   background-color: #FFD700;
    border-radius: 15px 15px 15px 15px;
    border: 1px solid white;
  padding-bottom: 4px;
  padding-top: 4px;
  padding-left: 25px;
  padding-right: 25px;
    transition: 0.5s;
    
}
 .accordion .btn-link::after {
 content: "\f105";
 color: #333;
 top: 8px;
 right: 9px;
 position: absolute;
 font-family: "FontAwesome";
 font-size:24px;
}
.btn1 {
    border-radius: 15px 0px 15px 0px;
    border: 2px solid white;
  padding-bottom: 4px;
  padding-top: 4px;
  padding-left: 25px;
  padding-right: 25px;
    transition: 0.5s;
    
}
.right{
    float:right;
}
.btn2 {
    border-radius: 5px 05px 5px 5px;
    border: 2px solid white;
  padding-bottom: 4px;
  padding-top: 4px;
  padding-left: 30px;
  padding-right: 30px;
    transition: 0.5s;
    
}

 .accordion .btn-link[aria-expanded="true"]::after {
 content: "\f106";
}
.light{
    height: 24px;
    padding: 0px 0px;
	margin: 5px 2px;
	border-radius: 20px;
width: 24px;}
.light1{
    height: 26px;
    padding: 0px 0px;
	margin: 5px 2px;
	border-radius: 20px;
width: 26px;}

.vcard {
    box-shadow:none;
}


</style>
</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];?>

<!-- * Page loading --> 

<!-- App Header -->
<div class="mainLayout">

<div class="appHeader1" style="box-shadow:none;background-color:#e0041e !important">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Bank Card</div>
  </div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule" class="pb-2">
  <div class="appContent1 pb-5">
    <ul class="nav nav-tabs size2" id="myTab3" role="tablist">
        <li class="nav-item"> 
<a class="nav-link active" id="home-tab3" data-toggle="tab" href="#bank" role="tab">Bank Account</a>

        </li>
        
      </ul>
      <div class="mt-1">
      <div class="tab-content" id="myTabContent">
      <!--=========================tab-1========================================-->
        <div class="tab-pane fade active show" id="bank" role="tabpanel">
        <div class="text-left pr-1">
            <a href="addbankdetail.php" class="btn btn-primary" style="width: 100%;">
                <i class="fa fa-plus"></i>&nbsp; Add Bank
            </a>
        </div>
        <div class="text-right pr-1">
        <a href="addupidetail.php" class="btn btn-primary" style="width: 100%;">
            <i class="fa fa-plus"></i>&nbsp; Add UPI</a>
        </div>
        <?php
            $selectBankQuery=mysqli_query($con,"select * from `tbl_bankdetail` where `userid`='".$userid."' and `type`='bank'");
            $bankRows=mysqli_num_rows($selectBankQuery);
            if($bankRows!=''){
                while($bankResult=mysqli_fetch_array($selectBankQuery)){
		?>
        <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title"><em><?php echo $bankResult['bankname'];?></em> </h5>
                    <p class="text-primary"><strong><?php echo $bankResult['account'];?></strong></p>
                    <p><?php echo $bankResult['ifsc'];?></p>
                    <p><?php echo $bankResult['name'];?></p>
                    <p><?php echo $bankResult['mobile'];?></p>
                    <p><?php echo $bankResult['email'];?> <a href="javascript:void(0);" class="text-danger pull-right" onClick="delete_row(<?php echo $bankResult['id'];?>)"><i class="fa fa-trash"></i></a></p>
                    
                </div>
            </div>
            
        <?php }}else{?>

        <?php } ?>
        
        </div>
        
        <!--=========================tab-1 end========================================-->
        <!--=========================tab-2========================================-->
        
        <?php
            $selectupiQuery=mysqli_query($con,"select * from `tbl_bankdetail` where `userid`='".$userid."' and `type`='upi'");
            $upiRows=mysqli_num_rows($selectupiQuery);
            if($upiRows!=''){
                while($upiResult=mysqli_fetch_array($selectupiQuery)){
		?>
        
            
        <?php } }else{ ?>

            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">No record found...</h5>
                </div>
            </div>
        
        <?php } ?>
        
        </div>

        </div>
      </div>
  </div>
</div>
<!-- appCapsule -->

<?php include("include/footer.php");?>

<div id="confirm" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body"> Are you sure you want to delete?</div>
      <input type="hidden" id="deleteid" name="deleteid" value="">
      <div class=" text-center pb-1">
    <a type="button" class="btn btn-sm bg-danger text-light" onClick="deletedetail();">YES</a>
    <a type="button" class="btn btn-sm btn-primary text-light" data-dismiss="modal">NO</a>
    </div> 
    </div>
  </div>
</div></div>
<!-- Jquery --> 
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
<script type="text/javascript">
 function delete_row(Id) {
 $('#confirm').modal({backdrop: 'static', keyboard: false})  
     $('#confirm').modal('show');
     $('#deleteid').val(Id);

       }

function deletedetail() {
var Id=$('#deleteid').val();
//alert(Id);
           
               $.ajax({
                   type: "Post",
                  data:"id=" + Id + "& type=" + "delete" ,
                   url: "addbankcardNow.php",
                   success: function (html) { 
                      if(html==1){
                     window.location = '';
					  }
					  else if(html==0){
						  alert("Some Technical Problem");
						  
						  }
                   },
                   error: function (e) {
                   }
               });
           }

</script>
</body>
</html>