<!doctype html>
<html lang="en">
   
<head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>WinMoney</title>

      <link rel="shortcut icon" href="images1/favicon.ico" type="image/x-icon">
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
</style>
      <style>
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
         <div class="pageTitle">Login</div>
      </div>
      <!-- * App Header --> 
      <!-- App Capsule -->
      <div id="appCapsule">
         <div class="appContent1 mb-2">
            <form action="#" id="loginForm" method="post" class="card-body" autocomplete="off">
               <p style="color:#959595; font-size:16px; font-weight:400;padding-bottom:10px;">  </p>
               
               
               <div class="inner-addon left-addon custom-left">
                  <div class="number-img">
                     <img src="images1/mobile.png">
                  </div>
                  
                  <input type="tel" style="" value="" id="login_mobile" name="login_mobile"  class="form-control textbox textbox2"  placeholder="Mobile" onKeyPress="return isNumber(event)" maxlength="10">
               </div>
               
               <div class="inner-addon left-addon custom-left mt-3">
                  <div class="number-img">
                     <img src="images1/lock.png">
                  </div>
                 
               <input type="text" style="-webkit-text-security: square;" onkeypress="changeinputformat(this.id)" value="" id="login_password" name="login_password" class="form-control textbox textbox2" minlength="5"  placeholder="Password">
               
               </div>
               
               
               <input type="hidden" name="action" value="login">
               <div class="text-center mt-3" style="">
                     <button type="submit" class="btn submitbtn" >Login</button>
                  </div>
               
                                 <div class="text-center mt-3" style="">
                     <a href="signup" class="registerback">Dont have an account, Sign Up~</a>
                  </div>
                <div style="font-size:17px; color: red;font-weight:400; " class="text-center mt-2"> <a style="color: red;" href="forgot-password">Forgot Password</a> </div>
               
         </div>
         </form>
         </div>
      </div>
   
      <!-- appCapsule -->
      <div id="registerthanksPopup" class="modal modalred fade" role="dialog" >
         <div class="modal-dialog regLog" role="document">
            <div class="modal-content regContent">
               <div class="modal-body">
                  <span class="text-center">Success</span>
               </div>
            </div>
         </div>
      </div>
      <div id="registertoast" class="modal modalred fade1" role="dialog">
         <div class="modal-dialog regLog" role="document">
            <div class="modal-content regContent">
               <div class="modal-body">
                  <div class="text-center" id="regtoast">
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      
      </div>
      
      <div class="appBottomMenu">
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


<style>
         .regLog{
         width: fit-content;
         margin: 0 auto;
         display: table;
         }
         .regContent {
         margin: 0 auto;
         padding: 0 !important;
         color: #fff;
         font-size: 15px;
         background-color: rgba(50, 50, 51, .88);
         border-radius: 2px;
         }
         .fade1 {
         -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
         animation: fadein 0.5s, fadeout 0.5s 2.5s;
         }
         @-webkit-keyframes fadein {
         from {bottom: 0; opacity: 0;} 
         to {bottom: 30px; opacity: 1;}
         }
         @keyframes fadein {
         from {bottom: 0; opacity: 0;}
         to {bottom: 30px; opacity: 1;}
         }
         @-webkit-keyframes fadeout {
         from {bottom: 30px; opacity: 1;} 
         to {bottom: 0; opacity: 0;}
         }
         @keyframes fadeout {
         from {bottom: 30px; opacity: 1;}
         to {bottom: 0; opacity: 0;}
         }
         .modalred-backdrop{
         background-color: transparent;
         }
         .modalred{
         top:48%;
         }
        
      </style>
<!--Privacy policy page End here-->
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