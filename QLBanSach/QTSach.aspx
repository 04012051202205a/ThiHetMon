<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLSach.aspx.cs" Inherits="QLBanSach.QLSach" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản Lý Sách</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2 class="text-center">Quản Lý Sách</h2>

            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Nhập tên sách..."></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                </div>
            </div>

            <asp:GridView ID="gvBooks" runat="server" CssClass="table table-bordered mt-3"
                AutoGenerateColumns="False" DataKeyNames="MaSach"
                AllowPaging="True" PageSize="5"
                OnPageIndexChanging="gvBooks_PageIndexChanging">

                <Columns>
                    <asp:BoundField DataField="TenSach" HeaderText="Tên sách" />
                     <asp:TemplateField HeaderText="Ảnh bìa">
    <ItemTemplate>
        <img src='<%# ResolveUrl("~/Bia_sach/" + Eval("Hinh")) %>' width="50" />
    </ItemTemplate>
</asp:TemplateField>
                    <asp:BoundField DataField="Dongia" HeaderText="Giá (VNĐ)" DataFormatString="{0:N0}" />
                    
                    <asp:TemplateField HeaderText="Khuyến mãi">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkKhuyenMai" runat="server" Enabled="true" Checked='<%# Eval("KhuyenMai") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>




                        
                </Columns>
            </asp:GridView>

            <asp:HyperLink ID="lnkAddBook" runat="server" NavigateUrl="ThemSach.aspx" CssClass="btn btn-success mt-3">Thêm sách mới</asp:HyperLink>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="text-danger"></asp:Label>
        </div>
    </form>
</body>
</html>
