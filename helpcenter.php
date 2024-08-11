
<html lang="en">
   
<head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>WinMoney</title>
<link rel="shortcut icon" href="images1/favicon.ico" type="image/x-icon">
      <link rel="stylesheet" href="assets1/css/style1.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
           <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
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
         top: 40%;
         right: 1rem;
         height: 80px;
         }
         .appContent1{
         position: relative;
         z-index: 9;
         padding: 18px;
         border-radius: 25px 25px 0 0;
         margin-top: -0.53333rem;
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
         /*.left-addon.custom-left  input{*/
         /*    padding-left:40px;*/
         /*}*/
         .number-img img{
         position: absolute;
         height:22px;
         top: 12px;
         left: 13px
         }
         .appContent3{
         position: relative;
         background: url(assets1/img/banner1.png) no-repeat top;
         background-size: cover;
         height:250px;
         }
         .textbox1{
         margin-left:30px;
         }
         .textbox2
         {
         margin-left:5px;
         }
         .textbox
         {
         font-size:17px;
         width:auto;
         }
         .accordion {
         border-radius:10px;}
         .accordion .btn-link {
         box-shadow:none;
         margin:0px 0px;
         color: #333 !important;
         font-size: 16px;
         font-weight: normal;
         }
         .accordion .collapsed {
         background: #fff;
         box-shadow: 0 1px 2px 3px #f0f1f1;
         padding:10px;
         margin-bottom:20px;
         font-size:18px;
         }
         .accordion .show {
         }
         .accordion .sub-link {
         box-shadow:none;
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
         .accordion .btn-link::after {
         content: "\f105";
         color: #545E68;
         top: 18px;
         right: 15px;
         position: absolute;
         font-family: "FontAwesome";
         font-size:30px;
         }
         .imggg{
         width:41px;
         margin-right:10px;
         }
         .accordion .card-header .btn {
         height:auto !important;
         border-radius:7px !important;
         padding:10px 40px 10px 20px;
         display:block;
         width:100%;
         display:block !important;
         text-align:left
         }
      </style>
   </head>
   <body style="background:#F9FAFB">
      <div class="mainLayout">
        <div class="appHeader1">
         <div class="left">
            <a href="/" class="icon goBack" onClick="goBack();"> <img  src="assets1/img/back.png" class="back"> </a>
         </div>
         <div class="pageTitle">Costumer Service</div>
      </div>
     </br>
      <div style="background-image: linear-gradient(to right, white , white);"  id="appCapsule">
         <div style="background:#FDFDFD; " class="appContent1">
            <div class="accordion" id="accordionExample">
               <div class="card-header cardheader">
                  <h3 class="mb-0"> <a href="https://webtechz.co/f/colour-prediction-game-source-code-download" class="btn btn-link collapsed"><img  class="imggg" src="images1/icons/live.png">Buy Source Code</a> </h3>
               </div>
               
                
                <div class="card-header cardheader">
                  <h3 class="mb-0"> <a href="https://wa.me/+918355965199" class="btn btn-link collapsed"><img  class="imggg" src="images1/icons/whatsapp.webp">Whatsapp</a> </h3>
               </div>
               <div class="card-header cardheader">
                  <h3 class="mb-0"> <a href="https://telegram.me/webtechz" class="btn btn-link collapsed"><img  class="imggg" src="images1/icons/telegram.png">Telegram</a> </h3>
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

      <script src="assets1/js/lib/jquery-3.4.1.min.js"></script> 
      <!-- Bootstrap--> 
      <script src="assets1/js/lib/popper.min.js"></script> 
      <script src="assets1/js/lib/bootstrap.min.js"></script> 
      <!-- Owl Carousel --> 
      <script src="assets1/js/plugins/owl.carousel.min.js"></script> 
      <!-- Main Js File --> 
      <script src="assets1/js/app.js"></script>
      <script src="assets1/js/jquery.validate.min.js"></script>
      <script src="assets1/js/account.js"></script>
   </body>

</html>