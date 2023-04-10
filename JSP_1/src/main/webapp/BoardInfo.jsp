<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	#container {
		width: 70%;
		margin: 0 auto; /* 가로로 중앙에 배치 */
		padding-top: 10%;
	}
	#list {
		text-align: center;
	}
	#write {
		text-align: right;
	}
	
	/* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
    div > #paging {
    	text-align: center;
    }
    div > #paging {
      text-align: center;
    }
	.hit {
      animation-name: blink;/*애니메이션의 이름*/
      animation-duration: 1.5s;/*애니메이션의 동작 시간('1s','0.5s'와 같은 형식으로 지정)*/
      animation-timing-function: ease; /*애니메이션의 타이밍 : 시작과 종료를 부드럽게*/
      animation-iteration-count: infinite; /* 애니메이션의 동작 회수('infinite'를 지정하면 무한 반복)*/
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
    
	/* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }
</style>
<title>게시글 보기</title>
</head>
<body>
	<center>
		<h2>게시글 보기</h2>
		<table width="600" border="1">
			<tr height="40">
				<td width="120" align="center">글번호</td>
				<td width="180" align="left">${bean.num }</td>
				<td width="120" align="center">조회수</td>
				<td width="180" align="left">${bean.readcount }</td>
			</tr>
			<tr height="40">
				<td width="120" align="center">작성자</td>
				<td width="180" align="left">${bean.writer }</td>
				<td width="120" align="center">작성일</td>
				<td width="180" align="left">${bean.reg_date }</td>
			</tr>
			<tr height="40">
				<td width="120" align="center">이메일</td>
				<td colspan="3" width="180" align="left">${bean.email }</td>
			</tr>
			<tr height="40">
				<td width="120" align="center">제목</td>
				<td colspan="3" width="180" align="left">${bean.subject }</td>
			</tr>
			<tr height="40">
				<td width="120" align="center">글내용</td>
				<td colspan="3" width="180" align="left">${bean.contents }</td>
			</tr>
			
			<tr height="40">
				<td align="center" colspan="4">
					<input type="button" value="답글달기" onclick="location.href='BoardReWriteCon.do?num=${bean.num}&ref=${bean.ref }&re_step=${bean.re_step }&re_level=${bean.re_level }'">&nbsp;
					<input type="button" value="글 수정" onclick="location.href='BoardUpdateCon.do?num=${bean.num}'">&nbsp;
					<input type="button" value="글 삭제" onclick="location.href='BoardDeleteCon.do?num=${bean.num}'">&nbsp;
					<input type="button" value="전체글보기" onclick="location.href='BoardListCon.do'">
				</td>
			</tr>
		</table>
	</center>
</body>
</html>