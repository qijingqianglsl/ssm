/**
 * Created by wangbing on 2016/11/3 0003.
 */
//获取验证码
function clickButton(obj){
    var obj = $(obj);
    obj.attr("disabled","disabled");/*按钮倒计时*/
    var time = 60;
    var set=setInterval(function(){
        obj.val(--time+"(s)");
    }, 1000);/*等待时间*/
    setTimeout(function(){
        obj.attr("disabled",false).val("重新获取验证码");/*倒计时*/
        clearInterval(set);
    }, 60000);
}
