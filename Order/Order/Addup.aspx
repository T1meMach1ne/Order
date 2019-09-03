<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addup.aspx.cs" Inherits="Order.MyOrde" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/css.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <style type="text/css">
        .all
        {
             background-color:#F1F4F5; 
        }
        .style1
        {
            width: 23%;
        }
        .hread
        {
             background-color:#FE4D3D; 
             height:50px;   
             line-height:50px;
             margin:-0.5% -0.5% 0px -0.5%;
        }
        .imgLogo
        {
             margin-left:300px;
             height:50px;   
             width:70px; 
             float:left;
        }
        
        .lbllogin
        {
             font-size:16px;
             color:Black;
        }
        .tbtop1
        {
             text-align:center;    
        }
        .div5
        {
            float: left;
            font-size: 30px;
            height: 40px;
            width: 60%;
            margin:0 10% auto 30%;
           
        }
        .lbl1
        {
            color: #999;
            font-size: 25px;
            background-color: #F1F4F5;
            border: 0px;
            width: 200px;
            background-color:inherit;
            font-weight:bold;
        }
        
    </style>
    <script>
        $(function () {
            if ($("lbllogin").text() == "") {
                $("#btnClose").hide();

            }
            else {
                $("#btnRegisters").hide();
            }
        });
        function clear1() {
            $("#TextBox3").val("");
        }
        function Save() {
            var t = getdata();

            $.ajax({
                url: "DataPage.aspx?id=submit1",
                data: {
                    info: t,
                    adress: $("#TextBox3").val(),
                    money: $("#Label1").html()
                },
                success: function (data) {
                    alert(data);
                }
            });
           
        }
        function getdata() {
            var str = "";
            $("#table1").find("tr").each(function () {
                if ($(this).index() != 0) {
                    str += $(this).find("td").eq(0).text() + ",";
                }
            });
     
            return str;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" class="all">
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
                        border: none; background-color: #FE4D3D; width:80px" 
                        onclick="btnRegisters_Click" />
                </td>
                <td>
                    <asp:Button ID="btnClose" Text="退出" runat="server" Style="color: Black; font-size: 15px;
                        border: none; background-color: #FE4D3D;width:80px" 
                        onclick="btnClose_Click" />
                </td>
            </tr>
        </table>
        </div>

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
        <table id="table1" width="85%" border="0" align="center" cellpadding="5" cellspacing="0" style="margin-top: 15px;
            text-align: center">
            <tr>
                <td width="25%" align="left">
                    <strong style="font-size: 14px; color: #333333">菜品名称</strong>
                </td>
                <td width="19%">
                    <strong style="font-size: 14px; color: #333333">单价</strong>
                </td>
                <td width="19%">
                    <strong style="font-size: 14px; color: #333333">数量</strong>
                </td>
                <td width="28%">
                    <strong style="font-size: 14px; color: #333333">金额</strong>
                </td>
                <td width="9%">
                    <strong style="font-size: 14px; color: #333333">#</strong>
                </td>
            </tr>
           
                    <%=aa()%>
               
            <tr>
                <td align="left">
                 
                </td>
                <td>
                    总计&nbsp;
                </td>
                <td>
                    <b style="color: #FE6600; font-size: 24px"></b>
                </td>
                <td>
                    <b style="color: #FE6600; font-size: 24px">￥<asp:Label ID="Label1" runat="server"
                        Text="0"></asp:Label></b>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table width="85%" border="0" align="center" cellpadding="5" cellspacing="0" style="margin-top: 20px;">
            <tr>
                <td class="style1">
                    送餐地址：
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Style="border: 1px solid #cccccc;" Width="550px" ></asp:TextBox><a
                        href="#" onclick="clear1();">[修改]</a>
                </td>
            </tr>
            <tr>
                <td width="11%">
                    付款类型：
                </td>
                <td width="89%">
                    <div class="zfxz" id="div_b1">
                        <a href="javascript:on_b(1,'餐到付款');">餐到付款</a></div>
                    <div class="zfxz2" id="div_b2">
                        <a href="javascript:on_b(2,'在线支付');">在线支付</a></div>
                </td>
            </tr>
        </table>
    </div>
    <div style="text-align: center; margin-top: 30px;">
        <img src="img/ico47.gif" onclick="Save()" /></div>
    </form>
</body>
</html>
