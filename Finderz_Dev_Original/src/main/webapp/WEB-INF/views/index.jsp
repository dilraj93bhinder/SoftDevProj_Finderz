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
         <a href='<c:url value="/" />'><span class="logo"><img src="<c:url value="/resources/images/logo.svg" />"></span></a>
         <%-- <span class="right_menu" > <img src="<c:url value="/resources/images/menu.png" />"> </span> --%>
         <span class="menu">
            <ul>
               <!-- <li> <a href="post_ads.jsp">Post Ads</a></li> -->
               <%-- <li> <a href="${pageContext.request.contextPath}/main/webapp/WEB-INF/views/list_property.jsp">List Property</a></li> --%>
               <!-- <li> <a href="#">Favorites</a></li> -->
               <%-- <li><a href="<c:url value="/User/contactUs" />">Contact Us</a></li> --%>
               <li><a href="#popup1">Login</a></li>
            </ul>
         </span>
      </header>
      <section id="header_sec">
         <h2> Rent in Canada </h2>
         <div id="rent_btn">
            <button> Search Property </button>
         </div>
         <div>
            <span class="arrow-down"></span>
         </div>
         <div id="search_sec">
            <div>
    <select id="price" name="price">
	<option value="0">Select price</option>
	<option value="1">Less than $500</option>
	<option value="2">Bet $500-$1000</option>
	<option value="3">Bet $1000-$1500</option>
	<option value="4">Bet $1500-$2000</option>
	<option value="5">Bet $2000-$2500</option>
	<option value="6">Bet $2500-$3000</option>
	<option value="7">More than $3000</option>
</select>

 <select id="price" name="no_of_beds">
	<option value="0">No of bed</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
</select>
 <select id="price" name="no_of_baths">
	<option value="0">No of bath</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
</select>
               <input placeholder="Search for locality, landmark, project, or builder" />
               <button> Search </button>
            </div>
         </div>

         <div class="bg" src="images/bg.png"> </div>
      </section>
      <section class="featured_sec">
      	  <section id="header_sec_rentals" style="margin-bottom:10px">
	         <h2 style="color:#000000"> Featured Properties </h2>
	      </section>
      
	      <section class="sec_content">      

		      <div class="sec_card">

            <div class="card">
               <div class="image">
                  <span class="tag"> For Sale </span>
                  <span class="price"> $1300 </span>
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
               </div>
               <div class="container">
                  <p class="small_p">Apartment</p>
                  <h4><b>John Doe</b></h4>
                  <p>200 CSt, Ottawa, ON K2P 2K9</p>
                  <p><span>Beds: 4</span> <span>Beds: 4</span> <span>Beds: 4</span></p>
               </div>
               <div class="divider" > </div>
               <div class="footer">
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
                  <span> Jhon </span>
               </div>
            </div>
            </div>
		      <div class="sec_card">
            <div class="card">
               <div class="image">
                  <span class="tag"> For Sale </span>
                  <span class="price"> $1300 </span>
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
               </div>
               <div class="container">
                  <p class="small_p">Apartment</p>
                  <h4><b>John Doe</b></h4>
                  <p>200 CSt, Ottawa, ON K2P 2K9</p>
                  <p><span>Beds: 4</span> <span>Beds: 4</span> <span>Beds: 4</span></p>
               </div>
               <div class="divider" > </div>
               <div class="footer">
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
                  <span> Jhon </span>
                  <span class="date"> 4 years ago </span>
               </div>
            </div>
            </div>
		      <div class="sec_card">
            <div class="card">
               <div class="image">
                  <span class="tag"> For Sale </span>
                  <span class="price"> $1300 </span>
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
               </div>
               <div class="container">
                  <p class="small_p">Apartment</p>
                  <h4><b>John Doe</b></h4>
                  <p>200 CSt, Ottawa, ON K2P 2K9</p>
                  <p><span>Beds: 4</span> <span>Beds: 4</span> <span>Beds: 4</span></p>
               </div>
               <div class="divider" > </div>
               <div class="footer">
                  <img src="<c:url value="/resources/images/card1.jpg" /> ">
                  <span> Jhon </span>
                  <span class="date"> 4 years ago </span>
               </div>
            </div>
            </div>
         </section>
      </section>
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
		<form:form action="${pageContext.request.contextPath}/User/login" method="post" commandName="user">
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
		<form:form action="User/add" method="post" commandName="user" >
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
		<form:form action="User/add" method="post" commandName="user">
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
