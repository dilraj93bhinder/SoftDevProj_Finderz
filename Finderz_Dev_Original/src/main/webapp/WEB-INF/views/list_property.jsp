<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
   	  <link href="<c:url value="/resources/styles/home.css" />" rel="stylesheet" >
      <link href="<c:url value="/resources/styles/rentals.css" />" rel="stylesheet" >
   </head>
   <body class="rentals">
      <header>
         <a href='<c:url value="/home/${user.user_id}" />'><span class="logo"><img src="<c:url value="/resources/images/logo.svg" />"/></span></a>
         <span class="right_menu" > <img src="<c:url value="/resources/images/menu.png" />"> </span>
         <span class="menu">
            <ul>
            <li> <a href="<c:url value="/User/post_ads/${user.user_id}" />">Post Ads</a>
               <li> <a href="<c:url value="/User/listProperty/${user.user_id}" />">List Property</a>
               <!-- <li> <a href="#">Favorites</a></li> -->
               <li><a href="<c:url value="/User/contactUs/${user.user_id}" />">Contact Us</a></li>
               <li><a href="#popup3" class="button">My Account</a></li>
               <li><a href="<c:url value="/logout/${user.user_id}" />">Logout</a></li>
               <!-- <li><a href="#login">Login</a></li> -->
            </ul>
         </span>
      </header>
      <section id="header_sec_rentals" style="margin-bottom:10px">
         <h2> Ready To Move </h2>
      </section>
      <c:forEach items="${propertyList}" var="property">
      <section class="sec_card">
      <div class="sec_content">
         <div class="card">
            <div class="image">
               <img src="<c:url value="${property.advertisement_image}" />">
            </div>
            <div class="container">
               <h4><b>${property.advertisement_title}</b></h4>
               <p><span class="circle_badge">${property.ad_no_of_bedrooms}</span> Bed    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="circle_badge">${property.ad_no_of_bathrooms}</span> Bath</p>
               <p><b>Price: $${property.advertisement_price}</b></p>
               <p><b>Location: East Scarborough</b></p>
               <p class="details">${property.advertisement_description}</p>
               <div class="footer">
                  <button>Housing News Desk</button>
                  <p class="small_p">${property.advertisement_date}</p>
               </div>
            </div>
         </div>
         </div>
      </section>
      </c:forEach>
      <%-- <section class="sec_card right">
       <div class="sec_content">
         <div class="card">
            <div class="container">
               <h4><b>John Doe</b></h4>
               <p><span class="circle_badge">4</span> Bed    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="circle_badge">4</span> Bed</p>
               <p><b>Category: Basement Apt</b></p>
               <p><b>Location: North York</b></p>
               <p class="details">Impressive 2250 sq.ft. Basement Apt with breathtaking curb appeal. Beautifully designed with exquisite detail and more windows than you can count! The front entrance provides a flair of elegance with its rounded archway, pillars and extensive porch. This luxury home has every feature you can think of with a large office off the foyer, tremendous kitchen with a walk-in pantry, direct access from the mudroom to the garage.  </p>
               <div class="footer">
                  <button>Housing News Desk</button>
                  <p class="small_p">Sep 2017</p>
               </div>
            </div>
            <div class="image">
               <img src="<c:url value="/resources/images/card1.jpg" />">
            </div>
         </div>
         </div>
      </section> --%>
      <section class="company_details" style="margin-top:10px">
         <div class="sec_content">
            <table>
               <tr>
                  <td> 
                     <span class="logo"><img src="<c:url value="/resources/images/logo.svg" />"/></span>
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