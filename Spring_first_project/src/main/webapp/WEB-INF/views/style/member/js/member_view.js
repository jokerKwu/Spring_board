/**
 * 
 */
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			// 확인 대화상자	
			if(confirm("Do you want modify?")){
				document.form1.action = "${path}/member/update.do";
				document.form1.submit();
			}
		});
	});
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			// 확인 대화상자 
			if(confirm("do you want delete?")){
				document.form1.action = "${path}/member/delete.do";
				document.form1.submit();
			}
		});
	});