<%@page import="com.newlecture.web.entity.Pet"%>
<%@page import="java.util.List"%>
<%@page import="com.newlecture.web.service.PetService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
PetService petService = new PetService();
List<Pet> list = petService.getList();


%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>동물관리 - 반려동물정보</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
<link href="list.css" type="text/css" rel="stylesheet">
<script src="list.js"></script>
</head>
<body>
	<div id="root">
		<header id="header">
			<div class="float-content">
				<div class="flex align-center">
					<a href="" class="logo-title-container"> <img
						src="../../images/logo.png" alt="">
					</a>
					<nav class="main-menu">
						<h1 class="d-none">메인메뉴</h1>
						<ul>
							<li><a href="../../myhome/list.html">우리집</a></li>
							<li><a href="../../friends/list.html">이웃집</a></li>
							<li><a href="list.html">내 동물관리</a></li>
							<li><a href="../../community/knowhow/list.html">커뮤니티</a></li>
						</ul>
					</nav>
				</div>
				<nav class="member-menu">
					<h1 class="d-none">회원메뉴</h1>
					<ul>
						<li><a href="../../mypage/profile/progile-edit.html">MyPage</a></li>
						<li><a href="../../login">LogOut</a></li>
					</ul>
				</nav>
			</div>


		</header>

		<div id="body">
			<div class="float-content">
				<aside id="aside">
					<nav class="aside-menu">
						<h1 class="d-none">동물관리메뉴</h1>
						<ul>
							<li><a class="current-page" href="list.html"><i
									class="fas fa-paw"></i>동물 관리</a></li>
							<li><a href="../weight-record/form.html"><i
									class="fas fa-weight"></i>체중 관리</a></li>
							<li><a href="../schedule/calendar.html"><i
									class="far fa-calendar-alt"></i>일정 관리</a></li>
						</ul>
					</nav>
				</aside>
				<main id="main">

					<h1 class="d-none">동물관리 - 반려동물 정보</h1>
					<div id="content">
						<div class="mypet-section">

							<div class="subject">
								<h1>반려동물 관리</h1>
							</div>

							<div class="inner-section">

								<div class=container>
								<%for(Pet p : list){ %>
									<div class="box">
									<a class="" href="">
											<div class="img-box">
												<img
													src="https://static.parastorage.com/services/instagram-cdn/1.691.0/assets/ig-templates-accounts/Editor/Dogs%20Apparel/03.jpg">
											</div>
										</a>
										<div class="diary-content">
											<h4><%=p.getName() %></h4>
											<div class="button detail-btn" id="detail-button"
												onclick="togglePopup(<%= p.getId() %>)">상세보기</div>
										</div>
										<!--diary-content-->
									</div>
									<!--box-->
								<%} %>
								</div>
								<!--container-->
							</div>
							<!--inner-section-->

							<div class="btn add">
								<span onclick="addPopup()" href="" class="button big">반려동물
									추가하기</span>
							</div>

						</div>
						<!--mypet-section-->
					</div>
					<!-- content -->
					<div class="profile-popup" id="popup-1">
					<%-- <%for(Pet p : list){ %> --%>
						<div class="popup-content">
							<div class="close-btn" onclick="togglePopup()">×</div>
							<input type="hidden" id="petId" name="petId" value="">
							<div class="profile-box">

								<div class="img-box">
									<img
										src="https://static.parastorage.com/services/instagram-cdn/1.691.0/assets/ig-templates-accounts/Editor/Dogs%20Apparel/03.jpg">
								</div>
								<div class="dog-info">
									<div class="option">
										<span onclick="updatePopup()"><i
											class="fas fa-pencil-alt"></i>수정</span>
										<!-- <a onclick="updatePopup()"href=""><i class="fas fa-pencil-alt"></i>수정</a> -->
										<span class="delete"><i class="far fa-trash-alt"></i>삭제</span>
										<!-- <a href="" class="delete"><i class="far fa-trash-alt"></i>삭제</a> -->
									</div>
									<div class="detail">
									<%for(Pet p : list){ %>
									<div class="pet-id-<%= p.getId() %> d-none">
										<div class="detail-name">
											<h2><%=p.getName() %></h2>
										</div>
										<div class="dog-breed-gender">
											<span class="d-none">품종</span>
											<ul>
												<li class="breed"><%=p.getBreed()%></li>
												<li class="gender"><i class="fas fa-venus"></i> <!-- <i class="fas fa-mars"></i> -->
												</li>
											</ul>
										</div>
										<!--dog-breed-gender-->
										<table class="table">
											<thead>
												<tr class="table-head">
													<td>나이</td>
													<td>몸무게</td>
													<td>특이사항</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><%=p.getBirthday() %></td>
													<td><%=p.getWeight() %>kg</td>
													<td><%=p.getPersonality() %></td>
												</tr>
											</tbody>
										</table>
										</div>
										<%} %>

									</div>
									<!-- detail -->

								</div>
								<!--dog-info-->

							</div>
							<!--profile-box-->
						</div>
					<%-- <%} %> --%>
						<!--content-->
					</div>
					<!--profile popup-->


					<div class="update-popup" id="popup-2">
						<div class="popup-content">
							<div class="close-btn" onclick="updatePopup()">×</div>

							<div class="update-profile-box">

								<div class="img-box">
									<input type="file" class="file-button"> <span
										class="file-trigger-button">Upload</span>
								</div>

								<div class="update-dog-info">

									<div class="dog_name add-container">
										<label class="add-label">이름</label> <input class="add-input"
											type="text" placeholder="반려동물 이름">
									</div>

									<div class="dog_breed add-container">
										<label class="add-label">품종</label> <input class="add-input"
											type="text" placeholder="반려동물 품종">
									</div>

									<div class="dog_weight add-container">
										<label class="add-label">몸무게</label> <input class="add-input"
											type="number" placeholder="반려동물 몸무게">
									</div>
									<div class="dog_birth add-container">
										<label class="add-label">생년월일</label>
										</th> <input class="add-input" type="date" placeholder="반려동물 생일">
									</div>

									<div class="dog_gender add-container">
										<label class="add-label">성별</label>
										<div class="dog_gender_input">
											<input type="radio" name="gender" value="암컷">암컷 <input
												type="radio" name="gender" value="수컷">수컷
										</div>
									</div>

									<div class="dog_personality add-container">
										<label class="dog_personality">성격</label> <input
											class="add-input" type="text" placeholder="반려동물 성격">
									</div>

									<div class="update-button">
										<a href="list.html" class="button">수정하기</a>
									</div>
									<!--수정하기버튼-->
								</div>
								<!--update dog info-->

							</div>
							<!--update-profile-box-->

						</div>
						<!--popup-content-->
					</div>
					<!--update popup-->

					<div class="add-mypet" id="popup-3">
						<div class="popup-content">
							<div class="close-btn" onclick="addPopup()">×</div>
							<div class="img-box">
								<input type="file" class="file-button"> <span
									class="file-trigger-button">Upload</span>
							</div>
							<div class="add-dog-info">

								<div class="dog_name add-container">
									<label class="add-label">이름</label> <input class="add-input"
										type="text" placeholder="반려동물 이름">
								</div>

								<div class="dog_breed add-container">
									<label class="add-label">품종</label> <input class="add-input"
										type="text" placeholder="반려동물 품종">
								</div>

								<div class="dog_weight add-container">
									<label class="add-label">몸무게</label> <input class="add-input"
										type="number" placeholder="반려동물 몸무게">
								</div>
								<div class="dog_birth add-container">
									<label class="add-label">생년월일</label>
									</th> <input class="add-input" type="date" placeholder="반려동물 생일">
								</div>

								<div class="dog_gender add-container">
									<label class="add-label">성별</label>
									<div class="dog_gender_input">
										<input type="radio" name="gender" value="암컷">암컷 <input
											type="radio" name="gender" value="수컷">수컷
									</div>
								</div>

								<div class="dog_personality add-container">
									<label class="dog_personality">성격</label> <input
										class="add-input" type="text" placeholder="반려동물 성격">
								</div>

								<div class="p-sm">
									<a href="list.html" class="button">저장하기</a>
								</div>
							</div>

						</div>
						<!--popup-content-->
					</div>
					<!--add-mypet-->


				</main>
			</div>
		</div>

		<footer id="footer">footer footer footer footer footer footer
			footer footer footer footer footer footer footer footer footer footer
			footer footer footer footer footer footer footer footer footer footer
			footer footer</footer>


	</div>

</body>
</html>