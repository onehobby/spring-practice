<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<title>JSON 응답</title>
</head>
<body>
<div class="container mt-3 mt-5">
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-header">상품리스트</div>
				<div class="card-body">
					<table class="table" id="table-product-list">
						<colgroup>
							<col width="10%">
							<col width="60%">
							<col width="20%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>이름</th>
								<th>가격</th>
								<th></th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
				<div class="card-footer">
					<a href="/home.do" class="btn btn-primary">홈</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>