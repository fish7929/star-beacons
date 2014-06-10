
$(document).ready(function(){
	$('#login').click(function(){
		if ($('#user_name').val() == "test123" && $('#password').val() == '123456' ){
			setData('user_name', $('#user_name').val());
			$('#logoDiv a').prop('href', "patterns/main_frame");
			setUserName();
		}else{
			$('#user_name').val('');
			$('#password').val('');
			alert('用户名或者密码错误!');
		}
	});
});
