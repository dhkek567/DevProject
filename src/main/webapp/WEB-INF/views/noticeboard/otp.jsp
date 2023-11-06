
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
	<!DOCTYPE html>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
		$(function() {
			var errorMsg = "${errorMsg}";
			if (errorMsg != "") {
				alert(errorMsg);
			}
		});
	
		function frmCheck() {
			if ($("#code").val() == "") {
				alert("코드를 입력해주세요.");
				$("#code").focus();
				return false;
			}
		}
	</script>
	
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
			<div class="login-box"  style="margin-top:15%;">
				<div class="card">
				<form action ="/notice/otpAccount.do" onsubmit="return frmCheck();" method="POST">
					<div class="card-body login-card-body">
						<div class="login-logo">
							<a href=""><b>DDIT</b>BOARD</a>
						<table width="100%">
							<tr>
								<td width="50%">
									<button type="button" class="btn btn-primary btn-block" id="forEncode">인증번호</button>
								</td>
								<td width="50%">
									<button type="button" class="btn btn-primary btn-block" id="forBarcode">QR</button>
								</td>
							</tr>
						</table>
						<div id="codeArea">		
						</div>
			
					</div>
				</form>
				</div>
			</div>
			</div>
			<div class="col-md-4"></div>
		</div>	
	</div>
	<script type="text/javascript">
	$(function(){
		var forEncode = $('#forEncode');
		var forBarcode = $('#forBarcode');
		var codeArea = $('#codeArea');
		
		forEncode.on('click', function(){
			codeArea.html("");
			codeArea.append("<br/><p style='font-weight: bold;'>키 인증 번호 :</p>");
			codeArea.append("<input type='text' class='form-control' name='encodedKey' value='${encodedKey }' readonly='readonly'/>");
			codeArea.append("</br><p style='font-weight: bold;''>코드 입력창 :</p>");
			codeArea.append("<input type='text' class='form-control' id='code' name='code' placeholder='코드를 입력해주세요'/>");
			codeArea.append('<br/><input type="submit" class="btn btn-lg btn-dark" value="전송" style="margin-top:10px;">');
		});
		
		forBarcode.on('click', function(){
			codeArea.html("");
			codeArea.append("<table align='center'><tr><td><img src='${QrUrl}'/></td></tr></table>");
			codeArea.append("<p style='font-weight: bold;''>코드 입력창 :</p>");
			codeArea.append("<input type='text' class='form-control' id='code' name='code' placeholder='코드를 입력해주세요'/>");
			codeArea.append('<br/><input type="submit" class="btn btn-lg btn-dark" value="전송" style="margin-top:10px;">');	
		});
	});
	</script>