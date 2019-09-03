<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myorder.aspx.cs" Inherits="Order.Myorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js"></script>
    <style>
        body
        {
            background-color: #F1F4F5;
        }
        .hread
        {
            background-color: #FE4D3D;
            height: 50px;
            line-height: 50px;
            margin: -0.5% -0.5% 0px -0.5%;
        }
        .imgLogo
        {
            margin-left: 300px;
            height: 50px;
            width: 70px;
            float: left;
        }
        .lbl1
        {
            float: left;
        }
        .div5
        {
            float: left;
            font-size: 30px;
            margin-top: 40px;
            width: 68%;
            float: left;
        }
        .imgs
        {
            margin: 0px 0px 0 8%;
            float: left;
            height: 10%;
            width: 18%;
        }
        .atb
        {
            border: 0px;
            background-color: #F1F4F5;
            font-weight: bold;
            width: 110%;
        }
        .atb tr td
        {
            width: 20%;
        }
        
        .lbl1
        {
            color: #999;
            font-size: 30px;
            background-color: #F1F4F5;
            border: 0px;
            font-weight:bold;
        }
        .ImageLogo
        {
            height: 124px;
            width: 193px;
        }
        .leftdiv
        {
            height: 250px;
            width: 20%;
            float: left;
            margin: 5% 0 5% -13%;
        }
        .tb2 tr td
        {
            text-align: left;
            height: 60px;
            width: 100%;
        }
        .center
        {
            height: 100%;
        }
        .maindiv
        {
            margin: 5% 5% auto -5%;
            float: left;
            height: 200px;
            width: 60%;
        }
        
        .tb3
        {
            width: 100%;
        }
        .tb3 tr td
        {
            text-align: center;
            height: 30px;
            border: 1px solid;
        }
        .tbtop1
        {
             text-align:center;    
        }
    </style>
    <script>
        $(function () {
            if ($("lbllogin").text() == "") {
                $("#btnClose").hide();

            }
            else {
                $("#btnRegisters").hide();
                $("#btnClose").shhow();
            }
            $("#Allorder").click(function () {
                $.ajax({
                    url: "DataPage.aspx?id=Allorders",
                    data: {

                },
                success: function (data) {
                    $("#tb3 tr").each(function () {
                        if ($(this).index() > 0) {
                            $("#tb3 tr").remove();
                        }
                    });
                    $("#tb3").append(data);
                }
            });
        });
        $("#Userinfo").click(function () {
            $.ajax({
                url: "DataPage.aspx?id=Userinfos",
                data: {

            },
            success: function (data) {
                $("#tb3 tr").each(function () {
                    if ($(this).index() > 0) {
                        $("#tb3 tr").remove();
                    }
                });
                $("#tb3").append(data);
            }
        });
    });
});
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="hread">
         <div class="top2">
        <table class="tbtop1">
            <tr>
                <td>
                    <img src="img/logos.png" class="imgLogo" />
        <label style="font-size: 25px; color: White;">
            美食家</label>  
                </td>
                <td style="width:100px">
                    <asp:Label runat="server" ID="lbllogin" CssClass="lbllogin"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnRegisters" Text="注册" runat="server" Style="color: Black; font-size: 15px;
                        border: none; background-color: #FE4D3D; width:80px" />
                </td>
                <td>
                    <asp:Button ID="btnClose" Text="退出" runat="server" Style="border-style: none; border-color: inherit; border-width: medium; color: Black; font-size: 15px;
                        background-color: #FE4D3D; width:80px; height: 21px;" 
                        onclick="btnClose_Click" />
                </td>
            </tr>
        </table>
        </div>
    </div>
    <div class="center">
        <div class="imgs">
            <img src="img/logos.png" class="ImageLogo" />
        </div>
        <div class="div5">
            <table class="atb">
                <tr>
                    <td>
                        <asp:Button ID="Refresh" CssClass="lbl1" Text="首  页" runat="server" 
                            Style="text-align: left" onclick="Refresh_Click" />
                    </td>
                    <td>
                        <asp:Button runat="server" ID="MyOrders" CssClass="lbl1" Text="我的外卖" 
                            onclick="MyOrders_Click" />
                    </td>
                    <td>
                        <asp:Button CssClass="lbl1" ID="StoreSelect" runat="server" Text="联系我们" 
                            onclick="StoreSelect_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <div class="leftdiv">
                <table class="tb2">
                    <tr>
                        <td>
                            <label style="font-size: 20px; font-weight: bold;">
                                订单查询</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" id="Allorder" class="btn" value="全部订单" />
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                            <label style="font-size: 20px; font-weight: bold;">
                                账户管理</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" id="Userinfo" class="btn" value="个人信息" />
                        </td>
                    </tr>
                    
                </table>
            </div>
            <div class="maindiv">
                <table id="tb3" class="tb3">
                   
                    
                    <%= BindDataTr1()%>
                   
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
