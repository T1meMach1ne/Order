<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="Order.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js"></script>
    <style>
        body
        {
        }
        .div1
        {
            float:left;
            margin: 1% 30% auto 30%;
            width: 50%;
        }
        .lblAddress
        {
            height: 50px;
            font-size: 20px;
            text-align: center;
        }
        .txtAddress
        {
            width: 50%;
            height: 39px;
            border: 1px solid #8E96A1;
            color: #333;
            font-size: 20px;
            line-height: 40px;
        }
        
        .btnSelect
        {
            background-color: #FE4D3D;
            height: 40px;
            width: 60px;
            font-size: 18px;
            color: White;
        }
        .mess
        {
            font: Red;
        }
        .hread
        {
            background-color: #FE4D3D;
            height: 50px;
            line-height: 50px;
            margin: -0.5% -0.5% 0px -0.5%;
        }
        .center
        {
            background-image: url(img/backgimag.jpg);
            height: 670px;
            width: 101%;
            background-repeat: repeat;
            margin: 0 -1% 0 -0.5%;
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
       .lbllogin
       {
             width:100px;    
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
        #imgAddress
        {
             height:500px;
             width:100%; 
             border:1px;   
        }
        #imgAddress
        {
             width:100%;
             height:87%;    
        }
    </style>
    <script type="text/javascript">
    </script>
    <script>
        $(function () {
            $("#imgAddress").hide();
            if ($("lbllogin").text() == "") {
                $("#btnClose").hide();

            }
            else {
                $("#btnRegisters").hide();
                $("#btnClose").show();
            }
           
        });
        function ifValues() {
            var txtAddress = $("#txtAddress").val();
            if (txtAddress == "三峡职业技术学院") {
                $("#imgAddress").show();
            }
        }
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
    <div class="center">
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
        <div class="div1">
            <label class="lblAddress">
                请输入地址:</label><input type="text" runat="server" id="txtAddress" class="txtAddress"  />
                    <input class="btnSelect" type="button" value="搜索" onclick="ifValues();"/>
            <label id="mess" class="mess" runat="server"></label></div>
                
        <asp:ImageButton ID="imgAddress" ImageUrl="~/img/address.png" runat="server" 
            onclick="imgAddress_Click"/>
    
    </div>
   </form>
</body>
</html>
