/**
 * Created by Mr on 2019/1/5.
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
function updatePurchase() {
    var purchaseId = $('#purchaseid').val();
    var orderId = $('#purchase-orderId').val();
    var communityId = $('#purchase-communityId').val();
    var comment = $('#purchase-comment').val()  ;
    var publisherId = $('#purchase-publisherId').val();
    var param = {
        'purchase.purchaseId': purchaseId,
        'purchase.orderId': orderId,
        'purchase.communityId': communityId,
        'purchase.comment': comment,
        'purchase.publisherId': publisherId,
    };
    if (orderId  === "") {
        alert("订单ID不能为空！");
    }else if(communityId === ""){
        alert("商品ID不能为空！");
    }else if(publisherId === ""){
        alert("发布者ID不能为空！");
    } else {
        postRightAjax("purchase_updatePurchase.action",param,uPurchase);
    }
};
function uPurchase(data) {
    if(data.resultCode === "200"){
        alert("修改购买记录成功");
        window.location.href="http://localhost:8080//adminPurchaseList.jsp";
        return;
    }
    else if(data.resultCode === "400"){
        alert(data.resultDesc);
    }
}
