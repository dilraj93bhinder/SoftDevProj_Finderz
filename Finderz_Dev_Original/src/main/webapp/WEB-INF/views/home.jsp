<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
   <head>
      <link href="<c:url value="/resources/styles/home.css" />" rel="stylesheet" >
      <script src="<c:url value="/resources/js/home.js"/>"></script>
   </head>
   <body>
      <header>
         <a href="<c:url value="/home/${user.user_id}" />"><span class="logo"><img src="<c:url value="/resources/images/logo.svg" />"></span></a>
         <%-- <span class="right_menu" > <img src="<c:url value="/resources/images/menu.png" />"> </span> --%>
         <span class="menu">
         
            <ul>
               <li> <a href="<c:url value="/User/post_ads/${user.user_id}" />">Post Ads</a></li>
               <%-- <li> <a href="#" onclick="moveToListProperty('${user.user_id}')">List Property</a></li> --%>
               <li> <a href="<c:url value="/User/listProperty/${user.user_id}" />">List Property</a>
               <li><a href="<c:url value="../User/contactUs/${user.user_id}" />">Contact Us</a></li>
               <li><a href="#popup3" class="button">My Account</a></li>
               <li><a href="<c:url value="/logout/${user.user_id}" />">Logout</a></li>
               <!-- <li> <a href="#">Favorites</a></li> -->
               <!-- <li><a href="#">News</a></li> -->
               <!-- <li><a href="#popup1">Login</a></li> -->
            </ul>
         </span>
      </header>
      <section id="header_sec">
         <h2> Rent in Canada </h2>
         <div id="rent_btn">
            <button> RENT </button>
         </div>
         <div>
            <span class="arrow-down"></span>
         </div>
         <div id="search_sec">
            <div>
               <input placeholder="Enter Keywords" />
               <input placeholder="Search for locality, landmark, project, or builder" />
               <button> Search </button>
            </div>
         </div>

         <div class="bg" src="<c:url value="/resources/images/bg.png" /> "> </div>
      </section>
      <section class="featured_sec">
	      <section id="header_sec_rentals" style="margin-bottom:10px">
	         <h2 style="color:#000000"> Featured Properties </h2>
	      </section>


	      <section class="sec_content">      
	      
	      	<c:forEach items="${propertyList}" var="property">
		      <div class="sec_card">
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
		               <c:set var="userId" value="${property.user_id}"/>
		               <input type="hidden" id="userId" value="${property.user_id}"/>
		               <div class="footer">
		                  <button>Housing News Desk </button>
		                  <a href="https://mail.google.com/mail/?view=cm&fs=1&to=${userEmails.get(userId)}"><button>Contact Owner</button></a>
		                  <p class="small_p">${property.advertisement_date}</p>
		               </div>
		            </div>
		         </div>
	         </div>
      		</c:forEach>      
      	</section>
      	</section>
         <!-- </div> -->
     
      <section class="news">

	      <section id="header_sec_rentals" style="margin-bottom:10px">
	         <h2 style="color:#000000">News & Articles</h2>
	      </section>

      <section class="sec_content">
		      <div class="sec_card">
            <div class="card">
               <div class="image">
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
               </div>
               <div class="container">
                  <h4><b>John Doe</b></h4>
                  <p>The senior housing sector in Canada has the potential to reach USD 7.7 billion by 2030, from USD 1.26 billion in 2016, with the southern and western regions accounting for a majority of such projects, says a report by the PHD Chamber of Commerce and Industry</p>
               </div>
               <div class="footer">
                  <button>Housing News Desk</button>
                  <p class="small_p">Sep 2017</p>
               </div>
            </div>
			</div>
					      <div class="sec_card">
			
            <div class="card nopadding">
               <div class="image">
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
               </div>
               <div class="container">
                  <h4><b>John Doe</b></h4>
                  <p>The senior housing sector in Canada has the potential to reach USD 7.7 billion by 2030, from USD 1.26 billion in 2016, with the southern and western regions accounting for a majority of such projects, says a report by the PHD Chamber of Commerce and Industry</p>
               </div>
               <div class="footer">
                  <button>Housing News Desk</button>
                  <p class="small_p">Sep 2017</p>
               </div>
            </div>
            </div>
            		      <div class="sec_card">
            
            <div class="card nopadding">
               <div class="image">
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
               </div>
               <div class="container">
                  <h4><b>John Doe</b></h4>
                  <p>The senior housing sector in Canada has the potential to reach USD 7.7 billion by 2030, from USD 1.26 billion in 2016, with the southern and western regions accounting for a majority of such projects, says a report by the PHD Chamber of Commerce and Industry</p>
               </div>
               <div class="footer">
                  <button>Housing News Desk</button>
                  <p class="small_p">Sep 2017</p>
               </div>
			</div>
	         </div>
         </section>
      </section>
      <section>
         <h2>Browse top links to search your home</h2>
      </section>
      <section class="table_sec">
      <div class="sec_content">
         <table>
         <tr>
            <td>
               <div class="list_container">
               <h4> Filter Your Search </h4>
               <ul>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
               </ul>
               <div>
            </td>
            <td>
               <div class="list_container">
               <h4> Filter Your Search </h4>
               <ul>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
               </ul>
               <div>
            </td>
         </tr>
         <tr>
            <td>
               <div class="list_container">
               <h4> Filter Your Search </h4>
               <ul>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
               </ul>
               <div>
            </td>
            <td>
               <div class="list_container">
               <h4> Filter Your Search </h4>
               <ul>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
                  <li>Filter Your Search </li>
               </ul>
               <div>
            </td>
         </tr>
         </table>
         </div>
      </section>
      <section class="contact_us">
         <div class="sec_content">
            <h2> Contact Us </h2>
            <table>
            <tr>
               <td>
                  <label>
                  First name
                  </label>
                  <input />
               </td>
               <td>
                  <label>
                  Last name
                  </label>
                  <input />
               </td>
               <td rowspan="3" class="nopadding marginleft">
                  <div class="address" style="background:white;">
                     <p> <b> Address </b> </p>
                     <p> 3863 40th Stree, Toronto, CA  </p>
                     <p> support@finderz.com  </p>
                     <p> 123 456 (789)  </p>
                     <p> PIN : Y1Y 1Y1  </p>
                  </div>
               </td>
               <td rowspan="3" class="nopadding">
                  <div> <img width="100%" src="https://static-maps.yandex.ru/1.x/?lang=en-US&ll=-73.7638,42.6564&z=1&l=map&size=300,300" alt="Yandex Map of -73.7638,42.6564"> </div>
               </td>
            </tr>
            <tr>
               <td> <label>
                  Email
                  </label> <input />
               </td>
               <td> <label>
                  Phone
                  </label>  <input />
               </td>
            </tr>
            <tr>
               <td colspan="2"> <label>
                  Last name
                  </label>  <input />
               </td>
            </tr>
            </table>
         </div>
      </section>
      <section class="company_details">
         <div class="sec_content">
            <table>
            <tr>
               <td>

                 <span class="logo"><img src="<c:url value="/resources/images/logo.svg" /> "/></span>
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
               <img src="<c:url value="/resources/images/ic_fb.svg" /> ">
               <img src="<c:url value="/resources/images/ic_insta.svg" /> ">
               <img src="<c:url value="/resources/images/ic_li.svg" /> ">
               <img src="<c:url value="/resources/images/ic_pin.svg" /> ">
               <img src="<c:url value="/resources/images/ic_twt.svg" /> ">
               <img src="<c:url value="/resources/images/ic_yt.svg" /> ">
            </div>
         </div>
      </section>
      <section class="bottom_sec"> </section>


      <div id="popup1" class="overlay">
	<div class="popup">
		<h2>Login</h2>
      <span class="divider" > </span>

		<a class="close" href="#">&times;</a>
		<div class="content">
		<!-- login form start here----------- -------------->
		<form:form action="user/login" method="post" commandName="user">
         <form:input placeholder="EMAIL"  type="text"  name="email" path="user_email"/>
         <form:input placeholder="PASSWORD" type="password" name="password" path="user_password"/>
         <button type="submit"> LOGIN </button>
          <!-- <input type="submit" value="Login"> -->
         </form:form>
         <!-- login form end here----------- ----------------->
         <p> Not Register ? <a href="#popup2"> Create Account </a> </p>
		</div>
	</div>
</div>


<div id="popup2" class="overlay">
	<div class="popup">
		<h2>Member Registration Form</h2>
      <span class="divider" > </span>

		<a class="close" href="#">&times;</a>
		<div class="content">
		<!-- login form start here----------- -------------->
		<form:form action="user/add" method="post" commandName="user" >
		<form:hidden path="user_id"/>
		<form:input placeholder="First Name"  type="text"  name="fname" path="user_first_name" />
		<form:input placeholder="Last Name"  type="text" name="lname" path="user_last_name"  />
		<form:input placeholder="Email"  type="text" name="email" path="user_email"  />
         <form:input placeholder="Phone Number"  type="text" name="phone" path="user_phone_number"  />
         <form:input placeholder="Password" type="password" name="password" path="user_password" />
         <button type="submit"> SUBMIT </button>
         </form:form>
         <!-- login form end here----------- ----------------->
         
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
