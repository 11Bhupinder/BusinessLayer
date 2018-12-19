<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BusinessLayer.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 223px;
            height: 21px;
            margin-left: 2px;
            margin-top: 13px;
        }
        #dEmail {
            width: 223px;
            margin-left: 29px;
        }
        #Name0 {
            width: 186px;
            margin-left: 11px;
        }
        #Age0 {
            width: 175px;
            margin-left: 15px;
        }
        #Mobile0 {
            width: 148px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Get Room Book Data" />
            <br />
            <asp:GridView ID="GridView1" runat="server" style="margin-left: 47px"></asp:GridView>

        </div>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 25px" Text="Insert" Width="85px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 56px" Text="Delete" Width="89px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 56px" Text="Update" Width="89px" />
        <asp:Panel ID="insPanel" runat="server" Height="523px" Width="302px">
            <br /><br />
            <div>  Email: <input id="Email" runat="server" type="text" /></div> <br />
        <br />
           <div> Name: <input id="Name" runat="server" type="text" /> </div> <br />
        <br />
             <div>  Age: <input id="Age" runat="server" type="text" /></div> <br />
        <br />
           <div> Mobile: <input id="Mobile" runat="server" type="text" /> </div> <br />
        <br />
             <div>  Room Type: <input id="rType" runat="server" type="text" /></div> <br />
        <br />
           <div> Check In: <input id="cIn" runat="server" type="text" /> </div> <br />
        <br />
             <div> Check Out: <input id="cOut" runat="server" type="text" /> </div> <br />
        <br />
            <asp:Button ID="Insertbtn" runat="server" Text="Insert" OnClick="InsertBtn_Click" style="margin-left: 25px"  Width="85px" />
        </asp:Panel>
        <asp:Panel ID="delPannel" runat="server" Height="115px" style="margin-left: 0px" Width="302px"><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <input id="dEmail" runat="server" type="text" />
            <asp:Button ID="delBtn" runat="server" Height="31px" style="margin-left: 78px; margin-top: 12px" Text="Delete" Width="87px" OnClick="delBtn_Click" />
        </asp:Panel>
        <asp:Panel ID="updPanel" runat="server" Height="142px" Width="302px">
            <br />
            <br />
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="upEmail" runat="server"  type="text" />
            <asp:Button ID="getBtn" runat="server" Height="33px" OnClick="getBtn_Click" style="margin-left: 73px; margin-top: 10px" Text="Get Details" Width="157px" />
        </asp:Panel>
        <asp:Panel ID="getPanel" runat="server" Height="608px" Width="280px">
            <br />
            <br />
            <br />
            <div>
                Name:
                <input id="uName" runat="server" type="text" />
            </div>
            <br />
            <br />
            <div>
                Age:
                <input id="uAge" runat="server" type="text" />
            </div>
            <br />
            <br />
            <div>
                Mobile:
                <input id="uMobile" runat="server" type="text" />
            </div>
            <br />
            <br />
            <div>
                Room Type:
                <input id="urType" runat="server" type="text" />
            </div>
            <br />
            <br />
            <div>
                Check In:
                <input id="ucIn" runat="server" type="text" />
            </div>
            <br />
            <br />
            <div>
                Check Out:
                <input id="ucOut" runat="server" type="text" />
            </div>
            <br />
            <br />
            <asp:Button ID="updBtn" runat="server" Height="28px" OnClick="updBtn_Click" style="margin-left: 63px" Text="Update" Width="152px" />
        </asp:Panel>
    </form>

    
</body>
</html>
