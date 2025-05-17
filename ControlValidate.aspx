<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlValidate.aspx.cs" Inherits="SampleWebApplication.ControlValidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
               
                <asp:View ID="View1" runat="server">
                    <asp:Button ID="Button2" runat="server" Text="Button_1" />
                    <asp:Button ID="Button3" runat="server" Text="Button_1" />
                </asp:View>
                <asp:View ID="View2" runat="server" >

                    <asp:Button ID="Button4" runat="server" Text="Button" />
                    <asp:Button ID="Button5" runat="server" Text="Button" />
                </asp:View>

            </asp:MultiView>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
    </form>
</body>
</html>
