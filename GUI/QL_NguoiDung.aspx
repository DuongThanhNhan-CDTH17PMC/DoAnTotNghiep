<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="QL_NguoiDung.aspx.cs" Inherits="GUI.QL_NguoiDung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div id="page-wrapper">

            <div class="header">
                <h1 class="page-header">Quản Lí Người Dùng
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Home_Admin.aspx">Quản lí</a></li>
                    <li class="active">Quản lí người dùng</li>
                </ol>
            </div>

            <div id="page-inner">
                <fieldset>
                    <legend>Thêm Tài Khoản</legend>

                    <table>
                        <tr>
                            <td>Tên Tài Khoản: </td>
                            <td>
                                <asp:TextBox class=" form-control" placeholder=" Tên Tài Khoản" ID="txtTTK" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Mật Khẩu: </td>
                            <td>
                                <asp:TextBox class="form-control" placeholder="Mật Khẩu" ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>SĐT: </td>
                            <td>
                                <asp:TextBox class="form-control" placeholder=" Số Điện Thoại" ID="txtSDT" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Họ Tên: </td>
                            <td>
                                <asp:TextBox class="form-control" placeholder="Họ Tên" ID="txtHoTen" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Là Admin:</td>
                            <td>
                                <asp:CheckBox ID="chkAdmin" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>Ảnh Đại Diện: </td>
                            <td>
                                <asp:Image ID="imagAnhDaiDien" class="card-img-top " Width="150" Height="150" runat="server" ImageUrl='<%# "images/avt/" + Eval("AnhDaiDien") %>' />

                                <asp:FileUpload class="form-control" ToolTip="Chon fifle" ID="fileAnhDaiDien" OnClick=" btnUpload_Click" runat="server" />
                            </td>
                        </tr>

                        <tr>
                            <td>Trạng Thái: </td>
                            <td>
                                <asp:CheckBox class="custom-control custom-checkbox" ID="chkTrangThai" runat="server" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button class=" btn btn-success" ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                                <asp:Button class="btn btn-warning" ID="btnSua" runat="server" Text="Sửa" Enabled="false" OnClick="btnSua_Click" />
                                <asp:Button class=" btn btn-danger" ID="btnHuy" runat="server" Text="Hủy bỏ" OnClick="btnHuy_Click" />
                            </td>
                        </tr>

                    </table>

                </fieldset>


                <fieldset>
                    <legend>Danh Sách tài Khoản</legend>
                    <asp:GridView class="table table-striped" ID="grvDSTaiKhoan" runat="server" AutoGenerateColumns="False" DataKeyNames="TenTaiKhoan" OnRowCommand="grvDSTaiKhoan_RowCommand" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên Tài Khoản" ReadOnly="True" SortExpression="TenTaiKhoan" />
                            <asp:BoundField DataField="SDT" HeaderText="Số ĐT" SortExpression="SDT" />
                            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
                            <asp:CheckBoxField DataField="LaAdmin" HeaderText="Admin" SortExpression="LaAdmin" />
                            <asp:BoundField DataField="AnhDaiDien" HeaderText="Ảnh Đại Diện" SortExpression="AnhDaiDien" />
                            <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button class="btn btn-info" ID="btnChon" runat="server" CausesValidation="False" CommandName="ChonTK" CommandArgument='<%# Eval("TenTaiKhoan") %>' Text="Chọn" />
                                    <asp:Button class="btn btn-danger" ID="btnXoa" runat="server" CausesValidation="False" CommandName="XoaTK" CommandArgument='<%# Eval("TenTaiKhoan") %>' Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </fieldset>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebVideoConnectionString %>" ProviderName="<%$ ConnectionStrings:WebVideoConnectionString.ProviderName %>" SelectCommand="SELECT TenTaiKhoan, SDT, HoTen, LaAdmin, AnhDaiDien, TrangThai FROM [TaiKhoan]"></asp:SqlDataSource>

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

