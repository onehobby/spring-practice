<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>온라인 서점</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<style type="text/css">
		.book-item-box .row {height: 270px;}
	</style>
</head>
<body>
<%@ include file="../include/navbar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-12">
			<ul class="breadcrumb">
  				<li class="breadcrumb-item"><a href="#">홈</a></li>
  				<li class="breadcrumb-item active">국내도서</li>
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-body p-1">
					<div class="row">
						<div class="col-6">
							<div class="btn-group btn-group-sm">
				  				<button type="button" class="btn btn-light btn-sm active">신상품순</button>
				  				<button type="button" class="btn btn-light btn-sm">최저가순</button>
				  				<button type="button" class="btn btn-light btn-sm">최고가순</button>
				  				<button type="button" class="btn btn-light btn-sm">상품평점순</button>
							</div>
						</div>
						<div class="col-6 text-right">
							<div class="btn-group btn-group-sm">
				  				<button type="button" class="btn btn-light btn-sm active"> 4개씩 보기</button>
				  				<button type="button" class="btn btn-light btn-sm"> 8개씩 보기</button>
				  				<button type="button" class="btn btn-light btn-sm"> 12개씩 보기</button>
							</div>
						</div>			
					</div>
					<div class="row mt-2">
						<div class="col-6">
							<div class="card-body p-0 mt-1">
								<ul class="pagination pagination mb-1">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</div>
						</div>
						<div class="col-6">
							<form class="form-inline float-right">
								<select class="form-control">
									<option> 검색어를 선택하세요</option>
									<option> 제목</option>
									<option> 저자</option>
									<option> 출판사</option>
								</select>
								<input type="text" class="form-control ml-1" placeholder="검색어를 입력하세요">
								<button class="btn btn-primary ml-1" type="button">검색</button>
							</form>	
						</div>	
					</div>
					
				</div>
			</div>			
		</div>
	</div>
	<div class="row">
	<c:forEach var="book" items="${bookListDto.books }">
		<div class="col-6 book-item-box">
			<div class="row border p-3 m-2">
				<div class="col-3 pl-4">
					<img src="/resources/images/covers/${book.coverImageFilename }" class="img-thumbnail">
					<button class="btn btn-outline-primary btn-sm mt-3">장바구니</button>
					<button class="btn btn-primary btn-sm mt-3">바로구매</button>
				</div>
				<div class="col-9 pr-5">
					<div>
						<a href="/book/detail" class="text-dark font-weight-bold">${book.title }</a>
					</div>
					<div>
						<small>${book.writer } <span class="text-muted">저</span></small> <span class="text-muted">|</span> <small>${book.publisher }</small>
					</div>
					<div>
						<strong style="font-size: 20px;" class="text-danger"><fmt:formatNumber value="${book.price }"/> </strong> <span class="text-muted">원</span> <span>(10% 할인)</span>
					</div>
					<div>
						<span>회원리뷰 (<small><a href="/book/review">${book.reviewCnt }건</a></small>)</span> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
					</div>
					<p class="small mt-3"><c:out value="${book.summary }" /></p>
				</div>
			</div>
		</div>
	</c:forEach>
	</div>
</div>
<script>
	
</script>
</body>
</html>