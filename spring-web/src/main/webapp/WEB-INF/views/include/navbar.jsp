<%@ page pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark mb-3">
	<a href="/" class="navbar-brand">Spring Web</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsible-navbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsible-navbar">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a href="/" class="nav-link">홈</a></li>
			<li class="nav-item"><a href="/book" class="nav-link">도서</a></li>
			<li class="nav-item"><a href="/board" class="nav-link">게시판</a></li>
			<li class="nav-item"><a href="/my" class="nav-link">내 정보</a></li>
		</ul>
		<form class="form-inline mr-auto">
			<input type="text" class="form-control" placeholder="검색어를 입력하세요">
			<button class="btn btn-primary ml-1" type="button">검색</button>
		</form>	
		<ul class="navbar-nav ">
			<li class="nav-item"><a href="/signin" class="nav-link">로그인</a></li>
			<li class="nav-item"><a href="/signup" class="nav-link">회원가입</a></li>
			<li class="nav-item"><a href="/logout" class="nav-link">로그아웃</a></li>
		</ul>	
	</div>
</nav>
