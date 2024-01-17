<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebAppProducts.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class ="text-center"> Products</h2>
    <p> 
       
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="PId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                <asp:BoundField DataField="Pcategory" HeaderText="Pcategory" SortExpression="Pcategory" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Sahithi2001ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [PId] = @original_PId AND [Pname] = @original_Pname AND [Pprice] = @original_Pprice AND [Pcategory] = @original_Pcategory" InsertCommand="INSERT INTO [Product] ([PId], [Pname], [Pprice], [Pcategory]) VALUES (@PId, @Pname, @Pprice, @Pcategory)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:Sahithi2001ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Pname] = @Pname, [Pprice] = @Pprice, [Pcategory] = @Pcategory WHERE [PId] = @original_PId AND [Pname] = @original_Pname AND [Pprice] = @original_Pprice AND [Pcategory] = @original_Pcategory">
            <DeleteParameters>
                <asp:Parameter Name="original_PId" Type="Int32" />
                <asp:Parameter Name="original_Pname" Type="String" />
                <asp:Parameter Name="original_Pprice" Type="Double" />
                <asp:Parameter Name="original_Pcategory" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PId" Type="Int32" />
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Pprice" Type="Double" />
                <asp:Parameter Name="Pcategory" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Pprice" Type="Double" />
                <asp:Parameter Name="Pcategory" Type="String" />
                <asp:Parameter Name="original_PId" Type="Int32" />
                <asp:Parameter Name="original_Pname" Type="String" />
                <asp:Parameter Name="original_Pprice" Type="Double" />
                <asp:Parameter Name="original_Pcategory" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
    <p> &nbsp;</p>
</asp:Content>
