<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meta.aspx.cs" Inherits="Order.meta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>
    <style>
        body
        {
            background:#F1F4F5;
            color:black;
        }
        .nam
        {
            margin-left:40%;
            margin-top:15%;
            font-family:华文行楷;
            font-size:30px;
        } 
    </style>
    <script>
        var _times = 1;
        $(function () {
            $("#Label1").hide();
            $("#Label2").hide();
            $("#Label3").hide();
            $("#Label4").hide();
            $("#Label5").hide();
            $("#Label6").hide();
            $("#Label7").hide();
            $("#Label8").hide();
            $("#Label9").hide();
            $("#Label10").hide();
            $("#Label11").hide();
            $("#Label12").hide();
            $("#Label13").hide();
            $("#Label14").hide();
            $("#Label15").hide();
            $("#Label16").hide();
            $("#Label17").hide();
            $("#Label18").hide();
            $("#Label19").hide();
            $("#Label20").hide();
            $("#Label21").hide();
            $("#Label22").hide();
            $("#Label23").hide();
            $("#Label24").hide();
            $("#Label25").hide();
            $("#Label26").hide();
            $("#Label27").hide();
            $("#Label28").hide();
            $("#Label29").hide();
            $("#Label30").hide();
            $("#Label31").hide();
            $("#Label32").hide();
            $("#Label33").hide();
            $("#Label34").hide();
            $("#Label35").hide();
            $("#Label36").hide();
            $("#Label37").hide();
        });
        function autoLinkPage() {
            $("#Label" + _times + "").fadeIn();
            if (_times > 38) {
                //执行跳转
                window.location = "Address.aspx";
            }
            _times++;
        }
        function autof() {
            setInterval("autoLinkPage()", 300);
        }
        
    </script>
</head>
<body onload="autof();">
    <form id="form1" runat="server">
    <div class="nam">
        <asp:Label ID="Label1" runat="server" Text="伟"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="大"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="的"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="度"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="娘"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="啊"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="以"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="吾"></asp:Label>
        <asp:Label ID="Label11" runat="server" Text="之"></asp:Label>
        <asp:Label ID="Label12" runat="server" Text="血"></asp:Label>
        <asp:Label ID="Label13" runat="server" Text="液"></asp:Label>
        <asp:Label ID="Label14" runat="server" Text="为"></asp:Label>
        <asp:Label ID="Label15" runat="server" Text="祭"></asp:Label>
        <asp:Label ID="Label16" runat="server" Text="奠"></asp:Label>
        <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label19" runat="server" Text="请"></asp:Label>
        <asp:Label ID="Label20" runat="server" Text="听"></asp:Label>
        <asp:Label ID="Label21" runat="server" Text="从"></asp:Label>
        <asp:Label ID="Label22" runat="server" Text="吾"></asp:Label>
        <asp:Label ID="Label23" runat="server" Text="之"></asp:Label>
        <asp:Label ID="Label24" runat="server" Text="召"></asp:Label>
        <asp:Label ID="Label25" runat="server" Text="唤"></asp:Label>
        <asp:Label ID="Label26" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label27" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label28" runat="server" Text="现"></asp:Label>
        <asp:Label ID="Label29" runat="server" Text="身"></asp:Label>
        <asp:Label ID="Label30" runat="server" Text="吧！"></asp:Label>
        <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label33" runat="server" Text="点"></asp:Label>
        <asp:Label ID="Label34" runat="server" Text="餐"></asp:Label>
        <asp:Label ID="Label35" runat="server" Text="项"></asp:Label>
        <asp:Label ID="Label36" runat="server" Text="目"></asp:Label>
        <asp:Label ID="Label37" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label38" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
