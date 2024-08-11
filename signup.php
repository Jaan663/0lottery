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
         <div class="pageTitle">Register</div>
      </div>
      <!-- * App Header --> 
      <!-- App Capsule -->
      <div id="appCapsule">
         <div class="appContent1 mb-2">
            <form action="#" method="post" id="Register" class="card-body" autocomplete="off">
               <p style="color:#959595; font-size:16px; font-weight:400;padding-bottom:10px;">   </p>
               
               <div class="inner-addon left-addon custom-left">
                  <div class="number-img">
                     <img src="images1/mobile.png">
                  </div>
                  
                  <input type="tel" name="mobile" id="mobile"  class="form-control textbox textbox2"  placeholder="Mobile" onKeyPress="return isNumber(event)" maxlength="10">
                  <a href="javascript:void(0);" class="btn-otp" id="reg_otp" onClick="mobileveryfication();">OTP</a>
               </div>
       <input type="hidden" value="colours@gmail.com" name="email" id="email" class="form-control" placeholder="Email-id">
               <div class="inner-addon left-addon custom-left mt-3">
                  <div class="number-img">
                     <img src="images1/lock.png">
                  </div>
                  <input type="password" name="password" id="password" class="form-control textbox textbox2"  placeholder="Password">
               </div>
               <div class="inner-addon left-addon custom-left mt-3">
                  <div class="number-img">
                     <img class="width" src="images1/refer.png">
                  </div>
                
                <input type="text" name="rcode" id="rcode" class="form-control textbox textbox2"  placeholder="Recommendation Code" value="<?php echo @$_GET['code'];?>">
               </div>
               <input type="hidden" name="ip" value="157.34.40.6">
               <input type="hidden" name="action" value="register">
               <div class="form-group row mt-3 mb-3">
                  <div class="col-12">
                     <div class="custom-control custom-checkbox">
                        <input type="checkbox" style="background:red" checked class="custom-control-input" id="remember" name="remember">
                        <label  style="color:white" class="custom-control-label text-muted" for="remember">I Agree <a  style="color:red" data-toggle="modal" href="#privacy" data-backdrop="static" data-keyboard="false">PRIVACY POLICY</a></label>
                     </div>
                  </div>
               </div>
               <div>
                  <div class="text-center mt-3" style="">
                     <button type="submit" class="btn submitbtn" >Register</button>
                  </div>
                  <div class="text-center mt-3" style="">
                     <a href="login" class="registerback">Already have an account, log in~</a>
                  </div>
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
      <div id="privacy" class="modal fade" role="dialog">
         <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 style="font-weight:normal;">Privacy Policy</h5><a class="pull-left" data-dismiss="modal"><strong>CLOSE</strong></a>
               </div>
               <div class="modal-body responsive">
                  <div>
<div>
<h2>Privacy Policy</h2>

<p>This document is an electronic record in terms of Information Technology Act, 2000 and rules there under as applicable and the provisions pertaining to electronic records in various statutes as amended by the Information Technology Act, 2000. This electronic record is generated by a computer system and does not require any physical or digital signatures to make the terms of this policy binding.</p>

<p>&nbsp;</p>

<p>At Our shop sites data protection is a matter of trust and your privacy is very important to us. We use your personal information only in the manner set out in this Privacy Policy. Please read this privacy policy to learn more about our information gathering and dissemination practices.</p>

<p>&nbsp;</p>

<p>The privacy practices of this statement apply to our services available under the domain and sub-domains of Our shop sites (the &quot;Site&quot;) and apply generally to our parent, affiliates, subsidiaries or joint venture websites. By visiting the Site you agree to be bound by the terms and conditions of this Privacy Policy.</p>

<p>&nbsp;</p>

<p>This Privacy Policy explains how the Site gathers personal information, classified as mandatory or optional as part of the normal operation of our services; and uses, discloses and protects such information through the Site. This detailed privacy policy enables you to take informed decisions in dealings with us. Our parent, subsidiaries and joint ventures operate under similar privacy practices subject to the requirements of applicable law.</p>

<p>&nbsp;</p>

<p>By registering with Our shop sites, you acknowledge your acceptance of the terms of this Privacy Policy, expressly consent to our use and disclosure of your personal information in accordance with this Privacy Policy and that any personal information provided by you through Our shop sites is provided under a lawful contract. This Privacy Policy is incorporated into and subject to the terms of the User Agreement. Note: Our privacy policy is subject to change at any time without notice. To make sure you are aware of any changes, please review this policy periodically.</p>

<p>&nbsp;</p>

<p>Your Privacy</p>

<p>At Our shop sites, we are extremely proud of our commitment to protect your privacy. We value your trust in us. We work hard to earn your confidence so that you can enthusiastically use our services and recommend your friends and family to participate in dealing with us. Please read the following policy to understand how your personal information will be treated as you make full use of our Site.</p>

<p>&nbsp;</p>

<p>Our shop sites Privacy Assurance</p>

<p>Our shop sites promises that we will not sell or rent your personal information to third parties for their marketing purposes without your explicit consent. From time to time we may reveal general statistical information about our Web site and visitors, such as number of visitors, number and type of goods and services purchased, etc. Your trust and confidence is our highest priority.</p>

<p>&nbsp;</p>

<p>Information that Our shop sites collects</p>

<p>When you use our Site, we collect and store your personal information. We gather your personal information in order to record, support and facilitate your participation in the activities you select, track your preferences, to provide you with a customized Site experience, to notify you of any updated information and new activities and other related functions offered by Our shop sites, keep you informed about latest content available on the Site, special offers, and other products and services of Our shop, to assist you with customer service or technical support issues, to follow up with you after your visit, to otherwise support your relationship with Our shop or to prevent fraud and unlawful use. For the aforesaid purpose, we only collect such personal information that we consider relevant to understand you or your interests.</p>

<p>&nbsp;</p>

<p>In general, you can visit the Site without having to provide your personal information during which time you remain anonymous and at no time can we identify you unless you have an account on the Site and log on with your user name and password. Once you provide your personal information, you are no more anonymous to us. To fully use our Site, you will need to register using our online registration form, where you may be required to provide us with your name, date of birth, contact number, email id, user id, password, residence / place of business information, billing information, shipping information, bank account details and other personal information as indicated on the forms throughout the Site. Further the fields are marked as mandatory or optional. You always have the option to not provide information by choosing not to use a particular service or feature on the Site. You may provide us with your Our shop sites registered user ID. We may automatically track certain information about you based upon your behavior on our Site. We use this information to analyze trends, administer the site, track a user&rsquo;s movement and gather broad demographic information, to better understand, protect and serve our users. This information is compiled and analyzed on an aggregated basis. This information may include the URL that you just came from (whether this URL is on our site or not), which URL you next go to (whether this URL is on our site or not), your computer browser information, and your IP address.</p>

<p>&nbsp;</p>

<p>We use data collection devices such as &quot;cookies&quot; on certain pages of the Site to help analyze our web page flow, measure promotional effectiveness, and promote trust and safety. &quot;Cookies&quot; are small files which identify your computer to our server as a unique user when you visit certain pages on the Site and they are stored by your Internet browser on your computer&#39;s hard drive. We offer certain features that are only available through the use of a &quot;cookie&quot;. We also use cookies to allow you to enter your password less frequently during a session. Cookies can also help us provide information that is targeted to your interests. Most cookies are &quot;session cookies,&quot; meaning that they are automatically deleted from your hard drive at the end of a session. You are always free to decline our cookies if your browser permits, although in that case you may not be able to use full functionality of the Site. We only use cookies for your convenience in using the Site and not for obtaining or using any other information about you. We do not control the use of cookies by third parties.</p>

<p>&nbsp;</p>

<p>If you choose to buy or sell on the Site, we collect information about your buying and selling behavior.</p>

<p>&nbsp;</p>

<p>If you are a seller, we also collect some additional information, such as a billing address, banking information other payment instrument details and tracking information from cheques or money orders.</p>

<p>&nbsp;</p>

<p>If you choose to post messages on our message boards, chat rooms or other message areas or leave feedback for other users, we retain this information as necessary to resolve disputes, provide customer support and troubleshoot problems as permitted by law.</p>

<p>&nbsp;</p>

<p>If you send us personal correspondence, such as emails or letters, or if other users or third parties send us correspondence about your activities or postings on the Site, we may collect such information into a file specific to you.</p>

<p>&nbsp;</p>

<p>If you register for the Site on another web site or use a web site providing a service for Our shop or a web site that helps facilitates your activity on the Site, that web site may provide personal information about you and your transactions back to us.</p>

<p>&nbsp;</p>

<p>Device Information</p>

<p>Device attributes: information such as the operating system, hardware and software versions, battery level, signal strength, available storage space, browser type, app and file names and types, and plugins.</p>

<p>Device operations: information about operations and behaviours performed on the device, such as whether a window is foregrounded or backgrounded, or mouse movements (which can help distinguish humans from bots).</p>

<p>Identifiers: unique identifiers, device IDs and other identifiers, such as from games, apps or accounts that you use.</p>

<p>Device signals: Bluetooth signals, information about nearby Wi-Fi access points.</p>

<p>Data from device settings: information that you allow us to receive through device settings that you turn on, such as access to your GPS location, camera or photos.</p>

<p>Network and connections: information such as the name of your mobile operator or ISP, language, time zone, mobile phone number, IP address, connection speed.</p>

<p>Our use of your information</p>

<p>We use your personal information to facilitate the services you request. We do not sell, rent, trade or exchange any personally-identifying information of our Users. We may provide your collected information to our affiliates and service providers under contract (such as customer care, data analytics) to support the operation of the Website and our services. To the extent we use your personal information to market to you, we will provide you the ability to opt-out of such uses. We use your personal information to: resolve disputes; troubleshoot problems; help promote safe trading; collect fees owed; measure consumer interest in the services provided by us, inform you about online and offline offers, products, services, and updates; customize your experience; detect and protect us against error, fraud and other criminal activity; enforce our User Agreement, and in general to improve the user experience and make it comparable to other e-commerce websites; and as otherwise described to you at the time of collection. In our efforts to continually improve our product and service offerings, we collect and analyze demographic, profile and usage data about our users&#39; activity on our Site.</p>

<p>&nbsp;</p>

<p>We use your personal information to improve our platform, improve the Site&#39;s content and product offerings, prevent or detect fraud or abuses of our website and tailor it to meet your needs, so as to provide you with a smooth, efficient, safe and customized experience while using the Site. We may also use your personal information to display contents and services that are targeted to your interests. By accepting the User Agreement and Privacy Policy, you expressly agree to receive this information. If you do not wish to receive these communications, we encourage you to opt out of the receipt of certain communications in your profile under My Account or by clicking unsubscribe any email communication. You may make changes to your profile at any time.</p>

<p>&nbsp;</p>

<p>Our Disclosure of your information</p>

<p>Your personal information is an important part of our business and we are not in the business of selling it to others. Our shop sites shares your personal information only to categories of persons that are either subject to this Privacy Policy or follow practices at least as protective as those described in this Privacy Policy as more particularly described below:</p>

<p>&nbsp;</p>

<p>Advertisements</p>

<p>A. Where a user enters information on any form of an advertiser, the information is simultaneously collected by Our shop sites and the advertiser. The information is used by Our shop sites in accordance with the terms of this privacy policy and is used by the advertiser as per the advertiser&rsquo;s prevalent privacy policies. Since we do not control the privacy practices of these advertisers, you should evaluate their practices before deciding to provide the said information.</p>

<p>&nbsp;</p>

<p>B. Our shop sites may also use personally identifiable information in an aggregated form and disclose to advertisers and other third parties for other marketing and promotional purposes.</p>

<p>&nbsp;</p>

<p>Classifieds Listings</p>

<p>When a user lists a classified advertisement, and the advertisement receives an expression of interest by the interested user, the interested user will be provided the contact information of the user listing the advertisement as provided in the user&#39;s registration form.</p>

<p>&nbsp;</p>

<p>Items and Services offered on the Site by third parties</p>

<p>There are certain items and services for which third parties request for information to perform services on our behalf. (example: an image/picture for a customized mug/t-shirt). The information provided by the user for such purposes is simultaneously collected by Our shop sites and the respective third party. This information is utilized by the third party in accordance with its privacy policy and the terms of the offer. Because we do not control the privacy practices of these third parties, you should evaluate their practices before deciding to use their services.</p>

<p>&nbsp;</p>

<p>Internal Service Providers</p>

<p>We may employ third parties services to facilitate or outsource one or more aspects of the business, product and service operations that we provide to you on the Site (e.g., search technology, discussion boards, bill collection, affiliate and rewards programs, co-branded credit cards) and therefore we may provide some of your personal information to these internal service providers. These internal service providers&#39; are subject to confidentiality agreements with us and other legal restrictions that prohibit their use of your personal information for any other purpose except to facilitate the specific outsourced service.. In the event of your direct involvement with the internal service provider, any additional information disclosed by you to them shall be subject to internal service provider&rsquo;s own applicable privacy policy and Our shop sites shall not be responsible for the same.</p>

<p>&nbsp;</p>

<p>Other Corporate Entities</p>

<p>We share much of our data, including personal information about you, with our parent, affiliates, subsidiaries, and joint ventures that are committed to serving your online trading needs and related services, throughout the world. To the extent that these entities have access to your personal information, they remain bound by the existing Privacy Policy. As we continue to develop our business, we might sell or buy stores, subsidiaries or business units. In such transactions, customer&rsquo;s personal information generally is one of the transferred business assets but remains subject to the promises made in any pre-existing Privacy Policy.</p>

<p>&nbsp;</p>

<p>Legal Requests</p>

<p>We cooperate with law enforcement and regulatory inquiries, as well as other third parties to enforce laws, such as: intellectual property rights, fraud and other rights, to help protect you and the community from bad actors. Therefore, in response to a verified request by law enforcement or other government officials relating to a criminal investigation or alleged illegal activity, we may (and you authorize us to) disclose some of your personal information as is reasonably necessary to respond to subpoenas, court orders, or other legal process. We may disclose personal information to law enforcement offices, third party rights owners, or others in the good faith belief that such disclosure is reasonably necessary to: enforce our Terms or Privacy Policy; respond to claims that an advertisement, posting or other content violates the rights of a third party; or protect the rights, property or personal safety of our users or the general public.</p>

<p>&nbsp;</p>

<p>Your use of other users&#39; information</p>

<p>In order to facilitate interaction among all Our shop sites members (buyers, sellers, services providers such as payment gateways and 3PLs, our Site allows you to access other users&#39; contact information. Further, as a seller you will be sent via email the Our shop sites registered user ID email address and other information, and as a winning buyer you will be sent via email the Our shop sites registered user ID, email address and other information of the seller. By entering into our User Agreement, you agree that, with respect to other user&#39;s personally identifiable information that you obtain through the Site or through a Our shop sites-related communication or Our shop-facilitated transaction, Our shop sites hereby grants to you a license to use such information only for:</p>

<p>&nbsp;</p>

<p>(a). Our shop related communications that are not unsolicited commercial messages, (b). using co-branded services offered through Our shop sites (e.g. insurance, shipping and fraud complaints), and (c). any other purpose that such user expressly opts into after adequate disclosure of the purpose(s).</p>

<p>&nbsp;</p>

<p>In all cases, you must give users an opportunity to remove themselves from your database and a chance to review what information you have collected about them. In addition, under no circumstances, except as defined in this Section, can you disclose personally identifiable information about another user to any third party without our consent and the consent of such other user after adequate disclosure.</p>

<p>&nbsp;</p>

<p>Our shop sites and our users do not tolerate spam. Therefore, without limiting the foregoing, you are not licensed to add a Our shop sites user-even a user who has purchased an item from you-to your mail list (email or physical mail) without their express consent after adequate disclosure.</p>

<p>&nbsp;</p>

<p>What about children&#39;s privacy?</p>

<p>Use of Our shop sites is available only to persons who can form a legally binding contract under the Indian Contract Act, 1872. If you are under the age of 18, you cannot buy or sell any items on the Site. If you wish to purchase or sell an item on the Site such purchase or sale may be made by your legal guardian or parents who have registered as users of the Site.</p>

<p>&nbsp;</p>

<p>Access or change your personally identifiable information</p>

<p>To protect your privacy and security, we will verify your identity before granting access or making changes to your personally identifying information. If you have registered your profile on Our shop sites, your registered user ID and Password are required in order to access your profile information.</p>

<p>&nbsp;</p>

<p>Security</p>

<p>When you place orders or access your account information, we offer the use of a secure server. The secure server software (SSL) encrypts all information you put in before it is sent to us. Once your information is in our possession we adhere to strict security guidelines in compliance with the (Indian) Information Technology Act, 2000, protecting it against unauthorized access.</p>

<p>&nbsp;</p>

<p>Your Consent</p>

<p>By using the Site and/ or by providing your information, you acknowledge our use of your personal information in the manner as set out in this Privacy Policy. Any changes to our privacy policy will be communicated through our Web site at least 10 days in advance of implementation. Name and address of the entity collecting and retaining your information shall be the contracting entity stated in the Our shop sites User Agreement.</p>
</div>
</div>
               </div>
               <div class="modal-footer">
                  <a class="pull-left" data-dismiss="modal"><strong>CLOSE</strong></a>
               </div>
            </div>
         </div>
      </div>
   <div id="otpform" class="modal fade" role="dialog">
     
       <div class="modal-dialog p-2" role="document">
            <div class="modal-content ">
               <div class="modal-body">
                  <button type="button" id="otpclose" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                  <p style="color:#959595; font-size:16px; font-weight:400;">Plese Enter OTP</p>
                  <div class="pt-1">
                     <form action="#" method="post" id="otpsubmitForm">
                        <div class="inner-addon left-addon custom-left mt-3">
                            <div class="number-img">
                               <img src="images1/verify.png">
                            </div>
                            <input type="text" name="otp" id="otp" class="form-control textbox textbox2"  onKeyPress="return isNumber(event)" placeholder="Enter OTP">
                         </div>
                       <input type="hidden" name="type" id="type" value="otpval">
                           <div class="parent">                      <div style="border-radius:0 0 0 15px;" class="child">                         <button  data-dismiss="modal">Cancel</button>                      </div>                      <div style="border-radius:0 0 15px 0; " class="child">                         <button class="colour"  type="submit">Confirm</button>                      </div>                    </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
         </div></div>
         
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