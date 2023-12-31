<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TripNow(트립나우)</title>
<style>

	#title {
		width: 220px;
		height: 50px;
		margin: 0px auto;
		display: flex;
	}
	
	#icon {
		background-image: url("/tripnow/images/qna.png");
		margin-top: 5px;
		width: 40px;
		height: 40px;
		background-size: contain;
		background-repeat: no-repeat;
	}
	
	#top {
		width: 840px;
		margin: 10px auto;
		margin-top: 60px;
		padding-left: 8px;
	}	
	
	#table {
		width: 840px;
		margin: 0px auto;
	}
	
	#table th {
		width: 100px;
		text-align: right;
	}
	
	#table td {
		width: auto;
		text-align: left;
		padding-left: 20px;
	}
	
	#table th {
		height: 50px;
		font-size: 16px;
	}
	
	#table td {
		font-size: 16px;
	}
	
	#table tr:nth-child(3) td {
		
	}
	
	#btn {
		width: 840px;
		margin: 20px auto 40px auto;
		border-bottom: 1px solid #CCC;
		padding-right: 7px;
		padding-bottom: 30px;
		text-align: right;
	}
	
	#table th, #table td {
		vertical-align: middle;
	}
	
	#category {
		width: 150px;
		height: 35px;
		padding: 3px;
		border: 1px solid #CCC;
	}
	
	#subject {
		width: 100%;
		height: 35px;
		padding: 7px;
		outline: none;
		border: 1px solid #CCC;
		font-size: 16px;
	}
	
	
	 .text_box {
	 	position:relative;
	 	display: inline-block;
	 	height: 300px;
	 	width: 100%;
	 }

	#noticecontent {
		width: 100%;
		padding: 7px;
		height: 300px;
		border: 1px solid #CCC;
		resize: none;
	}
	 
	.text_box .count {
		position:absolute;
		right:20px;
		bottom:20px;
		color:#666;
		font-size:15px;
	}
	
</style>
</head>
<body>
	<!--  -->
   <div id="content">
      <section>
    	<div id="title"><div id="icon"></div><h1>&nbsp;고객 센터</h1></div>
	  	
	  	<div id="top">
	  	<p><a href="/tripnow/admin/main">관리자 모드</a> > <a href="/tripnow/admin/qna/list?page=${nowPage}">고객 센터</a> > <a href="/tripnow/admin/qna/add">공지사항 작성하기</a></p>
	  	</div>
	  	
	  	<form id="qnaform" method="POST" action="/tripnow/admin/qna/addok" autocomplete="off">
	  	<table class="table" id="table">
		  	<tr>
		  		<th>카테고리</th>
		  		<td>
		  			<select id="category" name="category" required>
		  				<option value="6" selected>공지사항</option>
		  			</select>
		  		</td>
		  	</tr>
		  	
		  	<tr>
		  		<th>제목</th>
		  		<td><input type="text" name="qsubject" id="subject" maxlength="100" placeholder="100자 이내로 작성하실 수 있습니다." required></td>
		  	</tr>
		  	
		  	<tr>
		  		<th>내용</th>
		  		<td>
		  			<div class="text_box">
		  			<textarea id="noticecontent" name="qcontent" placeholder="330자 이내로 작성하실 수 있습니다." required></textarea>
		  			<div class="count"><span>0/330</span></div>
		  			</div>
		  		</td>
		  	</tr>
	  	</table>
	  	
	  	<div id="btn">
	  		<input type="submit" value="등록하기" class="btn btn-info">
	  		<input type="button" value="취소하기" class="btn btn-danger" onclick="location.href='/tripnow/admin/qna/list'">
	  	</div>
	  	</form>
	  	
	  	
      </section>
      
   </div>
   
   <script>
   	
	   $('.text_box textarea').keyup(function(){
		   
		   var content = $(this).val();
		   
		   $('.text_box .count span').html(content.length + '/330');
		   if (content.length > 330){
		     alert("최대 330자까지 입력 가능합니다.");
		     $(this).val(content.substring(0, 330));
		     $('.text_box .count span').html('330/330');
		   }
		 });
   </script>

</body>
</html>