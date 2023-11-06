<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="login-box">
	<div class="card card-outline card-primary">
		<div class="card-header text-center">
			<p class="h4">
				<b>아이디찾기</b>
			</p>
		</div>
		<div class="card-body">
			<p class="login-box-msg">아이디 찾기는 이메일, 이름을 입력하여 찾을 수 있습니다.</p>
			<form action="" id="findIdForm" method="post">
				<div class="input-group mb-3">
					<input type="text" class="form-control" name="" id="memEmail" placeholder="이메일을 입력해주세요.">
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control" name="" id="memName" placeholder="이름을 입력해주세요.">
				</div>
				<div class="input-group mb-3">
						<p>
							회원님의 아이디는 [<font color="red" class="h2 text-danger" id="id"></font>] 입니다.
						</p>
				</div>
				<div class="row">
					<div class="col-12">
						<button type="button" class="btn btn-primary btn-block" id="idFindBtn">아이디찾기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<br />
	<div class="card card-outline card-primary">
		<div class="card-header text-center">
			<p href="" class="h4">
				<b>비밀번호찾기</b>
			</p>
		</div>
		<div class="card-body">
			<p class="login-box-msg">비밀번호 찾기는 아이디, 이메일, 이름을 입력하여 찾을 수 있습니다.</p>
			<form action="" id="findPwForm" method="post">
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="memId" name="" placeholder="아이디를 입력해주세요.">
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="memEmail2" name="" placeholder="이메일을 입력해주세요.">
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="memName2" name="" placeholder="이름을 입력해주세요.">
				</div>
				<div class="input-group mb-3">
					<p>
						회원님의 비밀번호는 [<font color="red" class="h2 text-danger" id="password"></font>] 입니다.
					</p>
				</div>
				<div class="row">
					<div class="col-12">
						<button type="button" class="btn btn-primary btn-block" id="pwFindBtn">비밀번호찾기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<br/>
	<div class="card card-outline card-secondary">
		<div class="card-header text-center">
			<h4>MAIN MENU</h4>
			<button type="button" class="btn btn-secondary btn-block" id="loginBtn">로그인</button>
		</div>
	</div>
</div>

<script type="text/javascript">
$(function(){
	var loginBtn =$("#loginBtn");
	var idFindBtn =$("#idFindBtn");
	var pwFindBtn =$("#pwFindBtn");
	var findIdForm =$("#findIdForm");
	var findPwForm =$("#findPwForm");
	
	loginBtn.on("click", function(){
		location.href="/notice/login.do";
	});
	
	idFindBtn.on("click", function(){
		var email = $("#memEmail").val();
		var name = $("#memName").val();
		
		if(email == null || email == ""){
			alert("이메일을 입력해주세요!")
			return false;
		}
		if(name == null || name == ""){
			alert("이름을 입력해주세요!")
			return false;
		}
		
		var data = {
				memEmail : email,
				memName : name
		}
		
		$.ajax({
			type : "post",
			url : "/notice/findIdPw",
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-8",
			success : function(result){
				console.log("아이디 찾기 결과 : "+result);
				if(result == null || result ==""){
					alert("존재하지 않는 회원입니다. 회원 정보를 확인해주세요!")
				}
					$("#id").html(result);
			}
		});
		
	});
	
	pwFindBtn.on("click", function(){
		
		var id = $("#memId").val();
		var email = $("#memEmail2").val();
		var name = $("#memName2").val();
		
		if(id == null || id == ""){
			alert("아이디를 입력해주세요!")
			return false;
		}
		if(email == null || email == ""){
			alert("이메일을 입력해주세요!")
			return false;
		}
		if(name == null || name == ""){
			alert("이름을 입력해주세요!")
			return false;
		}
		
		var data = {
				memId : id,
				memEmail : email,
				memName : name
		}
		
		
		$.ajax({
			type : "post",
			url : "/notice/findIdPw",
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-8",
			success : function(result){
				if(result == null || result ==""){
					console.log("비밀번호 찾기 결과 : "+result)
					alert("존재하지 않는 회원입니다. 회원 정보를 확인해주세요!");
				}
				$("#password").html(result);
			}
		})
	});
	
	
});
</script>




















