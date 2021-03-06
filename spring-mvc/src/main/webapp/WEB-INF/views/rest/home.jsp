<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<title>Spring Rest</title>
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
							<col width="50%">
							<col width="20%">
							<col width="20%">
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
					<a href="/home.do" class="btn btn-primary">상품등록</a>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" id="modal-product">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h4 class="modal-title">Modal Heading</h4>
        			<button type="button" class="close" data-dismiss="modal">&times;</button>
      			</div>
      			<div class="modal-body">
        			<table class="table table-bordered" id="table-product">
						<colgroup>
							<col width="10%">
							<col width="40%">
							<col width="10%">
							<col width="40%">
						</colgroup>
						<tbody>
							<tr>
								<th>번호</th><td></td>
								<th>재고</th><td></td>
							</tr>
							<tr>
								<th>이름</th><td colspan="3"></td>
							</tr>
							<tr>
								<th>가격</th><td></td>
								<th>할인가격</th><td></td>
							</tr>
						</tbody>
					</table>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      			</div>
    		</div>
  		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		type:"GET",
		url:"/json/products.do",
		dataType:"json",
		success:function(products) {
			var $tbody = $("#table-product-list tbody").empty();
			
			$.each(products, function(index, product) {
				var tr = "<tr>";
				tr += "<td>"+product.no+"</td>";
				tr += "<td>"+product.name+"</td>";
				tr += "<td>"+product.price+"</td>";
				tr += "<td><button class='btn btn-primary btn-sm' data-no='"+product.no+"'>상세</button></td>";
				tr += "<td><button class='btn btn-danger btn-sm' data-no='"+product.no+"'>삭제</button></td>";
				tr += "<tr>";
				
				$tbody.append(tr);
			});
			
		}
	})
	
	// <button data-no="23">상세</button>
	$("#table-product-list").on("click", "button", function() {
		var productNo = $(this).data("no");
		
		$.ajax({
			type:"GET",
			url:"/json/product.do",
			data: {no:productNo},
			dataType: 'json',
			success: function(product) {
				$("#table-product td:eq(0)").text(product.no);
				$("#table-product td:eq(1)").text(product.stock);
				$("#table-product td:eq(2)").text(product.name);
				$("#table-product td:eq(3)").text(product.price);
				$("#table-product td:eq(4)").text(product.discountPrice);
				
				$("#modal-product").modal("show")
			}
		})
	})
})
</script>
</body>
</html>












