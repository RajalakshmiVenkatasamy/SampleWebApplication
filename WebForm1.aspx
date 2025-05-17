<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SampleWebApplication.WebForm1" Trace="true" %>
 <%@ Register Src="~/WebUserControl1.ascx" TagName="footer" TagPrefix="Tfooter" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml" >
 
   <head runat="server">
<title>

         Untitled Page
</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<h2>MultiView and View Controls</h2>
<asp:DropDownList ID="DropDownList1" runat="server" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<hr />
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="2"  onactiveviewchanged="MultiView1_ActiveViewChanged" >
<asp:View ID="View1" runat="server">
<h3>This is view 1</h3>
<br />
<asp:Button CommandName="NextView" ID="btnnext1" runat="server" Text = "Go To Next" />
<asp:Button CommandArgument="View3" CommandName="SwitchViewByID" ID="btnlast" runat="server" Text  ="Go To Last" />
</asp:View> 
<asp:View ID="View2" runat="server">
<h3>This is view 2</h3>
<asp:Button CommandName="NextView" ID="btnnext2" runat="server" Text = "Go To Next" />
<asp:Button CommandName="PrevView" ID="btnprevious2" runat="server" Text = "Go To Previous View" />
</asp:View>
 
               <asp:View ID="View3" runat="server">
<h3> This is view 3</h3>
<br />
<asp:Calendar ID="Calender1" runat="server"></asp:Calendar>
<br />
<asp:Button  CommandArgument="0" CommandName="SwitchViewByIndex" ID="btnfirst"   runat="server" Text = "Go To Next" />
<asp:Button CommandName="PrevView" ID="btnprevious" runat="server" Text = "Go To Previous View" />
</asp:View> 
</asp:MultiView>
<asp:Panel ID="Panel1" runat="server" BorderColor="#990000" BorderStyle="Solid"  BorderWidth="2px" Height="116px" ScrollBars="Both" style="width:278px"> 
    This is a scrollable panel.<br /><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
     <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="btnpanel" runat="server" Text="Button" style="width:82px" />
    </asp:Panel>
     
    
<asp:ScriptManager ID="ScriptManager1" runat="server" />

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<asp:Button ID="btnpartial" runat="server" onclick="btnpartial_Click" Text="Partial PostBack"/>
<br />
<br />
<asp:Label ID="lblpartial" runat="server"></asp:Label>
</ContentTemplate>
</asp:UpdatePanel>
<p> </p>
<p>Outside the Update Panel</p>
<p>
<asp:Button ID="btntotal" runat="server" onclick="btntotal_Click" Text="Total PostBack" />
</p>
<asp:Label ID="lbltotal" runat="server"></asp:Label>

    <Tfooter:footer id="footer1" runat="server"></Tfooter:footer>
             <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate"></asp:Login>
             <asp:LoginName ID="LoginName1" runat="server" />
             <asp:LoginStatus ID="LoginStatus1" runat="server" />

</div>
</form>
</body>
</html>
 