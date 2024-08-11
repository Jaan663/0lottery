<!doctype html>
<html lang="en">
   
<head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>WinMoney</title>
<link rel="icon" href="images1/logo1.html"/><link rel="shortcut icon" href="images1/favicon.ico" type="image/x-icon">
      <link rel="stylesheet" href="assets1/css/style1.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
      <link href="maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.html" rel="stylesheet"/>
      <link href="assets/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
      <meta name="description" content="">
      <meta name="keywords" content="" />
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
         .appContent3 .back{
         position: absolute;
         top: 5%;
         left: 0.6rem;
         height: 30px;
         }
         .appContent3 .logo{
         position: absolute;
         top: 45%;
         right: 1rem;
         height: 45px;
         }
         .appContent1{
         padding: 0.66667rem 0.8rem;
         background-color: #fff;
         }   
         .inner-addon{
         border: 2px solid #FBCCCA;
         border-radius:10px;
         }
         .inner-addon .icon{
         padding:15px 12px;
         font-size: 22px;
         }
         .inner-addon a{
         float:right;
         margin-top:-45px;
         }
         /*.left-addon.custom-left  input{*/
         /*    padding-left:40px;*/
         /*}*/
         .number-img img{
         position: absolute;
         height:22px;
         top: 12px;
         left: 13px
         }
         .number-img .width{
         position: absolute;
         width:22px;
         height:22px;
         top: 12px;
         left: 13px
         }
         .textbox1{
         margin-left:30px;
         }
         .textbox2
         {
         margin-left:5px;
         }
         .textbox {
         box-shadow: 0px 0px;
         height: auto;
         width:auto;
         color: #fff;
         outline: none;
         border: none;
         border-radius: 8px;
         font-size: 17px;
         font-weight: 400;
         cursor: pointer;
         transition: all 0.4s ease;
         }
         button:focus {
         outline: none;
         }
         .textbox:focus{
         background:transparent      
         }
         .appHeader1 {
         width: 100%;
         background-image: linear-gradient(90deg,#cd0103,#f64841);
         color: #fff;
         z-index: 999;
         padding: 0 24px;
         height:55px;
         }
         .appHeader1 .back{
         position: absolute;
         top: 23%;
         left: 0.6rem;
         height: 30px;
         }
         .appHeader1 .pageTitle {
         padding-top:18px;
         font-size: 21px;
         font-weight: 400;
         letter-spacing: .02em;
         color:#fff;
         }
         .btn-otp{
         width: 30%;
         height: 45px;
         padding: 0 30px;
         line-height: 46px;
         border-radius: 7px;
         border: 0;
         text-align: center;
         display: block;
         background-color: #f9e8e8;
         border-color: #f9e8e8!important;
         font-size: 16px;
         color: rgba(0,0,0,.87);
         }
         .btn-otp:hover{
         color: rgba(0,0,0,.87);
         border:none;
         }
         .submitbtn{
         border-radius: 25px; height:45px; font-weight: 400; font-size: 21px;  font-size:18px;
         width: 65%;
         margin: 0 auto;
         border: 1px solid #DD1D1C;
         color: #fff;
         background-color: #DD1D1C;
         box-shadow: 0 0 4px 3px #FAA29F / 40%);
         }
         .textbox5
         {
         box-shadow:none;
         border: 2px solid #FAA29F;
         border-radius:8px;
         }
         .submitbtn{
         border-radius: 25px; height:45px; font-weight: 400; font-size: 21px;  
         width: 90%;
         margin: 0 auto;
         border: 1px solid #5cba47;
         color: #fff;
         background-color: #5cba47;
         box-shadow: 0 0 4px 3px rgb(92 186 71 / 60%);
         }
         .submitbtn:hover{
         color: #fff;}
         .registerback
         {
         border-radius: 25px;
         padding:10px 35px;
         font-weight: 400; 
         font-size: 16px;  
         margin: 0 auto;
         border: 1px solid #5cba47;
         color: #5cba47;
         background-color: white;
         }
         .registerback:hover{
         color: #5cba47;
         }
         .parent{
         text-align:center;
         display: flex;
         width:100%;
         }
         .child{
         width: 50%;
         float: left;
         flex: 1;
         padding:15px 10px 0px 15px;
         font-size: 19px;
         border-top: 1.50px solid #f7f7f7;
         }
         button:focus{
         outline:none;
         }
         .child button {
         color: #2C3E50;
         border:none;
         padding:0 20px;
         font-weight:500;
         background: transparent;
         text-align:center;
         }
         .child .colour {
         color: #6ABE57;
         }
         .tz_title{
             padding:10px 0;
         font-size: 16px;
         font-weight:400;
         color:rgb(70,85,101);
         }
         .banner{
         background: url(images1/myProfilebg.png) no-repeat 0 0;
         background-size: 100% auto;
         position: relative;
         height:80px; 
         }
         .container{
         padding-top:5px;
         }
         .modal-content{ border-radius:15px;}
         .submitbtn{
         border-radius: 25px; height:45px; font-weight: 400; font-size: 21px;  
         width: 90%;
         margin: 0 auto;
         border: 1px solid #5cba47;
         color: #fff;
         background-color: #5cba47;
         box-shadow: 0 0 4px 3px rgb(92 186 71 / 60%);
         }
      </style>
   </head>
   <body>
       <?php include("include/connection.php");?>
            <!-- App Header --><div class="mainLayout">
      <div class="appHeader1">
         <div class="left">
            <a href="/" class="icon goBack"> <img  src="assets1/img/back.png" class="back"> </a>
         </div>
         <div class="pageTitle">Reset Password</div>
      </div>
      <!-- * App Header --> 
      <!-- App Capsule -->
      <div id="appCapsule">
         <div class="appContent1 mb-2">
            
             <form action="#" id="forgotform">
      <div class="inner-addon left-addon"> <i class="icon ion-md-phone-portrait"></i>
        <input type="tel" class="form-control" placeholder="Mobile Number" id="fmobile" name="fmobile" onKeyPress="return isNumber(event)">
        <input type="hidden" name="type" id="type" value="chkmobile">
      </div>
      <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary" style="width:264px;"> Continue </button>
      </div>
    </form>
            
         </div>
      </div>
   
     <div id="otpform" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content ">
      <div class="modal-body">
    <!--<button type="button" id="otpclose" class="close" data-dismiss="modal" aria-label="Close">
       <span aria-hidden="true">×</span></button>-->
       <p><strong>Plese Enter OTP</strong></p>
        <div class="pt-2">
   <form action="#" method="post" id="otpsubmitForm">
  <input type="tel" id="otp" name="otp" class="form-control" placeholder="Enter OTP" onKeyPress="return isNumber(event)" >
     <input type="hidden" id="userid" name="userid" value="">
      <input type="hidden" name="type" id="type" value="otpval">
      <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary" style="width:264px;"> Submit OTP </button>
        </div>
        </form>          
        </div>
      </div>
    </div>
  </div>
</div>
<div id="registertoast" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content ">
      <div class="modal-body">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
       <span aria-hidden="true">×</span></button>
        <div class="text-center" id="regtoast">          
        </div>
      </div>
    </div>
  </div>
</div>
<div id="alert" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body" id="alertmessage"> </div>
      <div class="text-center pb-1">
    <a type="button" class="text-info" data-dismiss="modal">OK</a>
    </div> 
    </div>
  </div>
</div></div>
<!-- appCapsule --><div class="appBottomMenu">
  <div class="item <?php if($urlpage=='index.php'){echo'active';}?>"> <a href="index.php">
    <p> <i class="icon ion-ios-home"></i> <span>HOME</span> </p>
    </a> </div>
  
   <?php if(isset($_SESSION['frontuserid'])){?>
    <div class="item <?php if($urlpage=='gamedashboard.php'){echo'active';}?>"> <a href="gamedashboard.php">
    <p> <i class="icon ion-logo-game-controller-b"></i> <span>WIN GO</span> </p>
    </a> </div>
    
    <div class="item <?php if($urlpage=='promotion.php'){echo'active';}?>"> <a href="promotion.php">
    <p> <i class="icon ion-ios-share"></i> <span>EARN</span> </p>
    </a> </div>
    
    <div class="item <?php if($urlpage=='login.php' || $urlpage=='signup.php' || $urlpage=='forgot-password.php' || $urlpage=='myaccount.php' || $urlpage=='recharge.php' || $urlpage=='transactions.php'){echo'active';}?>"> <a href="myaccount.php" class="icon toggleSidebar">
    <p> <i class="icon ion-ios-person"></i> <span> ACCOUNT </span> </p>
    </a> </div>
    <?php }else{?>
  <div class="item <?php if($urlpage=='login.php' || $urlpage=='signup.php' || $urlpage=='forgot-password.php'){echo'active';}?>"> <a href="login.php" class="icon toggleSidebar">
    <p> <i class="icon ion-ios-person"></i> <span> LOGIN </span> </p>
    </a> </div>
    <?php }?>
</div>

<!-- Jquery --> 
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
  <script src="assets/js/jquery.validate.min.js"></script>
  <script src="assets/js/forgot-password.js"></script>
      <script src="home1/assets/js/jquery-3.4.1.min.js"></script> 
      <!-- Bootstrap--> 
      <script src="home1/assets/js/popper.min.js"></script> 
      <script src="home1/assets/js/bootstrap.min.js"></script> 
      <!-- Owl Carousel --> 
      <script src="home1/assets/js/owl.carousel.min.html"></script> 
      <!-- Tween Max -->
      <script src="home1/assets/js/tweenmax.js"></script> 
      
      
      <script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/account.js"></script>

       <script>
       
      
      
      <script>
         $(function(){
           $('#registertoast').on('show.bs.modal', function(){
               var registertoast = $(this);
               clearTimeout(registertoast.data('hideInterval'));
               registertoast.data('hideInterval', setTimeout(function(){
                   registertoast.modal('hide');
               }, 2000));
           });
           
           
           
         });
         
      </script>
   </body>

</html>