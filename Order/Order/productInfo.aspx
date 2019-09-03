<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productInfo.aspx.cs" Inherits="Order.productInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <style type="text/css">
        .noe3
        {
            width: 100%;
            height: 65px;
            background-color: #F1FEDD;
        }
        .noe1
        {
            color: Black;
            font-size: 20px;
            margin: -33px 0px 0px 30%;
        }
        .noe2
        {
            margin: -10px 0px 0px 25%;
        }
        .noe4
        {
            margin: -28px 0px 0px 46%;
        }
        .noe5
        {
            width: 70%;
            height: 40px;
            margin-left: auto;
            margin-right: auto;
            background: #FFFFFF;
            margin-top: 20px;
        }
        .noe6
        {
            width: 50%;
            margin-left: 15%;
            background: #FFFFFF;
            margin-top: 20px;
            float: left;
        }
        .noe666
        {
            width: 50%;
            margin-left: 15%;
            background: #FFFFFF;
            margin-top: 20px;
            float: left;
        }
        .noe66
        {
            width: 50%;
            margin-left: 15%;
            height: 300px;
            background: #FFFFFF;
            margin-top: 20px;
            float: left;
        }
        .noe7
        {
            text-indent: 5%;
            background: #FFF5F4;
        }
        .noe8
        {
            background: #F5F5F5;
            position:relative;
        }
        .noe9
        {
            width: 60%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5px;
            height: 40px;
            line-height: 40px;
        }
        a
        {
            text-decoration: none;
        }
        .noe10
        {
            font-family: 宋体;
            font-size: 20px;
            font-weight: bold;
        }
        .noe11
        {
            margin: -40px 0px 0px 94%;
        }
        .noe12
        {
            width: 100%;
            height: 100%;
            border-collapse: collapse;
        }
        .noe12 tr td
        {
            width: 50%;
            border-bottom: 1px solid #F5F5F5;
            height: 50px;
        }
        .noe13
        {
            text-indent: 30%;
        }
        .noe14
        {
            height: 25px;
            width: 25px;
        }
        .noe15
        {
            text-indent: 5%;
        }
        .noe16
        {
            width: 100%;
            height: 100%;
        }
        .noe16 tr td
        {
            width: 20%;
        }
        .noe17
        {
            margin-left: 66%;
            margin-top: 20px;
            position: fixed;
        }
        .noe18
        {
            width: 195px;
            height: 292px;
        }
        .noe19
        {
            margin-left: 86%;
            margin-top: 20px;
            position: fixed;
        }
        .noe20
        {
            position: fixed;
        }
        .noe21
        {
            float: left;
            width: 100%;
            height: 3px;
            background: #FE4D3D;
            margin-top: 20px;
        }
        .noe22
        {
            float: left;
            margin-left: 15%;
            margin-top: 20px;
        }
        .noe23
        {
            position:fixed;
            margin-top:570px;
            margin-left:66%;
        }
        .noe24
        {
        }
        .hread
        {
            background-color: #FE4D3D;
            height: 60px;
            line-height: 50px;
            margin:-0.5% -0.5% -0.5% -0.5%;
        }
        .tbtop1
      {
             text-align:center;
             height:34px;
             width: 701px;
             
        }
        .imgLogo
        {
            height: 39px;
            width: 129px;
        }
        .style1
        {
            width: 307px;
        }
        .style2
        {
            width: 135px;
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
           $("#imgAddress").hide();
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
<body class="noe8">
    <form id="form1" runat="server">
    <div class="hread">        
            <div class="top2">
        <table class="tbtop1">
            <tr>
                <td class="style1">
                    <img src="img/logos.png" class="imgLogo"/>
        <label style="font-size: 25px; color: White;">
            美食家</label>  
                </td>
                <td style="width:100px">
                    <asp:Label runat="server" ID="lbllogin" CssClass="lbllogin"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Button ID="btnRegisters" Text="注册" runat="server" Style="color: Black; font-size: 15px;
                        border: none; background-color: #FE4D3D; width:80px" onclick="btnRegisters_Click" 
                         />
                </td>
                <td>
                    <asp:Button ID="btnClose" Text="退出" runat="server" Style="color: Black; font-size: 15px;
                        border: none; background-color: #FE4D3D;width:80px" onclick="btnClose_Click" 
                         />
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
                            Style="text-align: left" Width="190px" onclick="Refresh_Click"/>
                    </td>
                    <td>
                        <asp:Button runat="server" ID="MyOrders" CssClass="lbl1" Text="我的外卖" onclick="MyOrders_Click" 
                            />
                    </td>
                    <td>
                        <asp:Button CssClass="lbl1" ID="StoreSelect" runat="server" Text="联系我们" onclick="StoreSelect_Click" 
                             />
                    </td>
                </tr>
            </table>
        </div>
       <input type="hidden" id="txtData" />
    <div class="noe24">
        <div class="noe3">
        <div class="noe2">
            <asp:Image ID="Image1" ImageUrl="" runat="server" /></div>
        <div class="noe1">
            <asp:Label ID="Label9" runat="server" Text="小干锅"></asp:Label></div>
        <div class="noe4">
            <label style="font-family: 微软雅黑; font-size: 30px;">
                美食风暴</label></div>
       
    <div class="noe5">
        <div class="noe9">
            <a href="javascript:;aa();" style="font-family: 宋体;  font-size: 20px; color: Red;">特色</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                href="javascript:;bb();" style="font-family: 宋体; font-size: 20px; color: Green;"><asp:Label
                    ID="Label15" runat="server" Text="小干锅饭"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="javascript:;cc();" style="font-family: 宋体; font-size: 20px; color: Blue;"><asp:Label
                            ID="Label16" runat="server" Text="汤饭"></asp:Label></a>
        </div>
    </div>
    <div class="noe20">
        <asp:Image ID="Image3" ImageUrl="img/4.jpg" CssClass="noe18" runat="server" /></div>
    <div class="noe19">
        <asp:Image ID="Image4" ImageUrl="img/5.jpg" CssClass="noe18" runat="server" /></div>
    <div class="noe66" id="nub1">
        <table class="noe16">
            <tr>
                <td class="noe7" colspan="4">
                    <asp:Label ID="Label2" runat="server" CssClass="noe10" Text="特色美食"></asp:Label><label>（叫我No.1）</label>
                </td>
            </tr>
            <tr>
                <%=HTMLGridView1()%>
            </tr>
            <tr>
                <%=HTMLGridView2()%>
            </tr>
        </table>
    </div>
    <div class="noe17"><asp:Image ID="Image2" ImageUrl="img/3.jpg" runat="server" /></div>
    <div class="noe23" id="divID">
        <table id="table1">
           <tr>
                <td colspan="4" style="text-align: right; background-image: url(img/top.png); height: 70px;
                   width: 309px;">
               </td>
           </tr>
           
           <tr>
               <td colspan="4" style="text-align: right; background-image: url(img/foot.png); height: 39px;
                   width: 309px;">
                 <div style="height: 39px; line-height: 39px">
                        <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
                      份&nbsp; &nbsp;￥
                        <asp:Label ID="Label5" runat="server" Text="0"></asp:Label>&nbsp; &nbsp;
                        <img src="img/input.png" onclick="GetData()" />
                   </div>
                </td>
            </tr>
        </table>
    </div>
    <div class="noe6" id="nub2">

        <table class="noe12">
            <tr>
                <td colspan="4" class="noe7">
                    <asp:Label ID="Label1" CssClass="noe10" runat="server" Text=""></asp:Label><label>（伦家是No.2啦）</label>
                </td>
            </tr>
            <%=HTMLGridView3()%>
        </table>
    </div>
    <div class="noe666" id="nub3">
        <table id="tb1" class="noe12">
            <tr>
                <td colspan="4" class="noe7">
                    <asp:Label ID="Label3" CssClass="noe10" runat="server" Text=""></asp:Label><label>（二哥，我是老几）</label>
                </td>
            </tr>
            <%=HTMLGridView4()%>
        </table>
    </div>
    <div class="noe21">
    </div>
    <div class="noe22">
        <asp:Image ID="Image5" ImageUrl="img/6.jpg" runat="server" /></div>
    </div>
    
    </form>
</body>
<script>

    function aa() {
        scrollTo(0, 100);
    }
    function bb() {
        scrollTo(0, 450);
    }
    function cc() {
        scrollTo(0, 1000);
    }
</script>


 <script>


     //获取整个表格数据，存入数据库
     function GetData() {
         var str = "";
         $("#table1").find("tr").each(function () {
             if ($(this).index() != 0) {
                 str += $(this).find("td").eq(0).text() + "^" + $(this).find("td").eq(1).text() + "^" + $(this).find("td").eq(2).text() + "±";
             }
         });

         window.location.href = "Addup.aspx?backurl=" + str;
     }




     var man = "570";

     function Info(obj) {
         var sub = "";
         var data = "";
         var str = $(obj).parent().parent().find("td").eq(1).text().split('￥')[1].split('/')[0];
         data += "<tr><td>" + $(obj).parent().parent().find("td").eq(0).text() + "</td><td>1</td><td>" + str + "</td></tr>";
         var t = $(obj).parent().parent().find("td").eq(0).text();
         var num = 0;

         for (var i = 0; i < ($("#table1 tr").length * 1); i++) {
             if (document.getElementById("table1").rows[i].cells[0].innerHTML == t) {
                 sub = "ok";
                 num = i;
             }
         }

         if (sub == "ok") {
             var d = document.getElementById("table1").rows[num].cells[1].innerHTML * 1 + 1;
             document.getElementById("table1").rows[num].cells[1].innerHTML = d;
         } else {
             $(data).insertBefore($("#table1").find("tr").last());
             zongji();
             document.getElementById("divID").style.position = "fixed";
             document.getElementById("divID").style.marginLeft = "66%";
             document.getElementById("divID").style.marginTop = "" + man - 22 + "px";
             man = man - 22;
         }

     }


     function zongji() {
         var num = 0;
         var data = 0
         for (var i = 1; i < document.getElementById("table1").rows.length - 1; i++) {
             if (i == document.getElementById("table1").rows.length - 1) {
                 num = 0;
             }
             num += document.getElementById("table1").rows[i].cells[1].innerHTML * 1;
             data += document.getElementById("table1").rows[i].cells[2].innerHTML * 1 * document.getElementById("table1").rows[i].cells[1].innerHTML * 1;
         }

         document.getElementById("Label4").innerHTML = num;
         document.getElementById("Label5").innerHTML = data;
     }

    </script>
</html>
