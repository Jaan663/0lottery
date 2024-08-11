-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2023 at 10:02 AM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daman123`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_title` varchar(500) NOT NULL,
  `material` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_menu`
--

CREATE TABLE `child_menu` (
  `id` int(11) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `child_menu`
--

INSERT INTO `child_menu` (`id`, `p_id`, `child`, `url`, `status`) VALUES
(1, '3', 'Manage Banner', 'manage_banner.php', 1),
(2, '4', 'Privacy Policy', 'privacy.php', 1),
(3, '4', 'Risk Disclosure Agreement', 'riskagreement.php', 1),
(4, '5', 'Manage Product', 'manage_product.php', 1),
(5, '2', 'Manage User', 'manage_adminuser.php', 1),
(6, '2', 'Manage Role', 'manage_role.php', 1),
(7, '2', 'Manage Task', 'manage_task.php', 1),
(8, '6', 'Manage User', 'manage_user.php', 1),
(9, '7', 'Withdrawal Request', 'manage_withdraw.php', 1),
(10, '7', 'Withdrawal Accept', 'manage_withdrawAccept.php', 1),
(11, '7', 'Withdrawal Reject', 'manage_withdrawReject.php', 1),
(12, '8', 'Manage Winner Result', 'set_result_game.php', 1),
(13, '9', 'History For Parity', 'manage_parityhistory.php', 1),
(14, '9', 'History For Sapre', 'manage_saprehistory.php', 1),
(15, '9', 'History For Bcone', 'manage_bconehistory.php', 1),
(16, '9', 'History For Emerd', 'manage_emerdhistory.php', 1),
(17, '10', 'Manage Trade History', 'manage_tradehistory.php', 1),
(18, '11', 'Reward System', 'reward_system.php', 1),
(19, '12', 'Manage Amount', 'manage_amount.php', 1),
(20, '13', 'Manage Recharge', 'manage_recharge.php', 1),
(21, '12', 'Manage Admin Bank', 'manage_admin_upi.php', 1),
(22, '8', 'Manage Winer settings', 'manage_gamewinnersetting.php', 1),
(23, '14', 'Today Profit', 'manage_parityhistory.php', 0),
(24, '15', 'All Queries', 'all_queries.php', 1),
(25, '15', 'Game Mode', 'manage_gamewinnersetting.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `complaint_for` varchar(222) NOT NULL,
  `complaint_subject` longtext NOT NULL,
  `complaint_text` longtext NOT NULL,
  `complaint_reply` longtext NOT NULL,
  `complaint_reply_time` mediumtext NOT NULL,
  `complaint_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `complaint_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL DEFAULT 1,
  `riskagreement` text NOT NULL,
  `privacy` text NOT NULL,
  `rule` text NOT NULL,
  `refund` text NOT NULL,
  `terms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `riskagreement`, `privacy`, `rule`, `refund`, `terms`) VALUES
(1, '<div>\r\n<h3>Chapter 1.Booking/Collection Description</h3>\r\n\r\n<p>Prepayment Booking/Recycling Customer should read and understand the business content carefully before making prepayment bookings (prepayment lock price, payment settlement and shipment) /recovery or repurchase (prepayment lock price, shipping payment) before making prepayment bookings to ROYALWIN</p>\r\n\r\n<p>1. Before making an appointment/restoring the prepayment business, the customer should complete the real name authentication in the mall and ensure that the name, ID number, bank account number, delivery address and other information filled in are true, accurate and valid; Otherwise, the user will be liable for the consequences of false information.</p>\r\n\r\n<p>2. Customers can order gold and silver products in advance at the shopping centre. Orders can be cancelled by 01:30 a.m. on the same Saturday. When the customer pays the end payment, the mall receives the final payment and arranges the delivery.</p>\r\n\r\n<p>If the customer does not pay the final pick-up by 01:30 a.m. on Saturday, the customer is deemed to have made the last offer before the inventory and the booking is cancelled.</p>\r\n\r\n<p>3. Customers can make an appointment to recycle gold and silver products purchased at the gold point. Pre-purchase recovery requires a credit margin and confirmation of actual possession of gold and silver products purchased from the mall. Customers can cancel their reservation at any time before 01:30 on Saturday and the credit mark will be refunded after deducting the increase or decrease in the value of the goods within the corresponding time.</p>\r\n\r\n<p>If the customer fails to deliver the goods to a shopping mall or shopping center at the designated collection point by Saturday within the same week, or if the goods delivered do not meet the recycling standard test, the customer will be deemed to have cancelled the reservation recovery and will bear the logistics and testing costs.</p>\r\n\r\n<p>4. Counting time: Daily 01:30-05:30 for the mall warehouse inventory time. During the inventory period, the mall stops accepting advance payments for reservations/receipts.</p>\r\n\r\n<p>5. For further details, please refer to the Business Guidelines in the front page of the mall, Understanding ROYALWIN.</p>\r\n&nbsp;\r\n\r\n<h3>Chapter 2 Reveals the business model of ROYALWIN</h3>\r\n&nbsp;\r\n\r\n<p>Booking/repurchase orders, the business model for clearing balance shipments, uncertainties such as potential benefits and potential risks to the value of its merchandise due to real-time fluctuations in the gold and silver market, and the extent to which booking/repo risk stake is understood for customer booking/repo risk, Risk control ability and understanding of related products have high requirements. Customer selects pre-payment booking/repurchase, fully informed on behalf of the customer and understand the risks of prepayments/repurchase business and agree to and accept ROYALWIN current and future relevant booking/repurchase business processes and management systems (collectively, the Process Systems) to develop, modify and publish. This Risk Disclosure (Disclosure) is intended to fully disclose to the Client the risk of the prepayment booking/repurchase business and is intended only to provide reference for the client to assess and determine its own risk tolerance. The risk disclosures described in this disclosure are for example only. All risk factors associated with ROYALWIN Advance Booking/Repurchase are not detailed. Customers should also carefully understand and understand other possible risk factors before starting or participating in ROYALWIN pre-payment booking/repurchase business. If the customer is not aware of or is not aware of this disclosure, they should consult ROYALWIN Customer Service or the relevant regional service provider in a timely manner. If the Customer ultimately clicks on Risk Disclosure, it is deemed that the Customer fully agrees and accepts the full contents of this disclosure.</p>\r\n&nbsp;\r\n\r\n<p>Warm tips</p>\r\n1.Minors under the age of 18 are not permitted to participate in The ROYALWIN Advance Booking/Recycling.\r\n\r\n<p>2.ROYALWIN Advance Booking/Repo is only available to customers who meet all of the following criteria:<br />\r\n:: Natural persons with full civil capacity, legal persons of enterprises or other economic organizations registered in accordance with the law.</p>\r\n\r\n<p>:: To fully understand all risks associated with royalwin Advance Booking/Repurchase business and have a certain risk tolerance.</p>\r\n\r\n<p>:: Have a certain understanding of gold and silver and its products:</p>\r\n\r\n<p>A. Policy-related risk disclosure, such as changes in national laws, regulations and policies, contingency measures, implementation of appropriate regulatory measures, ROYALWIN regulatory system and changes in management methods and regulations, etc., all risks that may affect customer bookings/repurchases, etc., the customer must bear the losses incurred.</p>\r\n\r\n<p>B. Price fluctuations, gold, silver and other precious metals and their accessories are affected by a variety of factors, such as the international economic situation, foreign exchange, related market trends, supply and demand, and political situation and energy prices. The pricing mechanism for gold, silver and other precious metals products is very complex, making it difficult for customers to fully grasp in practice, so decisions such as advance booking/buyback are possible Mistakes, if the risk cannot be effectively controlled, may suffer losses and the customer must bear all the losses incurred as a result.</p>\r\n\r\n<p>C.&nbsp;ROYALWIN&nbsp;has enabled the provision of services through electronic communication technology and Internet technology. Communication services and hardware and software services are provided by different vendors and may be at risk in terms of quality and stability. Interruptions or delays due to communication or network failures may affect customer prepayment bookings/repurchases. In addition, the customers computer system may be attacked by viruses and/or cyber-hackers, resulting in the customers advance payment booking/repurchase not being properly and/or timely.</p>\r\n\r\n<p>There is also a risk that the above uncertainties may affect the customer&#39;s advance payment booking/repurchase.<br />\r\nA. The price quoted by the ROYALWIN Prepayment Booking/Repo System is based on the systems real-time trading price and may differ slightly from the commodity prices in other markets.<br />\r\nROYALWIN cannot guarantee that the above prepayment booking//repurchase price is fully consistent with other markets.<br />\r\nB. At ROYALWIN;, once the customers pre-payment booking/repurchase application submitted through the online terminal is completed, it cannot be withdrawn and the customer must accept the risks associated with such a subscription.<br />\r\nC. ROYALWIN prohibits regional service providers and their staff from providing any profit guarantee to customers, from engaging in prepaid bookings/repurchases on behalf of customers, or from sharing profits or risks with customers. Customer should be aware that any profit guarantee or commitment that royalwin advance booking/repurchase does not have a loss, profit share or risk-sharing is impossible, unfounded, and incorrect.<br />\r\nD. The customers pre-paid booking / repurchase application must be based on the customers own decision. ROYALWIN and regional service providers and employees do not provide booking / buyback to the client, nor does it constitute any commitment if the client makes a booking / buyback decision accordingly.<br />\r\nE. In advance booking / buyback process, there may be occasional apparent errors in the offer.<br />\r\n&nbsp;RISK-AGREEMENT<br />\r\nTyphoons, floods, fires, wars, disturbances, rule revisions, changes or adjustments in government regulatory policies and regulatory requirements, and electricity, To ensure that you fully understand the relevant provisions and risks of booking / repurchase business, customers should be based on their own booking experience, booking / repurchase / purchase of commodities, read all the contents of the advance booking / repurchase notice carefully, and fully understand and agree to all the contents, I am willing to take all risks to start or participate in ROYALWIN. In case of above mentioned condition I shall be him-self liable to any financial as well as monitory loss. By accepting this I shall be no more eligible to claims any statutory legal benefits given to Indian citizen by Law of India.</p>\r\n\r\n<p>Note: I have carefully read all contents of this app including Privacy Statement, Risk Disclosure Agreement and Risk Agreement and I am agreed to continue with my own risk.</p>\r\n&nbsp;\r\n\r\n<h3>Cancellation and refundable Policy</h3>\r\n\r\n<p>In case of any discrepancy we can cancel any of the orders placed by you. A few reasons for cancellation from our end usually include limitation of the product in the inventory, error in pricing, error in product information etc. We also have the right to check out for extra information for the purpose of accepting orders in a few cases. We make sure to notify you if in case your order is cancelled partially or completely or if in case any extra data is required for the purpose of accepting your order.</p>\r\n\r\n<p>Once you place the order, such order can be cancelled from your end before the shipping is undertaken to the destination. Once the request of cancellation for ready for shipping product is received by us, we make sure to refund the amount through the same mode of payment within 5 working days. Cancellation of the order of Gold coin(exchanged by integrals) shall not be accepted as under Company&#39;s policies.</p>\r\n\r\n<p>We don&#39;t accept Cancellation requests for Smart Buy orders or customized jewellery orders. In specific situations when the customer wants the money back or wants to exchange it with other products, making charges of the product and stone charges, if there is any stone on the product shall be deducted from the payment and balance will be refunded back to customer account within 5 working days.</p>\r\n\r\n<p>If in case the amount is deducted from your account and the transaction has failed, the same will be refunded back to your account within 72 hours.</p>\r\n</div>\r\n', '<div>\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\n\n<h1>Interpretation and Definitions</h1>\n\n<h2>Interpretation</h2>\n\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions.</p>\n\n<p>The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\n\n<h2>Definitions</h2>\n\n<p>For the purposes of this Privacy Policy:</p>\n\n<ul>\n	<li>\n	<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\n	</li>\n	<li>\n	<p><strong>Company</strong> (referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to NewBossji.</p>\n	</li>\n	<li><strong>Affiliate</strong> means an entity that controls, is controlled by or is under common control with a party, where &quot;control&quot; means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</li>\n	<li><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</li>\n	<li><strong>Website</strong> refers to NewBossji, accessible from https://newbossji.club/</li>\n	<li><strong>Service</strong> refers to the Website.</li>\n	<li><strong>Country</strong> refers to: &nbsp;India</li>\n	<li>\n	<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\n	</li>\n	<li><strong>Third-party Social Media Service</strong> refers to any website or any social network website through which a User can log in or create an account to use the Service.</li>\n	<li>\n	<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\n	</li>\n	<li><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</li>\n	<li><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</li>\n	<li><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</li>\n</ul>\n\n<h1>Collecting and Using Your Personal Data</h1>\n\n<h2>Types of Data Collected</h2>\n\n<h3>Personal Data</h3>\n\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\n\n<ul>\n	<li>Email address</li>\n	<li>First name and last name</li>\n	<li>Phone number</li>\n	<li>Address, State, Province, ZIP/Postal code, City</li>\n	<li>Usage Data</li>\n</ul>\n\n<h3>Usage Data</h3>\n\n<p>Usage Data is collected automatically when using the Service.</p>\n\n<p>Usage Data may include information such as Your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\n\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\n\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\n\n<h3>Tracking Technologies and Cookies</h3>\n\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service.</p>\n\n<p>You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service.</p>\n\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close your web browser.</p>\n\n<p>We use both session and persistent Cookies for the purposes set out below:</p>\n\n<ul>\n	<li>\n	<p><strong>Necessary / Essential Cookies</strong></p>\n\n	<p>Type: Session Cookies</p>\n\n	<p>Administered by: Us</p>\n\n	<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\n	</li>\n	<li>\n	<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\n\n	<p>Type: Persistent Cookies</p>\n\n	<p>Administered by: Us</p>\n\n	<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\n	</li>\n	<li>\n	<p><strong>Functionality Cookies</strong></p>\n\n	<p>Type: Persistent Cookies</p>\n\n	<p>Administered by: Us</p>\n\n	<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\n	</li>\n</ul>\n\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy.</p>\n\n<h2>Use of Your Personal Data</h2>\n\n<p>The Company may use Personal Data for the following purposes:</p>\n\n<ul>\n	<li><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</li>\n	<li><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</li>\n	<li><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</li>\n	<li><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&#39;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</li>\n	<li><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</li>\n	<li><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</li>\n</ul>\n\n<p>We may share your personal information in the following situations:</p>\n\n<ul>\n	<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\n	<li><strong>For Business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of our business to another company.</li>\n	<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\n	<li><strong>With Business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\n	<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If You interact with other users or register through a Third-Party Social Media Service, Your contacts on the Third-Party Social Media Service may see You name, profile, pictures and description of Your activity. Similarly, other users will be able to view descriptions of Your activity, communicate with You and view Your profile.</li>\n</ul>\n\n<h2>Retention of Your Personal Data</h2>\n\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\n\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\n\n<h2>Transfer of Your Personal Data</h2>\n\n<p>Your information, including Personal Data, is processed at the Company&#39;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to ï¿½ and maintained on ï¿½ computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\n\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\n\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\n\n<h2>Disclosure of Your Personal Data</h2>\n\n<h3>Business Transactions</h3>\n\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\n\n<h3>Law enforcement</h3>\n\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\n\n<h3>Other legal requirements</h3>\n\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\n\n<ul>\n	<li>Comply with a legal obligation</li>\n	<li>Protect and defend the rights or property of the Company</li>\n	<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\n	<li>Protect the personal safety of Users of the Service or the public</li>\n	<li>Protect against legal liability</li>\n</ul>\n\n<h2>Security of Your Personal Data</h2>\n\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\n\n<h1>Children&#39;s Privacy</h1>\n\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\n\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&#39;s consent before We collect and use that information.</p>\n\n<h1>Links to Other Websites</h1>\n\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party&#39;s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\n\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\n\n<h1>Changes to this Privacy Policy</h1>\n\n<p>We may update our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\n\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\n\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\n\n<h1>Contact Us</h1>\n\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\n\n<ul>\n	<li>By visiting this page on our website :&nbsp;https://newbossji.club/myaccount.php &gt; Contact us</li>\n</ul>\n</div>\n', '<p style=\"font-size:12px\">3 minutes 1 issue, 2 minutes and 30 seconds to order, 30 seconds to show the lottery result. It opens all day. The total number of trade is 480 issues</p>\r\n\r\n<p style=\"font-size:10px\">If you spend 100 to trade, after deducting 5 service fee, your contract amount is 95:</p>\r\n\r\n<p style=\"font-size:10px\">1. JOIN GREEN: if the result shows 1,3,7,9, you will get (95*2) 190</p>\r\n\r\n<p style=\"font-size:10px\">If the result shows 5, you will get (95*1.5) 142.5</p>\r\n\r\n<p style=\"font-size:10px\">2. JOIN RED: if the result shows 2,4,6,8, you will get (95*2) 190; If the result shows 0, you will get (95*1.5) 142.5</p>\r\n\r\n<p style=\"font-size:10px\">3. JOIN VIOLET: if the result shows 0 or 5, you will get (95*4.5) 427.5</p>\r\n\r\n<p style=\"font-size:10px\">4. SELECT NUMBER: if the result is the same as the number you selected, you will get (95*9) 855</p>', '<div class=\"content\" style=\"padding: 12px;\">    <h3 class=\"text-xs-center\" style=\"margin-bottom: 12px;\">Chapter 1.Booking/Collection Description</h3>    <p>       <span>          Prepayment Booking/Recycling Customer should read and understand the business content carefully before making prepayment bookings (prepayment lock price, payment settlement and shipment) /recovery or repurchase (prepayment lock price, shipping payment) before making prepayment bookings to           <text class=\"dfTxt\">myspo11</text>          :       </span>    </p>    <p><span>1. Before making an appointment/restoring the prepayment business, the customer should complete the real name authentication in the mall and ensure that the name, ID number, bank account number, delivery address and other information filled in are true, accurate and valid; Otherwise, the user will be liable for the consequences of false information.</span></p>    <p><span>2. Customers can order gold and silver products in advance at the shopping centre. Orders can be cancelled by 01:30 a.m. on the same Saturday. When the customer pays the end payment, the mall receives the final payment and arranges the delivery.</span></p>    <p><span>If the customer does not pay the final pick-up by 01:30 a.m. on Saturday, the customer is deemed to have made the last offer before the inventory and the booking is cancelled.</span></p>    <p><span>3. Customers can make an appointment to recycle gold and silver products purchased at the gold point. Pre-purchase recovery requires a credit margin and confirmation of actual possession of gold and silver products purchased from the mall. Customers can cancel their reservation at any time before 01:30 on Saturday and the credit mark will be refunded after deducting the increase or decrease in the value of the goods within the corresponding time.</span></p>    <p><span>If the customer fails to deliver the goods to a shopping mall or shopping center at the designated collection point by Saturday within the same week, or if the goods delivered do not meet the recycling standard test, the customer will be deemed to have cancelled the reservation recovery and will bear the logistics and testing costs.</span></p>    <p><span>4. Counting time: Daily 01:30-05:30 for the mall warehouse inventory time. During the inventory period, the mall stops accepting advance payments for reservations/receipts.</span></p>    <p>       <span>          5. For further details, please refer to the Business Guidelines in the front page of the mall, Understanding           <text class=\"dfTxt\">myspo11</text>          .       </span>    </p>    <br>    <h3 class=\"text-xs-center\">       Chapter 2 Reveals the business model of        <text class=\"dfTxt\">myspo11</text>    </h3>    <br>    <p>       <span>          Booking/repurchase orders, the business model for clearing balance shipments, uncertainties such as potential benefits and potential risks to the value of its merchandise due to real-time fluctuations in the gold and silver market, and the extent to which booking/repo risk stake is understood for customer booking/repo risk, Risk control ability and understanding of related products have high requirements. Customer selects pre-payment booking/repurchase, fully informed on behalf of the customer and understand the risks of prepayments/repurchase business and agree to and accept           <text class=\"dfTxt\">myspo11</text>          current and future relevant booking/repurchase business processes and management systems (collectively, the Process Systems) to develop, modify and publish. This Risk Disclosure (Disclosure) is intended to fully disclose to the Client the risk of the prepayment booking/repurchase business and is intended only to provide reference for the client to assess and determine its own risk tolerance. The risk disclosures described in this disclosure are for example only. All risk factors associated with           <text class=\"dfTxt\">myspo11</text>          Advance Booking/Repurchase are not detailed. Customers should also carefully understand and understand other possible risk factors before starting or participating in           <text class=\"dfTxt\">myspo11</text>          pre-payment booking/repurchase business. If the customer is not aware of or is not aware of this disclosure, they should consult           <text class=\"dfTxt\">myspo11</text>          Customer Service or the relevant regional service provider in a timely manner. If the Customer ultimately clicks on Risk Disclosure, it is deemed that the Customer fully agrees and accepts the full contents of this disclosure.       </span>    </p>    <br>    <p>Warm tips</p>    <span>       1.Minors under the age of 18 are not permitted to participate in The        <text class=\"dfTxt\">myspo11</text>       Advance Booking/Recycling.    </span>    <p>       <span>          2.          <text class=\"dfTxt\">myspo11</text>          Advance Booking/Repo is only available to customers who meet all of the following criteria:          <br>? Natural persons with full civil capacity, legal persons of enterprises or other economic organizations registered in accordance with the law.       </span>    </p>    <p>       <span>          ? To fully understand all risks associated with           <text class=\"dfTxt\">myspo11</text>          Advance Booking/Repurchase business and have a certain risk tolerance.       </span>    </p>    <p><span>? Have a certain understanding of gold and silver and its products:</span></p>    <p>       <span>          A. Policy-related risk disclosure, such as changes in national laws, regulations and policies, contingency measures, implementation of appropriate regulatory measures,           <text class=\"dfTxt\">myspo11</text>          regulatory system and changes in management methods and regulations, etc., all risks that may affect customer bookings/repurchases, etc., the customer must bear the losses incurred.       </span>    </p>    <p><span>B. Price fluctuations, gold, silver and other precious metals and their accessories are affected by a variety of factors, such as the international economic situation, foreign exchange, related market trends, supply and demand, and political situation and energy prices. The pricing mechanism for gold, silver and other precious metals products is very complex, making it difficult for customers to fully grasp in practice, so decisions such as advance booking/buyback are possible Mistakes, if the risk cannot be effectively controlled, may suffer losses and the customer must bear all the losses incurred as a result.</span></p>    <p>       <span>          ?           <text class=\"dfTxt\">myspo11</text>          has enabled the provision of services through electronic communication technology and Internet technology. Communication services and hardware and software services are provided by different vendors and may be at risk in terms of quality and stability. Interruptions or delays due to communication or network failures may affect customer prepayment bookings/repurchases. In addition, the customers computer system may be attacked by viruses and/or cyber-hackers, resulting in the customers advance payment booking/repurchase not being properly and/or timely.       </span>    </p>    <p>       <span>          There is also a risk that the above uncertainties may affect the customer’s advance payment booking/repurchase.          <br>A. The price quoted by the           <text class=\"dfTxt\">myspo11</text>          Prepayment Booking/Repo System is based on the systems real-time trading price and may differ slightly from the commodity prices in other markets.          <br>          <text class=\"dfTxt\">myspo11</text>          cannot guarantee that the above prepayment booking//repurchase price is fully consistent with other markets.          <br>B. At           <text class=\"dfTxt\">myspo11</text>          ;, once the customers pre-payment booking/repurchase application submitted through the online terminal is completed, it cannot be withdrawn and the customer must accept the risks associated with such a subscription.          <br>C.           <text class=\"dfTxt\">myspo11</text>          prohibits regional service providers and their staff from providing any profit guarantee to customers, from engaging in prepaid bookings/repurchases on behalf of customers, or from sharing profits or risks with customers. Customer should be aware that any profit guarantee or commitment that           <text class=\"dfTxt\">myspo11</text>          advance booking/repurchase does not have a loss, profit share or risk-sharing is impossible, unfounded, and incorrect.          <br>D. The customers pre-paid booking / repurchase application must be based on the customers own decision.           <text class=\"dfTxt\">myspo11</text>          and regional service providers and employees do not provide booking / buyback to the client, nor does it constitute any commitment if the client makes a booking / buyback decision accordingly.          <br>E. In advance booking / buyback process, there may be occasional apparent errors in the offer.          <br>? RISK-AGREEMENT          <br>Typhoons, floods, fires, wars, disturbances, rule revisions, changes or adjustments in government regulatory policies and regulatory requirements, and electricity, To ensure that you fully understand the relevant provisions and risks of booking / repurchase business, customers should be based on their own booking experience, booking / repurchase / purchase of commodities, read all the contents of the advance booking / repurchase notice carefully, and fully understand and agree to all the contents, I am willing to take all risks to start or participate in           <text class=\"dfTxt\">myspo11</text>          . In case of above mentioned condition I shall be him-self liable to any financial as well as monitory loss. By accepting this I shall be no more eligible to claims any statutory legal benefits given to Indian citizen by Law of India.          <br><br>       </span>    </p>    <p><span>Note: I have carefully read all contents of this app including Privacy Statement, Risk Disclosure Agreement and Risk Agreement and I am agreed to continue with my own risk.</span></p>    <br>    <h3 class=\"text-xs-center\" style=\"margin-bottom: 12px;\">Cancellation and refundable Policy</h3>    <p><span>In case of any discrepancy we can cancel any of the orders placed by you. A few reasons for cancellation from our end usually include limitation of the product in the inventory, error in pricing, error in product information etc. We also have the right to check out for extra information for the purpose of accepting orders in a few cases. We make sure to notify you if in case your order is cancelled partially or completely or if in case any extra data is required for the purpose of accepting your order.</span></p>    <p><span>Once you place the order, such order can be cancelled from your end before the shipping is undertaken to the destination. Once the request of cancellation for ready for shipping product is received by us, we make sure to refund the amount through the same mode of payment within 5 working days. Cancellation of the order of Gold coin(exchanged by integrals) shall not be accepted as under Company’s policies.</span></p>    <p><span>We don’t accept Cancellation requests for Smart Buy orders or customized jewellery orders. In specific situations when the customer wants the money back or wants to exchange it with other products, making charges of the product and stone charges, if there is any stone on the product shall be deducted from the payment and balance will be refunded back to customer account within 5 working days.</span></p>    <p><span>If in case the amount is deducted from your account and the transaction has failed, the same will be refunded back to your account within 72 hours.</span></p> </div>', '<p style=\"font-size:16px; padding-left:5%; padding-right:5%; \">\r\n<b>Please read all rules and terms before using ROYALWIN:- </b>\r\n<br>\r\n<br>\r\n1. The Withdrawable Balance includes all the amount you have wagered and won. You can only withdraw a maximum amount equal to your Withdrawable Balance. You cannot withdraw your deposit balance without wagering that.\r\n<br>\r\n<br>\r\n2. Most of withdrawals are credited to your bank account in 5-10 minutes, but sometimes it takes up to 48 hours due to technical/banking issue.\r\n<br>\r\n<br>\r\n3. We deduct 4% fee on every withdrawals, but sometimes there are HAPPY HOURS in which no fee is charged on withdrawal. Please check Offer and Event page for upcoming HAPPY HOURS event.\r\n<br>\r\n<br>\r\n4. Our working time is from 9AM to 11PM, In this meantime all deposits, withdrawals, reward destribution and other processwill be completed. \r\n<br>\r\n<br>\r\n5. Your registration on the Website/Mobile App is restricted to a single user account, which will be used by you to avail yourself of the Services provided on the Website/Mobile App. You are prohibited from creating or using multiple user IDs for playing on the Website/Mobile App or using our Services.\r\n<br>\r\n<br>\r\n6. If in case the any amount is deducted from your account and the transaction has failed, the same will be refunded back to your account within 72 hours.\r\n<br>\r\n<br>\r\n7. Minors under the age of 18 are not permitted to participate in The ROYALWIN Advance Booking/Recycling.\r\n<br>\r\n<br>\r\n8. all rewards and bonuses are disributed on 9am-10am next morning from recahrge.\r\n<br>\r\n<br>\r\n<b>9. Your Password, Your Responsibility</b> After you have registered on our Website/Mobile App, it is your sole responsibility to make sure that you do not disclose your passwords to anybody, be it your friends, family members, third party, or anybody whosoever. Please create a strong password of minimum 8 characters including capital letters, digits and special characters so that nobody can crack that.\r\n<br>\r\n<br>   \r\n   We shall not in any way be responsible if your user account is logged in to or accessed by anybody else by using your password. The restrictions defined for creating a strong password will be applicable only for passwords created on Royalwin\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `red envlop`
--

CREATE TABLE `red envlop` (
  `red envelop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `created_date`, `status`) VALUES
(1, 'SuperAdmin', '2014-12-23 20:04:37', 1),
(2, 'Support', '2017-01-26 17:23:05', 1),
(13, 'serverRoot', '2021-10-09 12:49:15', 1),
(15, 'Reward distributter', '2022-04-19 13:00:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `services` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `services`, `url`, `status`) VALUES
(1, 'Dashboard', 'desktop.php', '1'),
(2, 'Manage AdminUser', '#', '1'),
(3, 'Manage Banner', '#', '0'),
(4, 'Content Management', '#', '0'),
(5, 'Manage Product', '#', '0'),
(6, 'User Management', '#', '1'),
(7, 'Withdrawal Management ', '#', '1'),
(8, 'Wining Management', '#', '1'),
(9, 'Game History', '#', '0'),
(10, 'Trade History', '#', '1'),
(11, 'Reward Management', '#', '1'),
(12, 'Amount Setup', '#', '1'),
(13, 'Recharge Management', '#', '1'),
(14, 'History For Parity', '#', '0'),
(15, 'Go to New Dashboard', '#', '0');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'telegram', NULL),
(2, 'system_name', 'color prediction'),
(3, 'fast_sms_api_key', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fblink` text NOT NULL,
  `twlink` text NOT NULL,
  `ln` text NOT NULL,
  `insta` varchar(500) NOT NULL,
  `fbcount` varchar(100) NOT NULL,
  `twcount` varchar(100) NOT NULL,
  `youtubecount` varchar(100) NOT NULL,
  `instacount` varchar(100) NOT NULL,
  `status` smallint(6) NOT NULL,
  `updt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `address`, `email`, `mobile`, `fblink`, `twlink`, `ln`, `insta`, `fbcount`, `twcount`, `youtubecount`, `instacount`, `status`, `updt_time`) VALUES
(1, 'Stock Building, 125 Main Street 1st Lane, San Francisco, USA', 'info@gmail.com', '+91 9090909090', '#', '#', '#', '#', '985', '529', '888', '100', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `role_id`, `task`, `status`, `created_date`) VALUES
(1, '1', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', 1, '2021-09-25 10:51:32'),
(9, '13', '1,2,3,4,5,6,7,8,9,10,11,12,13', 1, '2021-10-09 12:49:50'),
(10, '2', '6,7,10,11,13', 1, '2021-12-10 08:59:38'),
(11, '15', '6,7,8,10,11,13,14', 1, '2022-04-19 13:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `admin_name`, `password`, `role`, `expiry_date`, `status`, `date`) VALUES
(4, 'admin', 'admin', 'e1b4755403710e0deb7aa5d45e43996d', '1', 'no', 1, '2022-03-31 06:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankdetail`
--

CREATE TABLE `tbl_bankdetail` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bankdetail`
--

INSERT INTO `tbl_bankdetail` (`id`, `userid`, `name`, `ifsc`, `bankname`, `account`, `mobile`, `email`, `type`, `status`) VALUES
(1, 210, 'Cnl', 'Yyf', 'T7iufg', '55668', '886', 'Fc ', 'bank', 1),
(2, 2, 'ABCD', 'none', '8355965199@upi', 'none', '8355965199', 'demo@admin.com', 'upi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_betting`
--

CREATE TABLE `tbl_betting` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `acceptrule` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `level1` varchar(300) NOT NULL,
  `level2` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bonus`
--

INSERT INTO `tbl_bonus` (`id`, `userid`, `amount`, `level1`, `level2`) VALUES
(1, 1, '0', '0', '0'),
(2, 2, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonussummery`
--

CREATE TABLE `tbl_bonussummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `level1id` varchar(255) NOT NULL,
  `level2id` varchar(255) NOT NULL,
  `level1amount` varchar(255) NOT NULL,
  `level2amount` varchar(255) NOT NULL,
  `tradeamount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonuswithdrawal`
--

CREATE TABLE `tbl_bonuswithdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_envelop`
--

CREATE TABLE `tbl_envelop` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `amount` float NOT NULL,
  `status` smallint(6) NOT NULL,
  `rechargestatus` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gameid`
--

CREATE TABLE `tbl_gameid` (
  `id` int(11) NOT NULL,
  `gameid` varchar(500) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gamesettings`
--

CREATE TABLE `tbl_gamesettings` (
  `id` int(11) NOT NULL,
  `settingtype` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gamesettings`
--

INSERT INTO `tbl_gamesettings` (`id`, `settingtype`, `createdate`) VALUES
(1, 'low', '2023-08-31 13:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intrest`
--

CREATE TABLE `tbl_intrest` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intrest_amt`
--

CREATE TABLE `tbl_intrest_amt` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `points` varchar(200) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_intrest_amt`
--

INSERT INTO `tbl_intrest_amt` (`id`, `userid`, `amount`, `points`, `createdate`) VALUES
(1, 1, '0', '', '2023-08-31 08:48:27'),
(2, 2, '0', '', '2023-08-31 08:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresult`
--

CREATE TABLE `tbl_manualresult` (
  `id` int(11) NOT NULL,
  `color` varchar(300) NOT NULL,
  `value` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresult`
--

INSERT INTO `tbl_manualresult` (`id`, `color`, `value`, `number`, `status`, `createdate`) VALUES
(1, '<span style=\"color:#f00;\">Red</span> + <span style=\"color:#C71585;\">Violet</span>', 'red+violet', 0, 0, '2021-02-01 00:00:00'),
(2, '<span style=\"color:#090;\">Green</span>', 'green', 1, 0, '2021-02-01 00:00:00'),
(3, '<span style=\"color:#f00;\">Red</span>', 'red', 2, 0, '2021-02-01 00:00:00'),
(4, '<span style=\"color:#090;\">Green</span>', 'green', 3, 0, '2021-02-01 00:00:00'),
(5, '<span style=\"color:#f00;\">Red</span>', 'red', 4, 0, '2021-02-01 00:00:00'),
(6, '<span style=\"color:#090;\">Green</span> + <span style=\"color:#C71585;\">Violet</span>', 'green+violet', 5, 0, '2021-02-01 00:00:00'),
(7, '<span style=\"color:#f00;\">Red</span>', 'red', 6, 0, '2021-02-01 00:00:00'),
(8, '<span style=\"color:#090;\">Green</span>', 'green', 7, 0, '2021-02-01 00:00:00'),
(9, '<span style=\"color:#f00;\">Red</span>', 'red', 8, 0, '2021-02-01 00:00:00'),
(10, '<span style=\"color:#090;\">Green</span>', 'green', 9, 0, '2021-02-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresultswitch`
--

CREATE TABLE `tbl_manualresultswitch` (
  `id` int(11) NOT NULL,
  `switch` varchar(50) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresultswitch`
--

INSERT INTO `tbl_manualresultswitch` (`id`, `switch`, `tab`, `createdate`) VALUES
(1, 'no', '', '2023-08-31 20:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `transactionid` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paymentsetting`
--

CREATE TABLE `tbl_paymentsetting` (
  `id` int(11) NOT NULL,
  `commission_rate` int(11) NOT NULL COMMENT 'Rate in %',
  `rechargeamount` varchar(500) NOT NULL,
  `withdrawalamount` varchar(500) NOT NULL,
  `bonusamount` varchar(500) NOT NULL,
  `rechargebonus` varchar(500) NOT NULL COMMENT 'in%age',
  `level1` varchar(300) NOT NULL COMMENT 'In%age',
  `level2` varchar(300) NOT NULL COMMENT 'In%age',
  `withdrawal_status` varchar(222) NOT NULL,
  `upi_id` varchar(226) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_paymentsetting`
--

INSERT INTO `tbl_paymentsetting` (`id`, `commission_rate`, `rechargeamount`, `withdrawalamount`, `bonusamount`, `rechargebonus`, `level1`, `level2`, `withdrawal_status`, `upi_id`) VALUES
(1, 10, '100', '500', '0', '10%', '5%', '3%', 'on', '8355965199@upi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `images` varchar(300) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productfeature`
--

CREATE TABLE `tbl_productfeature` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `feature` varchar(500) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_randomdata`
--

CREATE TABLE `tbl_randomdata` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `result` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `timer` int(11) NOT NULL,
  `dayofweek` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_randomdata`
--

INSERT INTO `tbl_randomdata` (`id`, `price`, `result`, `color`, `timer`, `dayofweek`) VALUES
(1, 31069, 9, 'GREEN', 1, 'Day 1'),
(2, 31041, 1, 'GREEN', 2, 'Day 1'),
(3, 31026, 6, 'RED', 3, 'Day 1'),
(4, 30937, 7, 'GREEN', 4, 'Day 1'),
(5, 31024, 4, 'RED', 5, 'Day 1'),
(6, 30952, 2, 'RED', 6, 'Day 1'),
(7, 30863, 3, 'GREEN', 7, 'Day 1'),
(8, 30808, 8, 'RED', 8, 'Day 1'),
(9, 30795, 5, 'GREEN & VIOLET', 9, 'Day 1'),
(10, 30710, 0, 'RED & VIOLET', 10, 'Day 1'),
(11, 30706, 6, 'RED', 11, 'Day 1'),
(12, 30702, 2, 'RED', 12, 'Day 1'),
(13, 30769, 9, 'GREEN', 13, 'Day 1'),
(14, 30809, 9, 'GREEN', 14, 'Day 1'),
(15, 30782, 2, 'RED', 15, 'Day 1'),
(16, 30879, 9, 'GREEN', 16, 'Day 1'),
(17, 30810, 0, 'RED & VIOLET', 17, 'Day 1'),
(18, 30891, 1, 'GREEN', 18, 'Day 1'),
(19, 30973, 3, 'GREEN', 19, 'Day 1'),
(20, 30871, 1, 'GREEN', 20, 'Day 1'),
(21, 30846, 6, 'RED', 21, 'Day 1'),
(22, 30885, 5, 'GREEN & VIOLET', 22, 'Day 1'),
(23, 30951, 1, 'GREEN', 23, 'Day 1'),
(24, 31000, 0, 'RED & VIOLET', 24, 'Day 1'),
(25, 31011, 1, 'GREEN', 25, 'Day 1'),
(26, 30922, 2, 'RED', 26, 'Day 1'),
(27, 30967, 7, 'GREEN', 27, 'Day 1'),
(28, 30881, 1, 'GREEN', 28, 'Day 1'),
(29, 30857, 7, 'GREEN', 29, 'Day 1'),
(30, 30786, 6, 'RED', 30, 'Day 1'),
(31, 30761, 1, 'GREEN', 31, 'Day 1'),
(32, 30724, 4, 'RED', 32, 'Day 1'),
(33, 30778, 8, 'RED', 33, 'Day 1'),
(34, 30863, 3, 'GREEN', 34, 'Day 1'),
(35, 30940, 0, 'RED & VIOLET', 35, 'Day 1'),
(36, 30844, 4, 'RED', 36, 'Day 1'),
(37, 30803, 3, 'GREEN', 37, 'Day 1'),
(38, 30852, 2, 'RED', 38, 'Day 1'),
(39, 30945, 5, 'GREEN & VIOLET', 39, 'Day 1'),
(40, 30882, 2, 'RED', 40, 'Day 1'),
(41, 30853, 3, 'GREEN', 41, 'Day 1'),
(42, 30931, 1, 'GREEN', 42, 'Day 1'),
(43, 30901, 1, 'GREEN', 43, 'Day 1'),
(44, 30821, 1, 'GREEN', 44, 'Day 1'),
(45, 30784, 4, 'RED', 45, 'Day 1'),
(46, 30754, 4, 'RED', 46, 'Day 1'),
(47, 30816, 6, 'RED', 47, 'Day 1'),
(48, 30912, 2, 'RED', 48, 'Day 1'),
(49, 30836, 6, 'RED', 49, 'Day 1'),
(50, 30807, 7, 'GREEN', 50, 'Day 1'),
(51, 30800, 0, 'RED & VIOLET', 51, 'Day 1'),
(52, 30811, 1, 'GREEN', 52, 'Day 1'),
(53, 30859, 9, 'GREEN', 53, 'Day 1'),
(54, 30840, 0, 'RED & VIOLET', 54, 'Day 1'),
(55, 30934, 4, 'RED', 55, 'Day 1'),
(56, 30853, 3, 'GREEN', 56, 'Day 1'),
(57, 30802, 2, 'RED', 57, 'Day 1'),
(58, 30812, 2, 'RED', 58, 'Day 1'),
(59, 30845, 5, 'GREEN & VIOLET', 59, 'Day 1'),
(60, 30873, 3, 'GREEN', 60, 'Day 1'),
(61, 30799, 9, 'GREEN', 61, 'Day 1'),
(62, 30803, 3, 'GREEN', 62, 'Day 1'),
(63, 30858, 8, 'RED', 63, 'Day 1'),
(64, 30903, 3, 'GREEN', 64, 'Day 1'),
(65, 30872, 2, 'RED', 65, 'Day 1'),
(66, 30774, 4, 'RED', 66, 'Day 1'),
(67, 30856, 6, 'RED', 67, 'Day 1'),
(68, 30823, 3, 'GREEN', 68, 'Day 1'),
(69, 30826, 6, 'RED', 69, 'Day 1'),
(70, 30789, 9, 'GREEN', 70, 'Day 1'),
(71, 30748, 8, 'RED', 71, 'Day 1'),
(72, 30834, 4, 'RED', 72, 'Day 1'),
(73, 30785, 5, 'GREEN & VIOLET', 73, 'Day 1'),
(74, 30830, 0, 'RED & VIOLET', 74, 'Day 1'),
(75, 30792, 2, 'RED', 75, 'Day 1'),
(76, 30792, 2, 'RED', 76, 'Day 1'),
(77, 30874, 4, 'RED', 77, 'Day 1'),
(78, 30817, 7, 'GREEN', 78, 'Day 1'),
(79, 30776, 6, 'RED', 79, 'Day 1'),
(80, 30873, 3, 'GREEN', 80, 'Day 1'),
(81, 30905, 5, 'GREEN & VIOLET', 81, 'Day 1'),
(82, 31001, 1, 'GREEN', 82, 'Day 1'),
(83, 31032, 2, 'RED', 83, 'Day 1'),
(84, 31071, 1, 'GREEN', 84, 'Day 1'),
(85, 31067, 7, 'GREEN', 85, 'Day 1'),
(86, 31072, 2, 'RED', 86, 'Day 1'),
(87, 31157, 7, 'GREEN', 87, 'Day 1'),
(88, 31197, 7, 'GREEN', 88, 'Day 1'),
(89, 31200, 0, 'RED & VIOLET', 89, 'Day 1'),
(90, 31113, 3, 'GREEN', 90, 'Day 1'),
(91, 31112, 2, 'RED', 91, 'Day 1'),
(92, 31198, 8, 'RED', 92, 'Day 1'),
(93, 31130, 0, 'RED & VIOLET', 93, 'Day 1'),
(94, 31109, 9, 'GREEN', 94, 'Day 1'),
(95, 31142, 2, 'RED', 95, 'Day 1'),
(96, 31223, 3, 'GREEN', 96, 'Day 1'),
(97, 31270, 0, 'RED & VIOLET', 97, 'Day 1'),
(98, 31297, 7, 'GREEN', 98, 'Day 1'),
(99, 31208, 8, 'RED', 99, 'Day 1'),
(100, 31152, 2, 'RED', 100, 'Day 1'),
(101, 31232, 2, 'RED', 101, 'Day 1'),
(102, 31299, 9, 'GREEN', 102, 'Day 1'),
(103, 31388, 8, 'RED', 103, 'Day 1'),
(104, 31337, 7, 'GREEN', 104, 'Day 1'),
(105, 31360, 0, 'RED & VIOLET', 105, 'Day 1'),
(106, 31417, 7, 'GREEN', 106, 'Day 1'),
(107, 31394, 4, 'RED', 107, 'Day 1'),
(108, 31486, 6, 'RED', 108, 'Day 1'),
(109, 31450, 0, 'RED & VIOLET', 109, 'Day 1'),
(110, 31482, 2, 'RED', 110, 'Day 1'),
(111, 31512, 2, 'RED', 111, 'Day 1'),
(112, 31483, 3, 'GREEN', 112, 'Day 1'),
(113, 31532, 2, 'RED', 113, 'Day 1'),
(114, 31549, 9, 'GREEN', 114, 'Day 1'),
(115, 31458, 8, 'RED', 115, 'Day 1'),
(116, 31528, 8, 'RED', 116, 'Day 1'),
(117, 31612, 2, 'RED', 117, 'Day 1'),
(118, 31553, 3, 'GREEN', 118, 'Day 1'),
(119, 31553, 3, 'GREEN', 119, 'Day 1'),
(120, 31514, 4, 'RED', 120, 'Day 1'),
(121, 31551, 1, 'GREEN', 121, 'Day 1'),
(122, 31568, 8, 'RED', 122, 'Day 1'),
(123, 31577, 7, 'GREEN', 123, 'Day 1'),
(124, 31486, 6, 'RED', 124, 'Day 1'),
(125, 31498, 8, 'RED', 125, 'Day 1'),
(126, 31457, 7, 'GREEN', 126, 'Day 1'),
(127, 31394, 4, 'RED', 127, 'Day 1'),
(128, 31416, 6, 'RED', 128, 'Day 1'),
(129, 31426, 6, 'RED', 129, 'Day 1'),
(130, 31480, 0, 'RED & VIOLET', 130, 'Day 1'),
(131, 31424, 4, 'RED', 131, 'Day 1'),
(132, 31414, 4, 'RED', 132, 'Day 1'),
(133, 31398, 8, 'RED', 133, 'Day 1'),
(134, 31417, 7, 'GREEN', 134, 'Day 1'),
(135, 31443, 3, 'GREEN', 135, 'Day 1'),
(136, 31483, 3, 'GREEN', 136, 'Day 1'),
(137, 31551, 1, 'GREEN', 137, 'Day 1'),
(138, 31466, 6, 'RED', 138, 'Day 1'),
(139, 31371, 1, 'GREEN', 139, 'Day 1'),
(140, 31447, 7, 'GREEN', 140, 'Day 1'),
(141, 31449, 9, 'GREEN', 141, 'Day 1'),
(142, 31499, 9, 'GREEN', 142, 'Day 1'),
(143, 31574, 4, 'RED', 143, 'Day 1'),
(144, 31610, 0, 'RED & VIOLET', 144, 'Day 1'),
(145, 31616, 6, 'RED', 145, 'Day 1'),
(146, 31689, 9, 'GREEN', 146, 'Day 1'),
(147, 31630, 0, 'RED & VIOLET', 147, 'Day 1'),
(148, 31636, 6, 'RED', 148, 'Day 1'),
(149, 31630, 0, 'RED & VIOLET', 149, 'Day 1'),
(150, 31657, 7, 'GREEN', 150, 'Day 1'),
(151, 31745, 5, 'GREEN & VIOLET', 151, 'Day 1'),
(152, 31821, 1, 'GREEN', 152, 'Day 1'),
(153, 31763, 3, 'GREEN', 153, 'Day 1'),
(154, 31680, 0, 'RED & VIOLET', 154, 'Day 1'),
(155, 31668, 8, 'RED', 155, 'Day 1'),
(156, 31638, 8, 'RED', 156, 'Day 1'),
(157, 31641, 1, 'GREEN', 157, 'Day 1'),
(158, 31709, 9, 'GREEN', 158, 'Day 1'),
(159, 31701, 1, 'GREEN', 159, 'Day 1'),
(160, 31646, 6, 'RED', 160, 'Day 1'),
(161, 31647, 7, 'GREEN', 161, 'Day 1'),
(162, 31713, 3, 'GREEN', 162, 'Day 1'),
(163, 31770, 0, 'RED & VIOLET', 163, 'Day 1'),
(164, 31866, 6, 'RED', 164, 'Day 1'),
(165, 31812, 2, 'RED', 165, 'Day 1'),
(166, 31863, 3, 'GREEN', 166, 'Day 1'),
(167, 31802, 2, 'RED', 167, 'Day 1'),
(168, 31893, 3, 'GREEN', 168, 'Day 1'),
(169, 31970, 0, 'RED & VIOLET', 169, 'Day 1'),
(170, 31921, 1, 'GREEN', 170, 'Day 1'),
(171, 31983, 3, 'GREEN', 171, 'Day 1'),
(172, 31887, 7, 'GREEN', 172, 'Day 1'),
(173, 31841, 1, 'GREEN', 173, 'Day 1'),
(174, 31910, 0, 'RED & VIOLET', 174, 'Day 1'),
(175, 31817, 7, 'GREEN', 175, 'Day 1'),
(176, 31734, 4, 'RED', 176, 'Day 1'),
(177, 31749, 9, 'GREEN', 177, 'Day 1'),
(178, 31812, 2, 'RED', 178, 'Day 1'),
(179, 31827, 7, 'GREEN', 179, 'Day 1'),
(180, 31857, 7, 'GREEN', 180, 'Day 1'),
(181, 31769, 9, 'GREEN', 181, 'Day 1'),
(182, 31863, 3, 'GREEN', 182, 'Day 1'),
(183, 31794, 4, 'RED', 183, 'Day 1'),
(184, 31695, 5, 'GREEN & VIOLET', 184, 'Day 1'),
(185, 31766, 6, 'RED', 185, 'Day 1'),
(186, 31741, 1, 'GREEN', 186, 'Day 1'),
(187, 31676, 6, 'RED', 187, 'Day 1'),
(188, 31745, 5, 'GREEN & VIOLET', 188, 'Day 1'),
(189, 31838, 8, 'RED', 189, 'Day 1'),
(190, 31879, 9, 'GREEN', 190, 'Day 1'),
(191, 31935, 5, 'GREEN & VIOLET', 191, 'Day 1'),
(192, 31982, 2, 'RED', 192, 'Day 1'),
(193, 32034, 4, 'RED', 193, 'Day 1'),
(194, 31957, 7, 'GREEN', 194, 'Day 1'),
(195, 32053, 3, 'GREEN', 195, 'Day 1'),
(196, 32056, 6, 'RED', 196, 'Day 1'),
(197, 32087, 7, 'GREEN', 197, 'Day 1'),
(198, 31995, 5, 'GREEN & VIOLET', 198, 'Day 1'),
(199, 32008, 8, 'RED', 199, 'Day 1'),
(200, 31917, 7, 'GREEN', 200, 'Day 1'),
(201, 31835, 5, 'GREEN & VIOLET', 201, 'Day 1'),
(202, 31759, 9, 'GREEN', 202, 'Day 1'),
(203, 31817, 7, 'GREEN', 203, 'Day 1'),
(204, 31883, 3, 'GREEN', 204, 'Day 1'),
(205, 31972, 2, 'RED', 205, 'Day 1'),
(206, 31900, 0, 'RED & VIOLET', 206, 'Day 1'),
(207, 31891, 1, 'GREEN', 207, 'Day 1'),
(208, 31941, 1, 'GREEN', 208, 'Day 1'),
(209, 31927, 7, 'GREEN', 209, 'Day 1'),
(210, 31931, 1, 'GREEN', 210, 'Day 1'),
(211, 31969, 9, 'GREEN', 211, 'Day 1'),
(212, 31979, 9, 'GREEN', 212, 'Day 1'),
(213, 31919, 9, 'GREEN', 213, 'Day 1'),
(214, 31962, 2, 'RED', 214, 'Day 1'),
(215, 31897, 7, 'GREEN', 215, 'Day 1'),
(216, 31873, 3, 'GREEN', 216, 'Day 1'),
(217, 31863, 3, 'GREEN', 217, 'Day 1'),
(218, 31889, 9, 'GREEN', 218, 'Day 1'),
(219, 31800, 0, 'RED & VIOLET', 219, 'Day 1'),
(220, 31832, 2, 'RED', 220, 'Day 1'),
(221, 31793, 3, 'GREEN', 221, 'Day 1'),
(222, 31704, 4, 'RED', 222, 'Day 1'),
(223, 31623, 3, 'GREEN', 223, 'Day 1'),
(224, 31579, 9, 'GREEN', 224, 'Day 1'),
(225, 31546, 6, 'RED', 225, 'Day 1'),
(226, 31550, 0, 'RED & VIOLET', 226, 'Day 1'),
(227, 31586, 6, 'RED', 227, 'Day 1'),
(228, 31539, 9, 'GREEN', 228, 'Day 1'),
(229, 31550, 0, 'RED & VIOLET', 229, 'Day 1'),
(230, 31564, 4, 'RED', 230, 'Day 1'),
(231, 31476, 6, 'RED', 231, 'Day 1'),
(232, 31528, 8, 'RED', 232, 'Day 1'),
(233, 31556, 6, 'RED', 233, 'Day 1'),
(234, 31609, 9, 'GREEN', 234, 'Day 1'),
(235, 31644, 4, 'RED', 235, 'Day 1'),
(236, 31574, 4, 'RED', 236, 'Day 1'),
(237, 31566, 6, 'RED', 237, 'Day 1'),
(238, 31614, 4, 'RED', 238, 'Day 1'),
(239, 31578, 8, 'RED', 239, 'Day 1'),
(240, 31668, 8, 'RED', 240, 'Day 1'),
(241, 31736, 6, 'RED', 241, 'Day 1'),
(242, 31642, 2, 'RED', 242, 'Day 1'),
(243, 31634, 4, 'RED', 243, 'Day 1'),
(244, 31572, 2, 'RED', 244, 'Day 1'),
(245, 31586, 6, 'RED', 245, 'Day 1'),
(246, 31672, 2, 'RED', 246, 'Day 1'),
(247, 31676, 6, 'RED', 247, 'Day 1'),
(248, 31699, 9, 'GREEN', 248, 'Day 1'),
(249, 31604, 4, 'RED', 249, 'Day 1'),
(250, 31555, 5, 'GREEN & VIOLET', 250, 'Day 1'),
(251, 31487, 7, 'GREEN', 251, 'Day 1'),
(252, 31439, 9, 'GREEN', 252, 'Day 1'),
(253, 31423, 3, 'GREEN', 253, 'Day 1'),
(254, 31353, 3, 'GREEN', 254, 'Day 1'),
(255, 31261, 1, 'GREEN', 255, 'Day 1'),
(256, 31233, 3, 'GREEN', 256, 'Day 1'),
(257, 31225, 5, 'GREEN & VIOLET', 257, 'Day 1'),
(258, 31251, 1, 'GREEN', 258, 'Day 1'),
(259, 31204, 4, 'RED', 259, 'Day 1'),
(260, 31193, 3, 'GREEN', 260, 'Day 1'),
(261, 31216, 6, 'RED', 261, 'Day 1'),
(262, 31182, 2, 'RED', 262, 'Day 1'),
(263, 31237, 7, 'GREEN', 263, 'Day 1'),
(264, 31169, 9, 'GREEN', 264, 'Day 1'),
(265, 31188, 8, 'RED', 265, 'Day 1'),
(266, 31105, 5, 'GREEN & VIOLET', 266, 'Day 1'),
(267, 31091, 1, 'GREEN', 267, 'Day 1'),
(268, 31181, 1, 'GREEN', 268, 'Day 1'),
(269, 31090, 0, 'RED & VIOLET', 269, 'Day 1'),
(270, 31026, 6, 'RED', 270, 'Day 1'),
(271, 30940, 0, 'RED & VIOLET', 271, 'Day 1'),
(272, 31006, 6, 'RED', 272, 'Day 1'),
(273, 31026, 6, 'RED', 273, 'Day 1'),
(274, 31017, 7, 'GREEN', 274, 'Day 1'),
(275, 31004, 4, 'RED', 275, 'Day 1'),
(276, 30919, 9, 'GREEN', 276, 'Day 1'),
(277, 31013, 3, 'GREEN', 277, 'Day 1'),
(278, 30967, 7, 'GREEN', 278, 'Day 1'),
(279, 31067, 7, 'GREEN', 279, 'Day 1'),
(280, 31123, 3, 'GREEN', 280, 'Day 1'),
(281, 31145, 5, 'GREEN & VIOLET', 281, 'Day 1'),
(282, 31060, 0, 'RED & VIOLET', 282, 'Day 1'),
(283, 31113, 3, 'GREEN', 283, 'Day 1'),
(284, 31181, 1, 'GREEN', 284, 'Day 1'),
(285, 31217, 7, 'GREEN', 285, 'Day 1'),
(286, 31314, 4, 'RED', 286, 'Day 1'),
(287, 31350, 0, 'RED & VIOLET', 287, 'Day 1'),
(288, 31377, 7, 'GREEN', 288, 'Day 1'),
(289, 31409, 9, 'GREEN', 289, 'Day 1'),
(290, 31504, 4, 'RED', 290, 'Day 1'),
(291, 31467, 7, 'GREEN', 291, 'Day 1'),
(292, 31514, 4, 'RED', 292, 'Day 1'),
(293, 31445, 5, 'GREEN & VIOLET', 293, 'Day 1'),
(294, 31506, 6, 'RED', 294, 'Day 1'),
(295, 31415, 5, 'GREEN & VIOLET', 295, 'Day 1'),
(296, 31410, 0, 'RED & VIOLET', 296, 'Day 1'),
(297, 31445, 5, 'GREEN & VIOLET', 297, 'Day 1'),
(298, 31489, 9, 'GREEN', 298, 'Day 1'),
(299, 31575, 5, 'GREEN & VIOLET', 299, 'Day 1'),
(300, 31677, 7, 'GREEN', 300, 'Day 1'),
(301, 31724, 4, 'RED', 301, 'Day 1'),
(302, 31685, 5, 'GREEN & VIOLET', 302, 'Day 1'),
(303, 31610, 0, 'RED & VIOLET', 303, 'Day 1'),
(304, 31679, 9, 'GREEN', 304, 'Day 1'),
(305, 31609, 9, 'GREEN', 305, 'Day 1'),
(306, 31640, 0, 'RED & VIOLET', 306, 'Day 1'),
(307, 31611, 1, 'GREEN', 307, 'Day 1'),
(308, 31618, 8, 'RED', 308, 'Day 1'),
(309, 31684, 4, 'RED', 309, 'Day 1'),
(310, 31614, 4, 'RED', 310, 'Day 1'),
(311, 31587, 7, 'GREEN', 311, 'Day 1'),
(312, 31561, 1, 'GREEN', 312, 'Day 1'),
(313, 31574, 4, 'RED', 313, 'Day 1'),
(314, 31614, 4, 'RED', 314, 'Day 1'),
(315, 31637, 7, 'GREEN', 315, 'Day 1'),
(316, 31716, 6, 'RED', 316, 'Day 1'),
(317, 31662, 2, 'RED', 317, 'Day 1'),
(318, 31723, 3, 'GREEN', 318, 'Day 1'),
(319, 31754, 4, 'RED', 319, 'Day 1'),
(320, 31707, 7, 'GREEN', 320, 'Day 1'),
(321, 31615, 5, 'GREEN & VIOLET', 321, 'Day 1'),
(322, 31571, 1, 'GREEN', 322, 'Day 1'),
(323, 31638, 8, 'RED', 323, 'Day 1'),
(324, 31629, 9, 'GREEN', 324, 'Day 1'),
(325, 31608, 8, 'RED', 325, 'Day 1'),
(326, 31530, 0, 'RED & VIOLET', 326, 'Day 1'),
(327, 31481, 1, 'GREEN', 327, 'Day 1'),
(328, 31395, 5, 'GREEN & VIOLET', 328, 'Day 1'),
(329, 31477, 7, 'GREEN', 329, 'Day 1'),
(330, 31470, 0, 'RED & VIOLET', 330, 'Day 1'),
(331, 31427, 7, 'GREEN', 331, 'Day 1'),
(332, 31478, 8, 'RED', 332, 'Day 1'),
(333, 31440, 0, 'RED & VIOLET', 333, 'Day 1'),
(334, 31438, 8, 'RED', 334, 'Day 1'),
(335, 31400, 0, 'RED & VIOLET', 335, 'Day 1'),
(336, 31322, 2, 'RED', 336, 'Day 1'),
(337, 31386, 6, 'RED', 337, 'Day 1'),
(338, 31337, 7, 'GREEN', 338, 'Day 1'),
(339, 31284, 4, 'RED', 339, 'Day 1'),
(340, 31277, 7, 'GREEN', 340, 'Day 1'),
(341, 31206, 6, 'RED', 341, 'Day 1'),
(342, 31156, 6, 'RED', 342, 'Day 1'),
(343, 31204, 4, 'RED', 343, 'Day 1'),
(344, 31214, 4, 'RED', 344, 'Day 1'),
(345, 31283, 3, 'GREEN', 345, 'Day 1'),
(346, 31376, 6, 'RED', 346, 'Day 1'),
(347, 31473, 3, 'GREEN', 347, 'Day 1'),
(348, 31431, 1, 'GREEN', 348, 'Day 1'),
(349, 31398, 8, 'RED', 349, 'Day 1'),
(350, 31360, 0, 'RED & VIOLET', 350, 'Day 1'),
(351, 31312, 2, 'RED', 351, 'Day 1'),
(352, 31419, 9, 'GREEN', 352, 'Day 1'),
(353, 31467, 7, 'GREEN', 353, 'Day 1'),
(354, 31414, 4, 'RED', 354, 'Day 1'),
(355, 31350, 0, 'RED & VIOLET', 355, 'Day 1'),
(356, 31290, 0, 'RED & VIOLET', 356, 'Day 1'),
(357, 31362, 2, 'RED', 357, 'Day 1'),
(358, 31368, 8, 'RED', 358, 'Day 1'),
(359, 31398, 8, 'RED', 359, 'Day 1'),
(360, 31477, 7, 'GREEN', 360, 'Day 1'),
(361, 31429, 9, 'GREEN', 361, 'Day 1'),
(362, 31367, 7, 'GREEN', 362, 'Day 1'),
(363, 31379, 9, 'GREEN', 363, 'Day 1'),
(364, 31324, 4, 'RED', 364, 'Day 1'),
(365, 31346, 6, 'RED', 365, 'Day 1'),
(366, 31281, 1, 'GREEN', 366, 'Day 1'),
(367, 31344, 4, 'RED', 367, 'Day 1'),
(368, 31431, 1, 'GREEN', 368, 'Day 1'),
(369, 31467, 7, 'GREEN', 369, 'Day 1'),
(370, 31540, 0, 'RED & VIOLET', 370, 'Day 1'),
(371, 31567, 7, 'GREEN', 371, 'Day 1'),
(372, 31554, 4, 'RED', 372, 'Day 1'),
(373, 31600, 0, 'RED & VIOLET', 373, 'Day 1'),
(374, 31589, 9, 'GREEN', 374, 'Day 1'),
(375, 31644, 4, 'RED', 375, 'Day 1'),
(376, 31708, 8, 'RED', 376, 'Day 1'),
(377, 31682, 2, 'RED', 377, 'Day 1'),
(378, 31671, 1, 'GREEN', 378, 'Day 1'),
(379, 31575, 5, 'GREEN & VIOLET', 379, 'Day 1'),
(380, 31625, 5, 'GREEN & VIOLET', 380, 'Day 1'),
(381, 31536, 6, 'RED', 381, 'Day 1'),
(382, 31567, 7, 'GREEN', 382, 'Day 1'),
(383, 31541, 1, 'GREEN', 383, 'Day 1'),
(384, 31543, 3, 'GREEN', 384, 'Day 1'),
(385, 31498, 8, 'RED', 385, 'Day 1'),
(386, 31424, 4, 'RED', 386, 'Day 1'),
(387, 31331, 1, 'GREEN', 387, 'Day 1'),
(388, 31284, 4, 'RED', 388, 'Day 1'),
(389, 31183, 3, 'GREEN', 389, 'Day 1'),
(390, 31270, 0, 'RED & VIOLET', 390, 'Day 1'),
(391, 31185, 5, 'GREEN & VIOLET', 391, 'Day 1'),
(392, 31227, 7, 'GREEN', 392, 'Day 1'),
(393, 31171, 1, 'GREEN', 393, 'Day 1'),
(394, 31115, 5, 'GREEN & VIOLET', 394, 'Day 1'),
(395, 31177, 7, 'GREEN', 395, 'Day 1'),
(396, 31277, 7, 'GREEN', 396, 'Day 1'),
(397, 31185, 5, 'GREEN & VIOLET', 397, 'Day 1'),
(398, 31189, 9, 'GREEN', 398, 'Day 1'),
(399, 31137, 7, 'GREEN', 399, 'Day 1'),
(400, 31086, 6, 'RED', 400, 'Day 1'),
(401, 31176, 6, 'RED', 401, 'Day 1'),
(402, 31129, 9, 'GREEN', 402, 'Day 1'),
(403, 31136, 6, 'RED', 403, 'Day 1'),
(404, 31167, 7, 'GREEN', 404, 'Day 1'),
(405, 31156, 6, 'RED', 405, 'Day 1'),
(406, 31222, 2, 'RED', 406, 'Day 1'),
(407, 31262, 2, 'RED', 407, 'Day 1'),
(408, 31326, 6, 'RED', 408, 'Day 1'),
(409, 31388, 8, 'RED', 409, 'Day 1'),
(410, 31489, 9, 'GREEN', 410, 'Day 1'),
(411, 31576, 6, 'RED', 411, 'Day 1'),
(412, 31583, 3, 'GREEN', 412, 'Day 1'),
(413, 31633, 3, 'GREEN', 413, 'Day 1'),
(414, 31721, 1, 'GREEN', 414, 'Day 1'),
(415, 31757, 7, 'GREEN', 415, 'Day 1'),
(416, 31731, 1, 'GREEN', 416, 'Day 1'),
(417, 31721, 1, 'GREEN', 417, 'Day 1'),
(418, 31633, 3, 'GREEN', 418, 'Day 1'),
(419, 31640, 0, 'RED & VIOLET', 419, 'Day 1'),
(420, 31582, 2, 'RED', 420, 'Day 1'),
(421, 31508, 8, 'RED', 421, 'Day 1'),
(422, 31557, 7, 'GREEN', 422, 'Day 1'),
(423, 31514, 4, 'RED', 423, 'Day 1'),
(424, 31435, 5, 'GREEN & VIOLET', 424, 'Day 1'),
(425, 31345, 5, 'GREEN & VIOLET', 425, 'Day 1'),
(426, 31347, 7, 'GREEN', 426, 'Day 1'),
(427, 31316, 6, 'RED', 427, 'Day 1'),
(428, 31287, 7, 'GREEN', 428, 'Day 1'),
(429, 31194, 4, 'RED', 429, 'Day 1'),
(430, 31193, 3, 'GREEN', 430, 'Day 1'),
(431, 31178, 8, 'RED', 431, 'Day 1'),
(432, 31112, 2, 'RED', 432, 'Day 1'),
(433, 31129, 9, 'GREEN', 433, 'Day 1'),
(434, 31163, 3, 'GREEN', 434, 'Day 1'),
(435, 31220, 0, 'RED & VIOLET', 435, 'Day 1'),
(436, 31223, 3, 'GREEN', 436, 'Day 1'),
(437, 31208, 8, 'RED', 437, 'Day 1'),
(438, 31211, 1, 'GREEN', 438, 'Day 1'),
(439, 31160, 0, 'RED & VIOLET', 439, 'Day 1'),
(440, 31235, 5, 'GREEN & VIOLET', 440, 'Day 1'),
(441, 31173, 3, 'GREEN', 441, 'Day 1'),
(442, 31239, 9, 'GREEN', 442, 'Day 1'),
(443, 31146, 6, 'RED', 443, 'Day 1'),
(444, 31117, 7, 'GREEN', 444, 'Day 1'),
(445, 31116, 6, 'RED', 445, 'Day 1'),
(446, 31133, 3, 'GREEN', 446, 'Day 1'),
(447, 31131, 1, 'GREEN', 447, 'Day 1'),
(448, 31169, 9, 'GREEN', 448, 'Day 1'),
(449, 31129, 9, 'GREEN', 449, 'Day 1'),
(450, 31053, 3, 'GREEN', 450, 'Day 1'),
(451, 31122, 2, 'RED', 451, 'Day 1'),
(452, 31198, 8, 'RED', 452, 'Day 1'),
(453, 31175, 5, 'GREEN & VIOLET', 453, 'Day 1'),
(454, 31236, 6, 'RED', 454, 'Day 1'),
(455, 31301, 1, 'GREEN', 455, 'Day 1'),
(456, 31293, 3, 'GREEN', 456, 'Day 1'),
(457, 31269, 9, 'GREEN', 457, 'Day 1'),
(458, 31185, 5, 'GREEN & VIOLET', 458, 'Day 1'),
(459, 31121, 1, 'GREEN', 459, 'Day 1'),
(460, 31108, 8, 'RED', 460, 'Day 1'),
(461, 31127, 7, 'GREEN', 461, 'Day 1'),
(462, 31119, 9, 'GREEN', 462, 'Day 1'),
(463, 31071, 1, 'GREEN', 463, 'Day 1'),
(464, 31131, 1, 'GREEN', 464, 'Day 1'),
(465, 31223, 3, 'GREEN', 465, 'Day 1'),
(466, 31280, 0, 'RED & VIOLET', 466, 'Day 1'),
(467, 31229, 9, 'GREEN', 467, 'Day 1'),
(468, 31261, 1, 'GREEN', 468, 'Day 1'),
(469, 31203, 3, 'GREEN', 469, 'Day 1'),
(470, 31185, 5, 'GREEN & VIOLET', 470, 'Day 1'),
(471, 31164, 4, 'RED', 471, 'Day 1'),
(472, 31254, 4, 'RED', 472, 'Day 1'),
(473, 31274, 4, 'RED', 473, 'Day 1'),
(474, 31211, 1, 'GREEN', 474, 'Day 1'),
(475, 31144, 4, 'RED', 475, 'Day 1'),
(476, 31123, 3, 'GREEN', 476, 'Day 1'),
(477, 31079, 9, 'GREEN', 477, 'Day 1'),
(478, 31162, 2, 'RED', 478, 'Day 1'),
(479, 31219, 9, 'GREEN', 479, 'Day 1'),
(480, 29691, 1, 'GREEN', 480, 'Day 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rchwallet`
--

CREATE TABLE `tbl_rchwallet` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `actiontype` varchar(50) NOT NULL,
  `uid` varchar(225) NOT NULL,
  `time` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recharge`
--

CREATE TABLE `tbl_recharge` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` text DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdate` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `txn` varchar(200) NOT NULL,
  `paymentMethod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_refund`
--

CREATE TABLE `tbl_refund` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `price` float NOT NULL,
  `randomprice` float NOT NULL,
  `result` int(11) NOT NULL,
  `randomresult` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `randomcolor` varchar(100) NOT NULL,
  `resulttype` varchar(50) NOT NULL,
  `tabtype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reward`
--

CREATE TABLE `tbl_reward` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tempwinner`
--

CREATE TABLE `tbl_tempwinner` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `total` float NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE `tbl_test` (
  `id` int(11) NOT NULL,
  `test` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `code` varchar(255) NOT NULL,
  `owncode` varchar(255) NOT NULL,
  `privacy` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `mobile`, `email`, `password`, `code`, `owncode`, `privacy`, `status`, `createdate`) VALUES
(1, '1234567890', 'demo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '111116', '123456', 'on', 1, '2022-07-03 15:20:01'),
(2, '8355965199', 'demo@gmail.com', '25d55ad283aa400af464c76d713c07ad', '123456', '654321', 'on', 1, '2022-07-03 15:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userresult`
--

CREATE TABLE `tbl_userresult` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `openprice` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `paidamount` float NOT NULL,
  `fee` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `envelopestatus` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_wallet`
--

INSERT INTO `tbl_wallet` (`id`, `userid`, `amount`, `envelopestatus`, `createdate`) VALUES
(1, 1, '0', 0, '2022-07-03 15:22:14'),
(2, 2, '0', 1, '2023-03-14 10:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walletsummery`
--

CREATE TABLE `tbl_walletsummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `actiontype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal`
--

CREATE TABLE `tbl_withdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `payout` varchar(50) NOT NULL,
  `payid` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_menu`
--
ALTER TABLE `child_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red envlop`
--
ALTER TABLE `red envlop`
  ADD PRIMARY KEY (`red envelop`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_intrest`
--
ALTER TABLE `tbl_intrest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_intrest_amt`
--
ALTER TABLE `tbl_intrest_amt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rchwallet`
--
ALTER TABLE `tbl_rchwallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_test`
--
ALTER TABLE `tbl_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `child_menu`
--
ALTER TABLE `child_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `red envlop`
--
ALTER TABLE `red envlop`
  MODIFY `red envelop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_intrest`
--
ALTER TABLE `tbl_intrest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_intrest_amt`
--
ALTER TABLE `tbl_intrest_amt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `tbl_rchwallet`
--
ALTER TABLE `tbl_rchwallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_test`
--
ALTER TABLE `tbl_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
