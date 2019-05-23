//刷新父页面的列表
function refParPage(parentUrl){
    var parentObj = $(window.parent.document).contents().find("iframe[data-id='"+parentUrl+"']")[0].contentWindow;
    //需要父页面实现loadData方法
    if(typeof parentObj.loadData === 'function'){
        parentObj.loadData();
    }
}

//加载分页页码
function renderPaging(pages,currentPageNum){
    var begin = 1;
    var end = pages;
    if(currentPageNum - 5 > 0){
        begin = currentPageNum - 5;
    }
    if(currentPageNum + 5 <= pages){
        end = currentPageNum + 5;
    }
    var pagingHtml = "";

    for(var i = begin;i<=end;i++){
        if(i == currentPageNum){
            pagingHtml += (
            '<li class="active"><a href="javascript:void(0)" onclick="paging('+pages+','+i+',true)">'+i+'</a></li>'
            );
        }else{
            pagingHtml += (
            '<li ><a href="javascript:void(0)" onclick="paging('+pages+','+i+',true)">'+i+'</a></li>'
            );
        }
    }

    var previous = '<li><a href="javascript:void(0)" onclick="paging('+pages+',-1)">&laquo;</a></li>';
    var next = '<li><a href="javascript:void(0)" onclick="paging('+pages+',1)">&raquo;</a></li>';
    $("#dataPage").append(previous+pagingHtml+next);
}

//执行分页点击事件
function paging(pages,pageNum,clickNo)
{
    var pageNumObj = $("#pageNum");
    //点击页码
    if(clickNo){
        pageNumObj.val(pageNum);
    }else{//点击上一页下一页
        var countPage = eval(pageNumObj.val())+pageNum;
        if(countPage < 1 || countPage > pages){
            return;
        }
        pageNumObj.val(countPage);
    }
    loadData();//各自业务请实现loadData函数。submit表单就行。
}


//上传图片
function uploadImg(obj,contentId,isCreate){
    layer.load();
    var id = $(obj).attr("id");
    $(obj).attr("disabled",false);
    $.ajaxFileUpload({
        url: contextPath+"/upload/uploadImg.html",
        secureuri:false,
        fileElementId: id,
        dataType: 'json',
        success: function(data) {
            layer.closeAll('loading');
            if(data && data.msg == 'success'){
                layer.msg('上传成功');
                //把返回的地址存放到隐藏域
                var hiddenObj = $("#"+id).parent().siblings("input");
                var hidVal = hiddenObj.val();
                if(hidVal && hidVal.length != 0){
                    //替换图片的情况(单个图片框，存放自己的图片地址)
                    var sigHidObj = $("#hidden"+contentId+isCreate);
                    if(sigHidObj.val() && sigHidObj.val().length != 0){
                        if(hidVal.indexOf(sigHidObj.val()) != -1){
                            hiddenObj.val(hidVal.replace(sigHidObj.val()+",",data.uploadName+","));
                            hiddenObj.val(hidVal.replace(sigHidObj.val(),data.uploadName));
                        }
                    }else{
                        hiddenObj.val(hiddenObj.val()+data.uploadName+",");
                    }
                    sigHidObj.val(data.uploadName);
                }else{
                    hiddenObj.val(data.uploadName+",");
                }
                $("#"+id).siblings("img").attr("src",nginxAddress+"/"+data.uploadName);
                //判断上传完图片后是否需要创建节点
                isCreate ++;
                if($("#"+contentId+isCreate).length>0){//可以查询到节点，不创建
                    return;
                }
                createUploadNode(contentId,isCreate);
            }else{
                if(data == -1){
                    layer.msg('上传图片类型不正确');
                }else if(data == -2){
                    layer.msg('上传图片大小超过限制');
                }else{
                    layer.msg('上传失败');
                }
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            layer.closeAll('loading');
            layer.msg("上传失败，请检查网络后重试");
        }
    });

}

//动态添加上传图片控件
function createUploadNode(contentId,isCreate,imgUrl){
    if(isCreate && isCreate < 10){
        var contentHtml = '<div class="col-sm-4">';
        contentHtml += '<img onclick="$(\'input[id='+contentId+isCreate+']\').click();"';
        if(imgUrl){
            contentHtml += ' src="'+nginxAddress+"/"+imgUrl+'">';
        }else{
            contentHtml += '>';
        }
        if(isCreate != -1){
            contentHtml += '<button type="button" class="btn btn-danger" onclick="delImg(\''+contentId+'\','+isCreate+')">删除</button>';
        }
        contentHtml += '<input id="'+contentId+isCreate+'" name="imgFile" type="file" onchange="uploadImg(this,\''+contentId+'\','+isCreate+')" style="display:none">';
        contentHtml += '<input type="hidden" id="hidden'+contentId+isCreate+'" value="'+(imgUrl?imgUrl:"")+'">';

        contentHtml += '</div>';
        $("#"+contentId).append(contentHtml);
    }
}


//删除图片
function delImg(contentId,isCreate){
    var hidObj = $("#"+contentId+isCreate).parent().siblings("input");
    var sigHidObj = $("#hidden"+contentId+isCreate);
    var sigHidVal = sigHidObj.val();
    var hidVal = hidObj.val();
    if(hidVal && hidVal.length > 0 && sigHidVal && sigHidVal.length > 0){
        hidObj.val(hidVal.replace(sigHidVal+",",''));
        sigHidObj.val("");
        $("#"+contentId+isCreate).parent().css("display","none");
    }
    if(sigHidVal && sigHidVal.length <= 0){
        return;
    }
    //$.ajax({
    //    type:"post",
    //    url:contextPath+"/upload/delUploadImg.html",
    //    data:{"imgUrl":sinHidVal},
    //    success:function(data){
    //        if("success" == data){
    //            layer.msg('删除成功');
    //        }else{
    //            layer.msg('删除失败');
    //        }
    //
    //    }
    //});
}


//上传suk预览图片
function uploadSukImg(contentId,isCreate){
    layer.load();
    var imgObj = $("#"+contentId+isCreate).siblings("img");
    $.ajaxFileUpload({
        url: contextPath+"/upload/uploadImg.html",
        secureuri:false,
        fileElementId: contentId+isCreate,
        dataType: 'json',
        success: function(data) {
            layer.closeAll('loading');
            if(data && data.msg == 'success'){
                layer.msg('上传成功');
                //把返回的地址存放到隐藏域
                var hiddenObj = $("#hidden"+contentId+isCreate);
                hiddenObj.val(data.uploadName+",");
                imgObj.attr("src",nginxAddress+"/"+data.uploadName);
            }else{
                if(data == -1){
                    layer.msg('上传图片类型不正确');
                }else if(data == -2){
                    layer.msg('上传图片大小超过限制');
                }else{
                    layer.msg('上传失败');
                }
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            layer.closeAll('loading');
            layer.msg("上传失败，请检查网络后重试");
        }
    });

}

//数据值为空验证
function isEmpty(val){
    if(val && val.length > 0){
        return false;
    }else{
        return true;
    }
}

//状态常量
var DEL_STATUS = {
    DEL:'T',NO_DEL:'F'
}