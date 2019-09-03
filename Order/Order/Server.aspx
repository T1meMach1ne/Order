<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server.aspx.cs" Inherits="Order.TypeInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <style>
        .hread
        {
            background-color: #FE4D3D;
            height: 50px;
            line-height: 50px;
            margin: -0.5% -0.5% 0px -0.5%;
        }
        .tbtop1
      {
             text-align:center;
                 
      }
      .imgLogo
        {
            margin-left: 300px;
            height: 50px;
            width: 70px;
            float: left;
        }
    </style>
    <script>
        $(function () {
            if ($("lbllogin").text() == "") {
                $("#btnClose").hide();

            }
            else {
                $("#btnRegisters").hide();
                $("#btnClose").show();
            }

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
                        onclick="btnRegisters_Click"/>
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
    </div>
    </form>
</body>
</html>
