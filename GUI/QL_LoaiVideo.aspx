<%@ Page Title="" Language="C#" EnableEventValidation="false" ValidateRequest="true" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="QL_LoaiVideo.aspx.cs" Inherits="GUI.QL_LoaiVideospx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
        <div id="page-wrapper">

            <div class="header">
                <h1 class="page-header">Quản Lí Loại Video
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Home_Admin.aspx">Quản lí</a></li>
                    <li class="active">Quản lí Loại Video</li>
                </ol>
            </div>

            <div id="page-inner">
                <fieldset>
                    <legend>Thêm Loại Video</legend>

                    <table>
                        <tr>
                            <td>Mã Loại: </td>
                            <td>
                                <asp:TextBox ID="txtMaLoai" class="form-control" placeholder=" Mã Loại" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Tên Loại Video:</td>
                            <td>
                                <asp:TextBox ID="txtTenLoai" class="form-control" placeholder="Tên Loại" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Trạng Thái: </td>
                            <td>
                                <asp:CheckBox ID="chkTrangThai" runat="server" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button class="btn btn-success" ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                                <asp:Button class="btn btn-warning" ID="btnSua" runat="server" Text="Sửa" Enabled="false" OnClick="btnSua_Click" />
                                <asp:Button class="btn btn-danger" ID="btnHuy" runat="server" Text="Hủy bỏ" OnClick="btnHuy_Click" />
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>Danh Sách Loại Video</legend>
                    <asp:GridView  class=" table table-striped" ID="grvDSLoaiVideo" runat="server" AutoGenerateColumns="False" DataKeyNames="MaLoaiVideo" OnRowCommand="grvDSLoaiVideo_RowCommand" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="MaLoaiVideo" HeaderText="Mã Loại Video" ReadOnly="True" SortExpression="MaLoaiVideo" />
                            <asp:BoundField DataField="TenLoaiVideo" HeaderText="Tên Loại Video" SortExpression="TenLoaiVideo" />
                            <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button class="btn btn-info" ID="btnChon" runat="server" CausesValidation="False" CommandName="ChonLVD" CommandArgument='<%# Eval("MaLoaiVideo") %>' Text="Chọn" />
                                    <asp:Button class="btn btn-danger" ID="btnXoa" runat="server" CausesValidation="False" CommandName="XoaLVD" CommandArgument='<%# Eval("MaLoaiVideo") %>' Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    

                </fieldset>
            </div>
        </div>





        <script src="assets/js/jquery-1.10.2.js"></script>

        <script src="assets/js/bootstrap.min.js"></script>

        <script src="assets/js/jquery.metisMenu.js"></script>

        <script src="assets/js/dataTables/jquery.dataTables.js"></script>
        <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
        </script>

        <script src="assets/js/custom-scripts.js"></script>
    </form>
</asp:Content>
