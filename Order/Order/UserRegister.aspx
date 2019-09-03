<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="Order.Login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js"></script>
    <link href="Styles/login_register.css" rel="stylesheet" type="text/css" />
    <style>
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
        .div5
        {
            float: left;
            font-size: 30px;
            height: 40px;
            width: 60%;
            margin:0 10% auto 30%;
           
        }
    </style>
    <script>
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
        function closeWin() {
            window.opener = null;
            window.close();
        }
      
    </script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="hread">
    <img src="img/logos.png" class="imgLogo"/>
    
    <label style="font-size:25px; color:White;">美食家</label>
    </div>
       
      
            <div class="top">
                <img src="img/ico22.gif" /></div>
              <div class="div5">
            <table class="atb">
                <tr>
                    <td>
                        <asp:Button ID="Refresh" CssClass="lbl1" Text="首页" runat="server" 
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
               
            <div class="box">
                <div style="width: 360px; height: auto; float: left; margin: 30px 0px 0px 100px;
                    display: inline;">
                    <table width="100%" border="0" cellspacing="0" cellpadding="10" style="color: #000000;
                        font-size: 14px;">
                        <tr>
                            <td width="27%">
                                <span style="color: #FF0000">*</span>用户名
                            </td>
                            <td width="73%">
                                <asp:TextBox ID="txtUserName" runat="server" Style="border: 1px solid #C7C7C0; width: 230px;
                                    height: 26px;"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <span style="color: #FF0000">*</span>设置密码：
                            </td>
                            <td>
                                <asp:TextBox ID="txtPwd" runat="server" Style="border: 1px solid #C7C7C0; width: 230px;
                                    height: 26px;" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="color: #FF0000">*</span>确认密码：
                            </td>
                            <td>
                                <asp:TextBox ID="txtPwds" runat="server" Style="border: 1px solid #C7C7C0; width: 230px;
                                    height: 26px;" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>                       
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" /><span style="font-size: 12px"/>请阅读<a
                                    href="#">《用户服务协议》</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/ico58.gif" 
                                    onclick="ImageButton1_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                
        </div>
       </form>
</body>
</html>
