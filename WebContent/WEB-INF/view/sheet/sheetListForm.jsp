<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>発注要請</title>
<style>
h1 {
	text-align: center;
}

#wrap {
	min-height: calc(78.5vh - 30px);
	padding-bottom: 60px;
	text-align: center;
}

#my-div {
	margin-top: 50px;
	height: 50px;
	text-align: center;
	line-height: 50px;
	font-weight: bold;
	font-size: 30px;
}

table {
	margin-top: 10px;
	table-layout: fixed;
	margin-left: auto;
	margin-right: auto;
	width: 1000px;
	heigth: 500px;
	border: 1px solid #444444;
}

td {
	text-align: center;
	white-space: nowrap;
	border: 1px solid #444444;
}
</style>
</head>
<%@ include file="/header.jsp"%>
<body>
	<div id="wrap">
		<form action="sheetList.do" method="post">
			
			<div id="my-div">[発注書]</div>
			<table>
				<tr>
					<td>発注書No</td>
					<td>担当者</td>
					<td>物品名</td>
					<td>単価</td>
					<td>数量</td>
					<td>金額</td>
					<td>取引先名</td>
					<td>倉庫名</td>
					<td>日付</td>
					<td>状態</td>
				</tr>

				<c:if test="${sheetPage.hasNoSheets()}">
					<tr>
						<td colspan="10">登録された発注要請が存在しません。</td>
					</tr>
				</c:if>
				<c:forEach var="sheet" items="${sheetPage.content}">
					<tr>
						<td>${sheet.listNo}</td>
						<td>${sheet.memberName}</td>
						<td>${sheet.productName}</td>
						<td>${sheet.unitPrice}</td>
						<td>${sheet.amount}</td>
						<td>${sheet.price}</td>
						<td>${sheet.companyName}</td>
						<td>${sheet.storageName}</td>
						<td><fmt:formatDate value="${sheet.listDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${sheet.process}</td>
			</tr>
				</c:forEach>
				<c:if test="${sheetPage.hasSheets()}">
					<tr>
						<td colspan="10"><c:if test="${orderPage.startPage > 5}">
								<a href="sheetList.do?pageNo=${sheetPage.startPage - 5}">[前のページ]</a>
							</c:if> <c:forEach var="pNo" begin="${sheetPage.startPage}"
								end="${sheetPage.endPage}">
								<a href="sheetList.do?pageNo=${pNo}">[${pNO}]</a>
							</c:forEach> <c:if test="${sheetPage.endPage < sheetPage.totalPages}">
								<a href="sheetList.do?pageNo=${sheetPage.startPage + 5}">[次のページ]</a>
							</c:if></td>
					</tr>
				</c:if>
			</table>
			
			<input type="button" value="検索"
				style="font-size: 20px; width: 70px; height: 40px; margin-top: 30px; margin-left: 850px;"
				onclick="window.open('orderSearch.do', '発注書検索', 'width=1200, height=700')" />
			
		</form>
	</div>

</body>

</html>

</script>