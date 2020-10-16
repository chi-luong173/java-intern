<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post management</title>
</head>
<body>
    <main class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
    	<div class="main-content-container container-fluid px-4">
			<form action="<c:url value='/admin/post-management'/>" id="formSubmit" method="GET">
				<br><br>
	            <div class="container">
	                <div class="row">
	                    <div class="col pl-0 pr-0">
	                        <div class="card card-small mb-4">
	
	                            <div class="card-body p-0 pb-3 text-center">
	                                <table class="table mb-0">
	                                    <thead class="bg-light">
	                                    <tr>
	                                        <th scope="col" class="border-0">Id</th>
	                                        <th scope="col" class="border-0">Title</th>
	                                        <th scope="col" class="border-0">Status</th>
	<!--                                         <th scope="col" class="border-0">Edit</th> -->
	                                    </tr>
	                                    </thead>
	                                    <tbody >
	                                    	<c:forEach var="item" items="${model.listResult}">
	                                    		<tr>
	                                    		
	                                    			<td>${item.id}</td>
	                                    			<td>${item.title}</td>
	                                    			<td>
														<c:if test="${model.status == 0 }">
															<a type="button" style="background-color: green;width:100px" class="btn btn-info mb-1" href=/admin/post-management/set-status/?id=${item.id}/1>
																Approved
														</a> &nbsp
														</c:if>
														<c:if test="${model.status == 1 }">
															<a type="button" style="background-color: red;width:100px" class="btn btn-info mb-1" href=/admin/post-management/set-status/${item.id}/0>
																Disapproved
														</a> &nbsp
														</c:if>
													</td>
	                                    		</tr>
	                                    	</c:forEach>
	                                    </tbody>
	                                </table>
	                                
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
		    <div class="container">
	            <nav aria-label="Page navigation">
	              
	                <ul class="pagination justify-content-end" id="pagination"></ul>
	                <input type="hidden" value="" id="page" name="page"/>
					<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
					<input type="hidden" value="" id="sortName" name="sortName"/>
					<input type="hidden" value="" id="sortBy" name="sortBy"/>
					<input type="hidden" value="" id="type" name="type"/>
	            </nav>
       		</div>
        </form>
        </div>
    </main>


    <script type="text/javascript">
    var totalPages = ${model.totalPage};
	var currentPage = ${model.page};
	var limit = 10;
	$(function () {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages: totalPages,
			visiblePages: 5,
			startPage: currentPage,
			onPageClick: function (event, page) {
				if (currentPage != page) {
					$('#maxPageItem').val(limit);
					$('#page').val(page);
					$('#sortName').val('title');
					$('#sortBy').val('desc');
					$('#type').val('list');
					$('#formSubmit').submit();
				}
			}
		});
	});
    </script>

   

</body>
</html>