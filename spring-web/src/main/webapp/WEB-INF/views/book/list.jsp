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
				  				<button type="button" class="btn btn-light btn-sm">상품명순</button>
							</div>
						</div>
						<div class="col-6 text-right">
							<div class="btn-group btn-group-sm">
				  				<button type="button" class="btn btn-light btn-sm active"> 5개씩 보기</button>
				  				<button type="button" class="btn btn-light btn-sm"> 10개씩 보기</button>
				  				<button type="button" class="btn btn-light btn-sm"> 20개씩 보기</button>
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
		<div class="col-6">
			<div class="row border p-3 m-2">
				<div class="col-3 pl-4">
					<img src="/resources/images/covers/1001.jpg" class="img-thumbnail">
					<button class="btn btn-outline-primary btn-sm mt-3">장바구니</button>
					<button class="btn btn-primary btn-sm mt-3">바로구매</button>
				</div>
				<div class="col-9 pr-5">
					<div>
						<a href="/book/detail" class="text-dark font-weight-bold">데미안</a>
					</div>
					<div>
						<small>헤르만 헤세 <span class="text-muted">저</span></small> <span class="text-muted">|</span> <small>한빛미디어</small>
					</div>
					<div>
						<strong style="font-size: 20px;" class="text-danger">150,000</strong> <span class="text-muted">원</span> <span>(10% 할인)</span>
					</div>
					<div>
						<span>회원리뷰 (<small><a href="/book/review">10건</a></small>)</span> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
					</div>
					<p class="small mt-3">데미안을 통해 참다운 어른이 되어 가는 소년 싱클레어의 이야기.한 폭의 수채화같이 아름답고 유려한 문체로 전세계인의 사랑을 받고 있는 작품.</p>
				</div>
			</div>
		</div>
		<div class="col-6 ">
			<div class="row border p-3 m-2">
				<div class="col-3 pl-4">
					<img src="/resources/images/covers/1001.jpg" class="img-thumbnail">
					<button class="btn btn-outline-primary btn-sm mt-3">장바구니</button>
					<button class="btn btn-primary btn-sm mt-3">바로구매</button>
				</div>
				<div class="col-9 pr-5">
					<div>
						<a href="/book/detail" class="text-dark font-weight-bold">데미안</a>
					</div>
					<div>
						<small>헤르만 헤세 <span class="text-muted">저</span></small> <span class="text-muted">|</span> <small>한빛미디어</small>
					</div>
					<div>
						<strong style="font-size: 20px;" class="text-danger">150,000</strong> <span class="text-muted">원</span> <span>(10% 할인)</span>
					</div>
					<div>
						<span>회원리뷰 (<small><a href="/book/review">10건</a></small>)</span> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
					</div>
					<p class="small mt-3">데미안을 통해 참다운 어른이 되어 가는 소년 싱클레어의 이야기.한 폭의 수채화같이 아름답고 유려한 문체로 전세계인의 사랑을 받고 있는 작품.</p>
				</div>
			</div>
		</div>
		<div class="col-6 ">
			<div class="row border p-3 m-2">
				<div class="col-3 pl-4">
					<img src="/resources/images/covers/1001.jpg" class="img-thumbnail">
					<button class="btn btn-outline-primary btn-sm mt-3">장바구니</button>
					<button class="btn btn-primary btn-sm mt-3">바로구매</button>
				</div>
				<div class="col-9 pr-5">
					<div>
						<a href="/book/detail" class="text-dark font-weight-bold">데미안</a>
					</div>
					<div>
						<small>헤르만 헤세 <span class="text-muted">저</span></small> <span class="text-muted">|</span> <small>한빛미디어</small>
					</div>
					<div>
						<strong style="font-size: 20px;" class="text-danger">150,000</strong> <span class="text-muted">원</span> <span>(10% 할인)</span>
					</div>
					<div>
						<span>회원리뷰 (<small><a href="/book/review">10건</a></small>)</span> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
					</div>
					<p class="small mt-3">데미안을 통해 참다운 어른이 되어 가는 소년 싱클레어의 이야기.한 폭의 수채화같이 아름답고 유려한 문체로 전세계인의 사랑을 받고 있는 작품.데미안을 통해 참다운 어른이 되어 가는 소년 싱클레어의 이야기.한 폭의 수채화같이 아름답고 유려한 문체로 전세계인의 사랑을 받고 있는 작품.</p>
				</div>
			</div>
		</div>
		<div class="col-6 ">
			<div class="row border p-3 m-2">
				<div class="col-3 pl-4">
					<img src="/resources/images/covers/1001.jpg" class="img-thumbnail">
					<button class="btn btn-outline-primary btn-sm mt-3">장바구니</button>
					<button class="btn btn-primary btn-sm mt-3">바로구매</button>
				</div>
				<div class="col-9 pr-5">
					<div>
						<a href="/book/detail" class="text-dark font-weight-bold">데미안</a>
					</div>
					<div>
						<small>헤르만 헤세 <span class="text-muted">저</span></small> <span class="text-muted">|</span> <small>한빛미디어</small>
					</div>
					<div>
						<strong style="font-size: 20px;" class="text-danger">150,000</strong> <span class="text-muted">원</span> <span>(10% 할인)</span>
					</div>
					<div>
						<span>회원리뷰 (<small><a href="/book/review">10건</a></small>)</span> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
					</div>
					<p class="small mt-3">데미안을 통해 참다운 어른이 되어 가는 소년 싱클레어의 이야기.한 폭의 수채화같이 아름답고 유려한 문체로 전세계인의 사랑을 받고 있는 작품.</p>
				</div>
			</div>
		</div>
		<div class="col-6 ">
			<div class="row border p-3 m-2">
				<div class="col-3 pl-4">
					<img src="/resources/images/covers/1001.jpg" class="img-thumbnail">
					<button class="btn btn-outline-primary btn-sm mt-3">장바구니</button>
					<button class="btn btn-primary btn-sm mt-3">바로구매</button>
				</div>
				<div class="col-9 pr-5">
					<div>
						<a href="/book/detail" class="text-dark font-weight-bold">데미안</a>
					</div>
					<div>
						<small>헤르만 헤세 <span class="text-muted">저</span></small> <span class="text-muted">|</span> <small>한빛미디어</small>
					</div>
					<div>
						<strong style="font-size: 20px;" class="text-danger">150,000</strong> <span class="text-muted">원</span> <span>(10% 할인)</span>
					</div>
					<div>
						<span>회원리뷰 (<small><a href="/book/review">10건</a></small>)</span> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
					</div>
					<p class="small mt-3">데미안을 통해 참다운 어른이 되어 가는 소년 싱클레어의 이야기.한 폭의 수채화같이 아름답고 유려한 문체로 전세계인의 사랑을 받고 있는 작품.</p>
				</div>
			</div>
		</div>
		<div class="col-6 ">
			<div class="row border p-3 m-2">
				<div class="col-3 pl-4">
					<img src="/resources/images/covers/1001.jpg" class="img-thumbnail">
					<button class="btn btn-outline-primary btn-sm mt-3">장바구니</button>
					<button class="btn btn-primary btn-sm mt-3">바로구매</button>
				</div>
				<div class="col-9 pr-5">
					<div>
						<a href="/book/detail" class="text-dark font-weight-bold">데미안</a>
					</div>
					<div>
						<small>헤르만 헤세 <span class="text-muted">저</span></small> <span class="text-muted">|</span> <small>한빛미디어</small>
					</div>
					<div>
						<strong style="font-size: 20px;" class="text-danger">150,000</strong> <span class="text-muted">원</span> <span>(10% 할인)</span>
					</div>
					<div>
						<span>회원리뷰 (<small><a href="/book/review">10건</a></small>)</span> <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
					</div>
					<p class="small mt-3">데미안을 통해 참다운 어른이 되어 가는 소년 싱클레어의 이야기.한 폭의 수채화같이 아름답고 유려한 문체로 전세계인의 사랑을 받고 있는 작품.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	
</script>
</body>
</html>