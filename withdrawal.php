<?php 
ob_start();
session_start();
if($_SESSION['frontuserid']=="")
{header("location:login.php");exit();}?>
<!DOCTYPE html>

<!--**********************************

Script : Colour Prediction Game.
By : QuickDigitalize.com
Email : quickdigitalize@gmail.com
Call : +91 8355965199

**********************************-->


<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="google" content="notranslate"/>
        <title>WinMoney </title>
        <link rel="icon" href="assets/img/fevicon.png">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

        <!-- <link rel="stylesheet" href="assets/css/style.css"> -->
        <link rel="stylesheet" href="assets/css/withdrawal.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Withdrawal</title>
        <style type="text/css">
            li {list-style-type: none;}
            .appHeader1 .left .icon i, .appHeader1 .right .icon i {font-size: 26px;}
            .appHeader1 .left .icon, .appHeader1 .right .icon {width: 56px; height: 56px; color: #fff; display: -webkit-box; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center; } 

            .appHeader1 .left {left: 0;right: auto;}
            .appHeader1 .left {position: absolute; top: 0; -webkit-transition: 0.2s all; transition: 0.2s all; height: 56px; min-width: 56px; display: -webkit-box; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center; }
            .appHeader1 .left .icon {width: 56px; height: 56px; color: #fff; display: -webkit-box; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center; }
            .appHeader1 .left .icon {width: 56px; height: 56px; color: #fff; display: -webkit-box; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center; } 
        </style>
    </head>
    <body>

        <?php include("include/connection.php");
            $userid=$_SESSION['frontuserid'];
        ?>
   <div class="appHeader1" style="box-shadow:none;background-color:#e0041e !important">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Make Withdrawal</div>
  </div>
  
 
</div>
        
        <div class="container">
            <div class="row" style="margin-top:20px;">
                <div class="col-lg-6 offset-lg-3">
                    <div class="p-2 border">
                        <!--<h4 class="d-flex justify-content-center"><b><u>Withdraw Your Money</b></u></h4>-->
                        <h6 class="text-center m-2 current-balance" style="color: #04aa6d;font-weight: bold;border: 1px solid #04aa6d;padding: 10px;">
                            Current Balance : <b><span>₹ <?php echo number_format(wallet($con,'amount',$userid), 2);?></span></b></h6>
                        <h6 class="text-center m-2" style="color:red;font-weight:bold;border:1px solid red;padding:10px;">
                        Minimum Withdrawal : ₹ 500.00
                        </h6>
                        
                            <form action="#" id="paymentForm" method="post" class="card-body" autocomplete="off">
                                
                            <div class="mb-3">
                                <li><b><label for="Withdrwal-amt" style="margin-bottom: 5px">Enter Withdrawal Amount</label></b></li>
                                <div class="input-group">
                                    <div class="input-group-text"><i class="fa fa-money"></i></div>&nbsp;
                                    <input type="number" id="userammount" name="userammount" class="form-control" onKeyPress="return isNumber(event)"/>
                                </div> 
                            </div>
                            
                            <div class="mb-3">
                                     <li><b><label for="payout" style="margin-bottom: 5px">Select Payout Option</label></b></li>
                        <label class="btn btn-outline-primary ml-1">
                            <input type="radio" name="optionsname" id="option2" value="bank" onChange="paytype(<?php echo $userid?>,'bank')">
                            <!-- <i class="icon ion-md-checkmark"></i>&nbsp; -->
                            Bank Account
                        </label>
                        <label class="btn btn-outline-primary ml-1">
                            <input type="radio" name="optionsname" id="option2" value="bank" onChange="paytype(<?php echo $userid?>,'upi')">
                            <!-- <i class="icon ion-md-checkmark"></i>&nbsp; -->
                        UPI ID</label><br>
                            
                        <div class="mb-3">
                        <li><b><label for="payout" style="margin-top: 20px;margin-bottom: 5px;">Choose Your Bank</label></b></li>
                            <select class="form-control select2" name="acid" id="acid" style="padding-left:45px;">
                                <option value="">Select Bank</option>
                                <input type="hidden" name="userid" value="<?php echo $userid;?>">
                                <input type="hidden" name="action" value="withdrawal">
                            </select>
                                </div>
                                
                             <div class="mb-3">
                                <li><b><label for="payout" style="margin-bottom: 5px;">No Bank Account Found ! Add here</label></b><br></li>
                                <a class="btn btn-primary" href="addbankdetail.php" role="button" style="font-size: 12px;background-color: #226371;border-color: #226371;" target="popup"onclick="window.open('addbankdetail.php','popup','width=600,height=600'); return false;">Add Bank</a>
                                 <a class="btn btn-primary" href="addupidetail.php" role="button" style="font-size: 12px;background-color: #226371;border-color: #226371;" target="popup"onclick="window.open('addupidetail.php','popup','width=600,height=600'); return false;">Add UPI ID</a>
                                <!--<a class="btn btn-primary" href="addbankdetail.php" role="button" style="font-size: 12px;background-color: #226371;border-color: #226371;">Add Bank</a>-->
                                <!--<a class="btn btn-primary" href="addupidetail.php" role="button" style="font-size: 12px;background-color: #226371;border-color: #226371;">Add UPI ID</a>-->
                            </div>
                            
                            <div class="mb-3">
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-secondary">Withdrawal Now</button>
                                    <br><br>
                                    <!-- <div class="container d-flex justify-content-center">
                                        <a href="withdrawalrecord.php" class="" badge="" bg-info="" style="color: red;font-weight: bold;text-decoration: none;">
                                            Recent Withdrawal Record
                                        </a>
                                </div> -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
<?php include("include/footer.php");?>
        
<div id="alert" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body" id="alertmessage"> </div>
      <div class="text-center pb-1">
    <a type="button" class="text-info" data-dismiss="modal">OK</a>
    </div> 
    </div>
  </div>
</div>
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/withdrawal.js.php"></script>
<script>
function paytype(userid,type)
{
//alert(userid);
var dataString = 'userid='+ userid+ "& type=" + type;
$.ajax
({
type: "POST",
url: "ajax_bankdetail.php",
data: dataString,
cache: false,
success: function(html)
{ //alert(html);
$("#acid").html(html);
} 
});	
	}
</script>
        </body>
</html>