<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeManagement.aspx.cs" Inherits="SampleWebApplication.EmployeeManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>

                    <td>
                        <asp:Label ID="lblID" runat="server" Text="Employee ID"></asp:Label>
                         <asp:TextBox ID="txtId" runat="server" ></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                     <td>
                         <asp:Label ID="lblName" runat="server" Text="Employee Name"></asp:Label>
                         <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                     <td>
                         <asp:Label ID="lblAge" runat="server" Text="Employee Age"></asp:Label>
                         <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                         
                    </td>
                </tr>
                <tr>  
                    <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update"  OnClick ="btnUpdate_Click"/>
                       
                   
                         <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                   
                    <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" />
                         </td>
                    </tr>
                        
                   
                <tr>
                    <asp:GridView ID="grd_EmployeeManagement" runat="server"></asp:GridView>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    </td>                    
                  
                </tr>
                <tr>                   
                 <td>
                     <asp:RadioButtonList ID="rdblistGener" runat="server"  DataTextField="Gender" DataValueField="Gender">
                         <asp:ListItem>F</asp:ListItem>
                         <asp:ListItem>M</asp:ListItem>
                     </asp:RadioButtonList>
                 </td>                    
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Asp.Net" />
                          <asp:CheckBox ID="CheckBox2" runat="server" Text="C#" />
                    </td>
                </tr>
            </table>           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:EmployeeDatabase1ConnectionString %>' ProviderName="<%$ ConnectionStrings:EmployeeDatabase1ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Employee1]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
