<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="SampleWebApplication.EmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GV_EmployeeData" runat="server" AutoGenerateColumns="False" DataKeyNames="id,name" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="departmentID" HeaderText="departmentID" SortExpression="departmentID" />
                    <asp:BoundField DataField="Manager" HeaderText="Manager" SortExpression="Manager" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeDatabase1ConnectionString %>" SelectCommand="SELECT * FROM [Employee1]" ProviderName="<%$ ConnectionStrings:EmployeeDatabase1ConnectionString.ProviderName %>"></asp:SqlDataSource>

            <asp:GridView ID="grdStudentData" runat="server"></asp:GridView>
              <asp:GridView ID="GrdData" runat="server"></asp:GridView>
            <asp:Button ID="btnClick" runat="server" Text="Click" OnClick="btnClick_Click" />
            <asp:CheckBox ID="CheckBox1" runat="server" />
        </div>
    </form>
</body>
</html>
