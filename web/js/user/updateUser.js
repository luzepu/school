/**
 * Created by Mr on 2019/1/6.
 */
function postRightAjax(url,param,callback){
    $.ajax({
        url : url,
        type : 'post',
        data : param,
        async: false,
        dataType : 'json',
        success : function(data, status) {
            if (status == "success") {
                callback(data);
            }
        },
        error : function(data, status, e) {
            alert(e);
        },
        complete : function() {
        }
    });
}
function updateUser() {
    var id  = $('#userid').val();
    var account = $('#user-account').val();
    var username = $('#user-username').val();
    var password = $('#user-password').val()  ;
    var role = $('#user-role').val();
    var param = {
        'user.id': id,
        'user.account': account,
        'user.username': username,
        'user.password': password,
        'user.role': role,
    };
    if (account === "") {
        alert("账号不能为空！");
    }else if(username === ""){
        alert("用户名不能为空！");
    }else if(password === ""){
        alert("密码不能为空！");
    } else {
        postRightAjax("user_updateUser.action",param,uUser);
    }
};
function uUser(data) {
    if(data.resultCode === "200"){
        alert("用户信息修改成功");
        window.location.href="http://localhost:8080//userList.jsp";
        return;
    }
    else if(data.resultCode === "400"){
        alert(data.resultDesc);
    }
}