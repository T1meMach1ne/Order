<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Order.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>每食佳</title>
    <meta name="Generator" content="EditPlus" />
    <meta name="Author" content="milk" />
    <link rel="stylesheet" type="text/css" href="Styles/Login.css" />
    <script src="Scripts/tipswindown.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>
    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }
        a, img
        {
            border: 0;
        }
        body
        {
            font: 12px/180% Arial, Helvetica, sans-serif;
        }
        label
        {
            cursor: pointer;
        }
        .democode
        {
            width: 400px;
            margin: 30px auto 0 auto;
            line-height: 24px;
        }
        .democode h2
        {
            font-size: 14px;
            color: #3366cc;
            height: 28px;
        }
        .agree
        {
            margin: 40px auto;
            width: 400px;
            font-size: 16px;
            font-weight: 800;
            color: #3366cc;
        }
        .mainlist
        {
            padding: 10px;
        }
        .mainlist li
        {
            height: 28px;
            line-height: 28px;
            font-size: 12px;
        }
        .mainlist li span
        {
            margin: 0 5px 0 0;
            font-family: "宋体";
            font-size: 12px;
            font-weight: 400;
            color: #ddd;
        }
        .btnbox
        {
            text-align: center;
            height: 30px;
            padding-top: 10px;
            background: #ECF9FF;
        }
        
        #windownbg
        {
            display: none;
            position: absolute;
            width: 100%;
            height: 100%;
            background: #000;
            top: 0;
            left: 0;
        }
        #windown-box
        {
            position: fixed;
            _position: absolute;
            border: 5px solid #E9F3FD;
            background: #FFF;
            text-align: left;
        }
        #windown-title
        {
            position: relative;
            height: 45px;
            border: 1px solid #A6C9E1;
            overflow: hidden;
            background: url(images/tipbg.png) 0 0 repeat-x;
        }
        #windown-title h2
        {
            position: relative;
            left: 10px;
            top: 5px;
            font-size: 18px;
            color: #666;
        }
        #windown-close
        {
            position: absolute;
            right: 10px;
            top: 8px;
            width: 10px;
            height: 16px;
            text-indent: -10em;
            overflow: hidden;
            background: url(images/tipbg.png) 100% -49px no-repeat;
            cursor: pointer;
        }
        #windown-content-border
        {
            position: relative;
            top: -1px;
            border: 1px solid #A6C9E1;
            padding: 5px 0 5px 5px;
        }
        #windown-content img, #windown-content iframe
        {
            display: block;
        }
        #windown-content .loading
        {
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -8px;
            margin-top: -8px;
        }
        
        body
        {
            text-align: center;
            font-family: 宋体;
            background-color: #F1F4F5;
        }
        .divtop
        {
            background-color: #FE4D3D;
            font-size: 20px;
            text-align: center;
            height: 50px;
            line-height: 50px;
        }
        .div2
        {
            background-color: #FE4D3D;
            margin: 0px 0px auto 14%;
            float: left;
        }
        .div3
        {
            float: right;
            width: 36%;
            text-align: center;
            line-height: 40px;
            height: 100%;
            margin-right: 11%;
        }
        
        a
        {
            text-decoration: none;
            color: White;
        }
        .lbl1
        {
            color: #999;
            font-size: 25px;
            background-color: #F1F4F5;
            border: 0px;
            width: 200px;
            font-weight:bold;
        }
        .imgs
        {
            margin: 0px 0px 0 6%;
            float: left;
            width: 25%;
        }
        .div5
        {
            float: left;
            font-size: 30px;
            height: 40px;
            width: 60%;
            float: right;
            margin: 0 auto 5% 2%;
        }
        .div6
        {
            float: left;
            width: 38%;
            height: 60px;
            line-height: 80px;
            margin-left: -8%;
        }
        #btnLogin
        {
            background-color: Red;
            border: none;
        }
        
        #btnChangeAddress
        {
            background-color: Red;
            border: none;
        }
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
            font-family: 幼圆;
            background: #F1F4F5;
        }
        
        #login
        {
            position: relative;
            display: none;
            top: 20px;
            left: 30px;
            width: 400px;
            height: 410px;
            background-color: #ffffff;
            text-align: center;
            border: solid 1px;
            padding: 10px;
            z-index: 1;
            margin: 10% 31% auto 31%;
        }
        #panel
        {
            background-color: #CCFFFF;
            padding: 10px;
            margin: 10px;
        }
        table
        {
            border: 1px solid #CFD6DE;
            width: 350px;
            height: 300px;
            margin: 0 0 0 0px;
            background: #FEFEFE;
            border-collapse: collapse;
            padding: auto;
        }
        table td
        {
            padding: 6px 0 0 10px;
        }
        .texts
        {
            width: 97%;
            height: 40px;
            border: 1px solid #8E96A1;
            color: #333;
            font-size: 20px;
            text-align: center;
            line-height: 40px;
        }
        .labCheckBox
        {
            float: left;
            cursor: pointer;
            font-size: 15px;
            font-weight: 400;
            color: #666666;
        }
        .loginButton1
        {
            border-top-style: none;
            border-bottom-style: none;
            border-left-style: none;
            border-right-style: none;
            width: 330px;
            font-size: 20px;
            height: 50px;
            background: #3A91D5;
            color: #EEE;
            letter-spacing: 10px;
            font-weight: bold;
            margin-right: auto;
            margin-left: auto;
            text-align: center;
            vertical-align: middle;
            line-height: 50px;
        }
        .loginButton2
        {
            border-top-style: none;
            border-bottom-style: none;
            border-left-style: none;
            border-right-style: none;
            width: 330px;
            font-size: 20px;
            height: 50px;
            background: #7CB461;
            color: #EEE;
            letter-spacing: 10px;
            font-weight: bold;
            margin-right: auto;
            margin-left: auto;
            vertical-align: middle;
            line-height: 50px;
            text-align: center;
        }
        .log
        {
            font-size: 20px;
            color: Red;
        }
        .div1
        {
            margin: 0px 0px 0px 0px;
        }
        .lbllogin
        {
            padding: 3px auto auto 3px;
            text-align: center;
        }
        #btnRegister
        {
            font-size: 20px;
            margin: 5px auto auto 0px;
            color: White;
        }
        #center
        {
            margin-right: auto;
            margin-left: auto;
        }
        .div5s
        {
            float: left;
            width: 50%;
            height: 20%;
            line-height: 70px;
            margin: auto auto auto -16%;
        }
        .main
        {
            width: 80%;
            margin: 1% 11% auto 13%;
        }
        .tb1
        {
            width: 100%;
            height: 550px;
            background-color: #F1F4F5;
        }
        .tb1 tr td
        {
            height: 160px;
            width: 100px;
            border: 1px;
        }
        
        .image
        {
            height: 80%;
            width: 100%;
            margin-top: 10%;
            border: 0px;
        }
        .tball
        {
            height: 70%;
            width: 200px;
        }
        .tbimg
        {
            float: left;
            width: 40%;
            height: 100%;
        }
        .tblbl1
        {
            float: right;
            height: 100px;
            width: 60%;
            line-height: 15px;
        }
        .tblbl2
        {
            font-size: 12px;
            color: #999999;
        }
        .tblbl3
        {
            color: #FFC30C;
        }
        .Name
        {
            font-size: 20px;
            font-weight: bold;
        }
        .Store
        {
            color: Black;
        }
        .atb1
        {
            color: Black;
            font-size: 18px;
            border: 0px;
            background-color: #F1F4F5;
        }
        .atb
        {
            border: 0px;
            height: 12%;
            font-weight: bold;
            background-color: #F1F4F5;
        }
        .atb tr td
        {
            width: 30%;
            text-align: left;
        }
        .txtSelect
        {
            width: 80%;
            height: 50px;
            border: 1px solid #8E96A1;
            color: #F1F4F5;
            font-size: 20px;
            line-height: 50px;
        }
        .btntd
        {
            width: 120%;
            height: 40px;
            background-color: #FE4D3D;
            border: 0px;
        }
        .btntd tr td
        {
            height: 30px;
        }
        #btnChangeAddress
        {
            background-color: #FE4D3D;
        }
        .imagelet
        {
            height: 81px;
            width: 50%;
            float: left;
            margin: -5% 0 0 -2%;
        }
        .tbtop
        {
            border: 0px;
        }
        
        .ImageLogo
        {
            height: 180px;
            width: 200px;
        }
        .divimg
        {
            float: left;
            width: 80%;
            margin-top: 1%;
            margin-left: 13%;
            text-align: left;
        }
    </style>
    <script>
        $(function () {
            if ($("lbllogin").text() != "登录") {
                $("#btnClose").hide();

            }
            else {
                $("#btnRegisters").hide();
                $("#btnClose").show();
            }


            $("#btnSaleNum").click(function () {
                $.ajax({
                    url: "DataPage.aspx?id=SaleNum",
                    data: {
                },
                success: function (data) {
                    $("#tb1 tr").each(function () {
                        if ($(this).index() > 0) {
                            $("#tb1 tr").remove();
                        }
                    });
                    $("#tb1").append(data);
                }
            });
        });
        $("#btnUsually").click(function () {
            $.ajax({
                url: "DataPage.aspx?id=Usually",
                data: {
            },
            success: function (data) {
                $("#tb1 tr").each(function () {
                    if ($(this).index() > 0) {
                        $("#tb1 tr").remove();
                    }
                });
                $("#tb1").append(data);

            }
        });
    });
    $("#btnEvaluation").click(function () {
        $.ajax({
            url: "DataPage.aspx?id=Evaluation",
            data: {
        },
        success: function (data) {
            $("#tb1 tr").each(function () {
                if ($(this).index() > 0) {
                    $("#tb1 tr").remove();
                }
            });
            $("#tb1").append(data);

        }
    });
});
$("#btnFoodtime").click(function () {
    $.ajax({
        url: "DataPage.aspx?id=Foodtime",
        data: {
    },
    success: function (data) {
        $("#tb1 tr").each(function () {
            if ($(this).index() > 0) {
                $("#tb1 tr").remove();
            }
        });
        $("#tb1").append(data);

    }
});
});
$("#Usuall").click(function () {
    $.ajax({
        url: "DataPage.aspx?id=Usuall",
        data: {
    },
    success: function (data) {
        $("#tb1 tr").each(function () {
            if ($(this).index() > 0) {
                $("#tb1 tr").remove();
            }
        });
        $("#tb1").append(data);

    }
});
});
$("#btnSelectd").click(function () {
    $.ajax({
        url: "DataPage.aspx?id=txtStoreName",
        data: {
            storeName: $("#txtStoreName").val()
    },
    success: function (data) {
        $("#tb1 tr").each(function () {
            if ($(this).index() > 0) {
                $("#tb1 tr").remove();
            }
        });
        $("#tb1").append(data);

    }
});
});
});
function showTipsWindown(title, id, width, height) {
    //启动遮盖层
    tipsWindown(title, "id:" + id, width, height, "true", "", "true", id);

}
function ShowClassDiv(obj) {
    if ($("#Label1").text() == "登录") {
        //  参数1：层的title；参数2：层的ID，参数3：宽度；参数4：高度
        showTipsWindown("登录", 'simTestContent', 370, 400);
    }
    else {
        $("#whelect").attr("click", false);

    }
}
function confirmTerm() {
    //js调用服务器按钮的事件代码

    if ($("#Label1").text() == "登录") {
        $.ajax({
            url: "DataPage.aspx?id=login",
            data: {
                name: $("#windown-box").find('input[id=txtUserName]').val(),
                pwd: $("#windown-box").find('input[id=txtPwd]').val()

            },
            success: function (data) {
               
                if (data == "OK") {
                    var txtUserName = $("#windown-box").find('input[id=txtUserName]').val();
                    $("#windownbg").remove();
                    $("#windown-box").fadeOut("slow", function () { $(this).remove(); });
                    $("#Label1").text(txtUserName);
                    $("#btnRegisters").hide();
                    $("#btnClose").show();

                }
            }
        });
    }
}

function ShowMsg(obj) {
    //onblur点击获取控件焦点
    obj.style.color = "#999";
    if (obj.value == "") {
        obj.value = "请输入用户名！";
    }
}
function HiddenMsg(obj) {
    //onfocus失去焦点
    obj.style.color = "#333";
    if (obj.value == "请输入用户名！") {
        obj.value = "";
    }
}
function ShowMss(obj) {
    //onblur点击获取控件焦点
    obj.style.color = "#999";
    if (obj.value == "") {
        obj.value = "请输入商家进行搜索";
    }
}
function HiddenMss(obj) {
    //onfocus失去焦点
    obj.style.color = "#333";
    if (obj.value != "") {
        obj.value = "";
    }
}
         
        
    </script>
    <script id="DataLoad" type="text/javascript" defer="defer"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divC" style="display: none;">
        <div id="simTestContent" class="simScrollCont">
            <div class="mainlist">
                <div class="div1">
                    <img src="img/444.png" />
                </div>
                <table class="tbtop">
                    <tr>
                    </tr>
                    <tr>
                        <td>
                            <input id="txtUserName" type="text" class="texts" onfocus="HiddenMsg(this);" value="请输入用户名！"
                                style="color: #999" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input id="txtPwd" type="password" class="texts" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label id="labMsg" for="ck1" class="labCheckBox" title="为了安全起见，请慎重选择此项目.....">
                                <input id="ck1" type="checkbox" />自动登录</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="loginButton1">
                                <input type="button" class="loginButton1" id="ShowLogins" onclick="confirmTerm();"
                                    value="登录" /></div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="divtop">
        <div class="div2">
            <label>
                地址:&nbsp;<asp:Label ID="lblAddress" runat="server"></asp:Label></label>
            &nbsp;&nbsp;<asp:Button ID="btnChangeAddress" CssClass="bgs1" runat="server" Text="[切换地址]"
                OnClick="btnChangeAddress_Click" />
        </div>
        <div class="div3">
            <table class="btntd">
                <tr>
                    <td>
                        <a onclick="ShowClassDiv(this)" id="whelect" style="color: Black; font-size: 15px;
                            font-family: 宋体">
                            <asp:Label runat="server" ID="Label1" Text="登录"></asp:Label></a>
                    </td>
                    <td>
                        <asp:Button ID="btnRegisters" Text="注册" runat="server" Style="color: Black; font-size: 15px;
                            border: none; background-color: #FE4D3D" OnClick="btnRegisters_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnClose" Text="退出" runat="server" Style="color: Black; font-size: 15px;
                            border: none; background-color: #FE4D3D" OnClick="btnClose_Click" />
                    </td>
                    <td>
                        <a href="DownApp.aspx">手机APP</a>
                    </td>
                    <td>
                        <a href="Server.aspx">客服</a>
                    </td>
                    <td>
                        <a href="Server.aspx">美食家</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="imgs">
        <img src="img/logos.png" class="ImageLogo" />
    </div>
    <div class="div5">
        <table class="atb">
            <tr>
                <td>
                    <input id="Usuall" class="lbl1" value="首  页" style="text-align: left" />
                </td>
                <td>
                    <asp:Button runat="server" ID="MyOrder" CssClass="lbl1" Text="我的外卖" OnClick="MyOrder_Click" />
                </td>
                <td>
                    <asp:Button CssClass="lbl1" ID="StoreSelect" runat="server" Text="热门商铺"/>
                </td>
            </tr>
        </table>
    </div>
    <div class="imagelet">
        <img src="img/qweqw.JPG" /></div>
    <div class="div5s">
        <input id="btnUsually" type="button" class="atb1" value="默认排序" />
        &nbsp;&nbsp;&nbsp;
        <input id="txtHide" runat="server" type="hidden" />
        <input id="btnSaleNum" type="button" class="atb1" value="销量" />
        &nbsp;&nbsp;&nbsp;
        <input id="btnEvaluation" type="button" class="atb1" value="评价" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="btnFoodtime" type="button" class="atb1" value="送餐速度" />
    </div>
    <div class="div6">
        <input id="txtStoreName" class="txtSelect" type="text" onblur="ShowMss(this);" onfocus="HiddenMss(this);"
            runat="server" value="请输入商家进行搜索" style="color: #999" />       
        <input type="button" id="btnSelectd" value="搜索" class="btnSelect"/>
    </div>
    <div class="divimg">
        <img src="img/无标题.jpg" />
    </div>
    <div class="main">
        <table id="tb1" class="tb1" border="1">
        <%= BindDataTr1()%>
        </table>
    </div>
    </form>
</body>
</html>
 