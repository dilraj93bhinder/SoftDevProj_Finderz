<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html><html>
   <head>
      <link href="<c:url value="/resources/styles/home.css" />"  rel="stylesheet" />
      <link href="<c:url value="/resources/styles/rentals.css" />"  rel="stylesheet" />
      <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.form-inline {  
  display: grid;
  flex-flow: row wrap;
  align-items: center;
}

.form-inline label {
  margin: 5px 10px 5px 0;
}

.form-inline input {
  vertical-align: middle;
  margin: 5px 10px 5px 0;
  padding: 10px;
  background-color: #fff;
  border: 1px solid #ddd;
}

.form-inline button {
  padding: 10px 20px;
  background-color: dodgerblue;
  border: 1px solid #ddd;
  color: white;
  cursor: pointer;
}

.form-inline button:hover {
  background-color: royalblue;
}
.card1{

    padding: 15px;
    width: 100%;
    box-sizing: border-box;
    box-shadow: 0 0 8.7px 1.3px rgba(124, 124, 124, 0.38);
    margin: 13px;
}
@media (max-width: 800px) {
  .form-inline input {
    margin: 10px 0;
  }
  
  .form-inline {
    flex-direction: column;
    align-items: stretch;
  }
}
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}

select {
    display: grid;
    border: 1;
    width: auto;
    margin-left: 0px;
    outline: rgba(45, 15, 15, 0.35);
    padding: 8px;
    border-color: rgba(0, 0, 0, 0.25);
    border-bottom: 2px solid $dark;
    transition: all .4s ease-in-out;
    &: hover {;
    cursor: pointer;
    }

</style>
   </head>
   <body class="rentals">
      <header>
         <a href='<c:url value="/home/${user.user_id}" />'><span class="logo"><img src="<c:url value="/resources/images/logo.svg" />"/></span></a>
         <span class="right_menu" > <img src="<c:url value="/resources/images/menu.png" />"> </span>
         <span class="menu">
            <ul>
            	<li> <a href="<c:url value="/User/post_ads/${user.user_id}" />">Post Ads</a>
               <li> <a href="<c:url value="/User/listProperty/${user.user_id}" />">List Property</a></li>
               <!-- <li> <a href="#">Favorites</a></li> -->
               <li><a href="<c:url value="/User/contactUs/${user.user_id}" />">Contact Us</a></li>
               <li><a href="#popup3" class="button">My Account</a></li>
               <li><a href="<c:url value="/logout/${user.user_id}" />">Logout</a></li>
            </ul>
         </span>
      </header>
      <section id="header_sec_rentals" style="margin-bottom:10px">
         <h2> Post New Rental Ads </h2>
      </section>
      <section class="sec_card">
      <div class="sec_content">
         <div class="card1">
            <form:form class="form-inline" action="../addProperty" method="post" commandName="Property">
 <%-- <form:hidden path="advertisement_id"/> --%>
  <form:hidden path="user_id"/>          
  <label>Ad Title:</label>
  <form:input type="text" placeholder="Enter Ad Title" name="Title" path="advertisement_title" />
  <label>Ad Description:</label>
  <form:input type="text" placeholder="Enter Description" name="Description" path="advertisement_description" />
  <label>Property Address:</label>
  <form:input type="text" placeholder="Enter Address" name="Address" path="" />
  
   <%-- <form:input type="text" placeholder="Enter Street Name 1" name="StreetName1">
  <form:input type="text" placeholder="Enter Street Name 2" name="StreetName2"> 
  <form:input type="text" placeholder="Enter City" name="City">
  <label>Select Province:</label>
  <select id="Province" name="Province">
	<option value="AB">Alberta</option>
	<option value="BC">British Columbia</option>
	<option value="MB">Manitoba</option>
	<option value="NB">New Brunswick</option>
	<option value="NL">Newfoundland and Labrador</option>
	<option value="NS">Nova Scotia</option>
	<option value="ON">Ontario</option>
	<option value="PE">Prince Edward Island</option>
	<option value="QC">Quebec</option>
	<option value="SK">Saskatchewan</option>
	<option value="NT">Northwest Territories</option>
	<option value="NU">Nunavut</option>
	<option value="YT">Yukon</option>
</select>
<label>Select Country:</label>
<select id="country" name="country">
   <option value="Afganistan">Afghanistan</option>
   <option value="Albania">Albania</option>
   <option value="Algeria">Algeria</option>
   <option value="American Samoa">American Samoa</option>
   <option value="Andorra">Andorra</option>
   <option value="Angola">Angola</option>
   <option value="Anguilla">Anguilla</option>
   <option value="Antigua & Barbuda">Antigua & Barbuda</option>
   <option value="Argentina">Argentina</option>
   <option value="Armenia">Armenia</option>
   <option value="Aruba">Aruba</option>
   <option value="Australia">Australia</option>
   <option value="Austria">Austria</option>
   <option value="Azerbaijan">Azerbaijan</option>
   <option value="Bahamas">Bahamas</option>
   <option value="Bahrain">Bahrain</option>
   <option value="Bangladesh">Bangladesh</option>
   <option value="Barbados">Barbados</option>
   <option value="Belarus">Belarus</option>
   <option value="Belgium">Belgium</option>
   <option value="Belize">Belize</option>
   <option value="Benin">Benin</option>
   <option value="Bermuda">Bermuda</option>
   <option value="Bhutan">Bhutan</option>
   <option value="Bolivia">Bolivia</option>
   <option value="Bonaire">Bonaire</option>
   <option value="Bosnia & Herzegovina">Bosnia & Herzegovina</option>
   <option value="Botswana">Botswana</option>
   <option value="Brazil">Brazil</option>
   <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
   <option value="Brunei">Brunei</option>
   <option value="Bulgaria">Bulgaria</option>
   <option value="Burkina Faso">Burkina Faso</option>
   <option value="Burundi">Burundi</option>
   <option value="Cambodia">Cambodia</option>
   <option value="Cameroon">Cameroon</option>
   <option value="Canada">Canada</option>
   <option value="Canary Islands">Canary Islands</option>
   <option value="Cape Verde">Cape Verde</option>
   <option value="Cayman Islands">Cayman Islands</option>
   <option value="Central African Republic">Central African Republic</option>
   <option value="Chad">Chad</option>
   <option value="Channel Islands">Channel Islands</option>
   <option value="Chile">Chile</option>
   <option value="China">China</option>
   <option value="Christmas Island">Christmas Island</option>
   <option value="Cocos Island">Cocos Island</option>
   <option value="Colombia">Colombia</option>
   <option value="Comoros">Comoros</option>
   <option value="Congo">Congo</option>
   <option value="Cook Islands">Cook Islands</option>
   <option value="Costa Rica">Costa Rica</option>
   <option value="Cote DIvoire">Cote DIvoire</option>
   <option value="Croatia">Croatia</option>
   <option value="Cuba">Cuba</option>
   <option value="Curaco">Curacao</option>
   <option value="Cyprus">Cyprus</option>
   <option value="Czech Republic">Czech Republic</option>
   <option value="Denmark">Denmark</option>
   <option value="Djibouti">Djibouti</option>
   <option value="Dominica">Dominica</option>
   <option value="Dominican Republic">Dominican Republic</option>
   <option value="East Timor">East Timor</option>
   <option value="Ecuador">Ecuador</option>
   <option value="Egypt">Egypt</option>
   <option value="El Salvador">El Salvador</option>
   <option value="Equatorial Guinea">Equatorial Guinea</option>
   <option value="Eritrea">Eritrea</option>
   <option value="Estonia">Estonia</option>
   <option value="Ethiopia">Ethiopia</option>
   <option value="Falkland Islands">Falkland Islands</option>
   <option value="Faroe Islands">Faroe Islands</option>
   <option value="Fiji">Fiji</option>
   <option value="Finland">Finland</option>
   <option value="France">France</option>
   <option value="French Guiana">French Guiana</option>
   <option value="French Polynesia">French Polynesia</option>
   <option value="French Southern Ter">French Southern Ter</option>
   <option value="Gabon">Gabon</option>
   <option value="Gambia">Gambia</option>
   <option value="Georgia">Georgia</option>
   <option value="Germany">Germany</option>
   <option value="Ghana">Ghana</option>
   <option value="Gibraltar">Gibraltar</option>
   <option value="Great Britain">Great Britain</option>
   <option value="Greece">Greece</option>
   <option value="Greenland">Greenland</option>
   <option value="Grenada">Grenada</option>
   <option value="Guadeloupe">Guadeloupe</option>
   <option value="Guam">Guam</option>
   <option value="Guatemala">Guatemala</option>
   <option value="Guinea">Guinea</option>
   <option value="Guyana">Guyana</option>
   <option value="Haiti">Haiti</option>
   <option value="Hawaii">Hawaii</option>
   <option value="Honduras">Honduras</option>
   <option value="Hong Kong">Hong Kong</option>
   <option value="Hungary">Hungary</option>
   <option value="Iceland">Iceland</option>
   <option value="Indonesia">Indonesia</option>
   <option value="India">India</option>
   <option value="Iran">Iran</option>
   <option value="Iraq">Iraq</option>
   <option value="Ireland">Ireland</option>
   <option value="Isle of Man">Isle of Man</option>
   <option value="Israel">Israel</option>
   <option value="Italy">Italy</option>
   <option value="Jamaica">Jamaica</option>
   <option value="Japan">Japan</option>
   <option value="Jordan">Jordan</option>
   <option value="Kazakhstan">Kazakhstan</option>
   <option value="Kenya">Kenya</option>
   <option value="Kiribati">Kiribati</option>
   <option value="Korea North">Korea North</option>
   <option value="Korea Sout">Korea South</option>
   <option value="Kuwait">Kuwait</option>
   <option value="Kyrgyzstan">Kyrgyzstan</option>
   <option value="Laos">Laos</option>
   <option value="Latvia">Latvia</option>
   <option value="Lebanon">Lebanon</option>
   <option value="Lesotho">Lesotho</option>
   <option value="Liberia">Liberia</option>
   <option value="Libya">Libya</option>
   <option value="Liechtenstein">Liechtenstein</option>
   <option value="Lithuania">Lithuania</option>
   <option value="Luxembourg">Luxembourg</option>
   <option value="Macau">Macau</option>
   <option value="Macedonia">Macedonia</option>
   <option value="Madagascar">Madagascar</option>
   <option value="Malaysia">Malaysia</option>
   <option value="Malawi">Malawi</option>
   <option value="Maldives">Maldives</option>
   <option value="Mali">Mali</option>
   <option value="Malta">Malta</option>
   <option value="Marshall Islands">Marshall Islands</option>
   <option value="Martinique">Martinique</option>
   <option value="Mauritania">Mauritania</option>
   <option value="Mauritius">Mauritius</option>
   <option value="Mayotte">Mayotte</option>
   <option value="Mexico">Mexico</option>
   <option value="Midway Islands">Midway Islands</option>
   <option value="Moldova">Moldova</option>
   <option value="Monaco">Monaco</option>
   <option value="Mongolia">Mongolia</option>
   <option value="Montserrat">Montserrat</option>
   <option value="Morocco">Morocco</option>
   <option value="Mozambique">Mozambique</option>
   <option value="Myanmar">Myanmar</option>
   <option value="Nambia">Nambia</option>
   <option value="Nauru">Nauru</option>
   <option value="Nepal">Nepal</option>
   <option value="Netherland Antilles">Netherland Antilles</option>
   <option value="Netherlands">Netherlands (Holland, Europe)</option>
   <option value="Nevis">Nevis</option>
   <option value="New Caledonia">New Caledonia</option>
   <option value="New Zealand">New Zealand</option>
   <option value="Nicaragua">Nicaragua</option>
   <option value="Niger">Niger</option>
   <option value="Nigeria">Nigeria</option>
   <option value="Niue">Niue</option>
   <option value="Norfolk Island">Norfolk Island</option>
   <option value="Norway">Norway</option>
   <option value="Oman">Oman</option>
   <option value="Pakistan">Pakistan</option>
   <option value="Palau Island">Palau Island</option>
   <option value="Palestine">Palestine</option>
   <option value="Panama">Panama</option>
   <option value="Papua New Guinea">Papua New Guinea</option>
   <option value="Paraguay">Paraguay</option>
   <option value="Peru">Peru</option>
   <option value="Phillipines">Philippines</option>
   <option value="Pitcairn Island">Pitcairn Island</option>
   <option value="Poland">Poland</option>
   <option value="Portugal">Portugal</option>
   <option value="Puerto Rico">Puerto Rico</option>
   <option value="Qatar">Qatar</option>
   <option value="Republic of Montenegro">Republic of Montenegro</option>
   <option value="Republic of Serbia">Republic of Serbia</option>
   <option value="Reunion">Reunion</option>
   <option value="Romania">Romania</option>
   <option value="Russia">Russia</option>
   <option value="Rwanda">Rwanda</option>
   <option value="St Barthelemy">St Barthelemy</option>
   <option value="St Eustatius">St Eustatius</option>
   <option value="St Helena">St Helena</option>
   <option value="St Kitts-Nevis">St Kitts-Nevis</option>
   <option value="St Lucia">St Lucia</option>
   <option value="St Maarten">St Maarten</option>
   <option value="St Pierre & Miquelon">St Pierre & Miquelon</option>
   <option value="St Vincent & Grenadines">St Vincent & Grenadines</option>
   <option value="Saipan">Saipan</option>
   <option value="Samoa">Samoa</option>
   <option value="Samoa American">Samoa American</option>
   <option value="San Marino">San Marino</option>
   <option value="Sao Tome & Principe">Sao Tome & Principe</option>
   <option value="Saudi Arabia">Saudi Arabia</option>
   <option value="Senegal">Senegal</option>
   <option value="Seychelles">Seychelles</option>
   <option value="Sierra Leone">Sierra Leone</option>
   <option value="Singapore">Singapore</option>
   <option value="Slovakia">Slovakia</option>
   <option value="Slovenia">Slovenia</option>
   <option value="Solomon Islands">Solomon Islands</option>
   <option value="Somalia">Somalia</option>
   <option value="South Africa">South Africa</option>
   <option value="Spain">Spain</option>
   <option value="Sri Lanka">Sri Lanka</option>
   <option value="Sudan">Sudan</option>
   <option value="Suriname">Suriname</option>
   <option value="Swaziland">Swaziland</option>
   <option value="Sweden">Sweden</option>
   <option value="Switzerland">Switzerland</option>
   <option value="Syria">Syria</option>
   <option value="Tahiti">Tahiti</option>
   <option value="Taiwan">Taiwan</option>
   <option value="Tajikistan">Tajikistan</option>
   <option value="Tanzania">Tanzania</option>
   <option value="Thailand">Thailand</option>
   <option value="Togo">Togo</option>
   <option value="Tokelau">Tokelau</option>
   <option value="Tonga">Tonga</option>
   <option value="Trinidad & Tobago">Trinidad & Tobago</option>
   <option value="Tunisia">Tunisia</option>
   <option value="Turkey">Turkey</option>
   <option value="Turkmenistan">Turkmenistan</option>
   <option value="Turks & Caicos Is">Turks & Caicos Is</option>
   <option value="Tuvalu">Tuvalu</option>
   <option value="Uganda">Uganda</option>
   <option value="United Kingdom">United Kingdom</option>
   <option value="Ukraine">Ukraine</option>
   <option value="United Arab Erimates">United Arab Emirates</option>
   <option value="United States of America">United States of America</option>
   <option value="Uraguay">Uruguay</option>
   <option value="Uzbekistan">Uzbekistan</option>
   <option value="Vanuatu">Vanuatu</option>
   <option value="Vatican City State">Vatican City State</option>
   <option value="Venezuela">Venezuela</option>
   <option value="Vietnam">Vietnam</option>
   <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
   <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
   <option value="Wake Island">Wake Island</option>
   <option value="Wallis & Futana Is">Wallis & Futana Is</option>
   <option value="Yemen">Yemen</option>
   <option value="Zaire">Zaire</option>
   <option value="Zambia">Zambia</option>
   <option value="Zimbabwe">Zimbabwe</option>
</select>

  <label>Postal Code:</label>
  <input type="text" placeholder="Enter Postal Code" name="PostalCode"> --%>
  <label>Number of Bedrooms :</label>
  <form:input type="number" placeholder="Enter Number of Bedrooms (Numbers Only)" name="NumberofBedrooms" path="ad_no_of_bedrooms" />
  <label>Number of Bathrooms:</label>
  <form:input type="number" placeholder="Enter Number of Bathrooms (Numbers Only)" name="NumberofBathrooms" path="ad_no_of_bathrooms" />   
  <label>Price:</label>
  <form:input type="number" placeholder="Enter Price $" name="Price" path="advertisement_price" />
  <!-- <p> 
            Upload Property Photos:              
            <input type="file" name=Image multiple>                                      
            <input type="submit" name="submit" value="Upload" > 
        </p>  -->
 
  <button type="submit">Submit</button>
</form:form>
         </div>
         </div>
      </section>
      
      <section class="company_details" style="margin-top:10px">
         <div class="sec_content">
            <table>
               <tr>
                  <td> 
                     <span class="logo"><img src="<c:url value="/resources/images/logo.svg" />"></span>
                  </td>
                  <td>
                     <h4> COMPANY </h4>
                     <span class="divider" > </span>
                     <ul>
                        <li> Careers </li>
                        <li> About Us </li>
                        <li> For Partners </li>
                        <li> Terms </li>
                        <li> Privacy Policy </li>
                        <li> Contact Us </li>
                        <li> Unsubscribe </li>
                     </ul>
                  </td>
                  <td>
                     <h4> PARTNER SITES </h4>
                     <span class="divider" > </span>
                     <ul>
                        <li> Careers </li>
                        <li> About Us </li>
                        <li> For Partners </li>
                        <li> Terms </li>
                     </ul>
                  </td>
                  <td>
                     <h4> EXPLORE </h4>
                     <span class="divider" > </span>
                     <ul>
                        <li> Careers </li>
                        <li> About Us </li>
                        <li> For Partners </li>
                        <li> Terms </li>
                        <li> Privacy Policy </li>
                     </ul>
                  </td>
               </tr>
            </table>
         </div>
      </section>
      <section class="company_link">
         <div class="sec_content">
            <h2> FOLLOW US </h2>
            <div class="social"> 
               <img src="<c:url value="/resources/images/ic_fb.svg" />"> 
               <img src="<c:url value="/resources/images/ic_insta.svg" />"> 
               <img src="<c:url value="/resources/images/ic_li.svg" />"> 
               <img src="<c:url value="/resources/images/ic_pin.svg" />"> 
               <img src="<c:url value="/resources/images/ic_twt.svg" />"> 
               <img src="<c:url value="/resources/images/ic_yt.svg" />"> 
            </div>
         </div>
      </section>
      <section class="bottom_sec"> </section>
      <div id="login" class="overlay">
         <div class="popup">
            <h2>Login</h2>
            <span class="divider" > </span>
            <a class="close" href="#">&times;</a>
            <div class="content">
               <input placeholder="EMAIL" />
               <input placeholder="PASSWORD" type="password" />
               <button> LOGIN </button>
               <p> Not Register ? <a  href="#signup"> Create Account </a> </p>
            </div>
         </div>
      </div>
      <div id="signup" class="overlay">
         <div class="popup">
            <h2>Sign Up</h2>
            <span class="divider" > </span>
            <a class="close" href="#">&times;</a>
            <div class="content">
               <input placeholder="NAME" />
               <input placeholder="EMAIL" />
               <input placeholder="PASSWORD" type="password" />
               <button> REGISTER </button>
               <p> Already have an account ? <a href="#login"> Login Here </a> </p>
            </div>
         </div>
      </div>
      <div id="popup3" class="overlay">
	<div class="popup">
		<h2>Update Account Info</h2>
      <span class="divider" > </span>

		<a class="close" href="#">&times;</a>
		<div class="content">
		<!-- login form start here----------- -------------->
		<form:form action="../User/add" method="post" commandName="user">
		<form:hidden path="user_id"/>
		<form:input placeholder="First Name"  type="text"  name="fname" path="user_first_name" />
		<form:input placeholder="Last Name"  type="text" name="lname" path="user_last_name"  />
		<form:input placeholder="Email"  type="text" name="email" path="user_email"  />
         <form:input placeholder="Phone Number"  type="text" name="phone" path="user_phone_number"  />
         <form:input placeholder="Password" type="password" name="password" path="user_password" />
         <button> UPDATE </button>
         </form:form>
         <!-- login form end here----------- ----------------->
         
		</div>
	</div>
</div>
   </body>
</html>