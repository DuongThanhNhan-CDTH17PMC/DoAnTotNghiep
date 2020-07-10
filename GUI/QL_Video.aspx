<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" EnableEventValidation="true" ValidateRequest="true" CodeBehind="QL_Video.aspx.cs" Inherits="GUI.Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form3" runat="server">

        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">Danh sách video 
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Home_Admin.aspx">Quản lí</a></li>
                    <li class="active">Quản lí video</li>
                </ol>
            </div>

            <div id="page-inner">
                <fieldset>
                    <legend>Thêm Video</legend>
                    <table>
                        <tr>
                            <td>Mã Video:</td>
                            <td>
                                <asp:textbox id="txtMaVideo" class="form-control" placeholder=" Mã Video" runat="server"></asp:textbox>
                            </td>
                        </tr>
                        <tr>
                            <td>Tên Video: </td>
                            <td>
                                <asp:textbox id="txtTenVideo" class="form-control" placeholder=" Tên Video" runat="server"></asp:textbox>
                            </td>
                        </tr>
                        <tr>
                            <td>Thông tin: </td>
                            <td>
                                <asp:textbox id="txtThongTin" class="form-control" placeholder=" Thông Tin" runat="server"></asp:textbox>
                            </td>
                        </tr>
                        <tr>
                            <td>Mã Loại Video:</td>
                            <td>

                                <asp:dropdownlist id="dropMaLoaiVideo" runat="server">
                                    <asp:ListItem Value="Loai1">Âm Nhạc</asp:ListItem>
                                    <asp:ListItem Value="Loai2">Trò Chơi</asp:ListItem>
                                    <asp:ListItem Value="Loai3">Giải Trí</asp:ListItem>
                                    <asp:ListItem Value="Loai4">Thể Thao</asp:ListItem>
                                    <asp:ListItem Value="Loai5">Trẻ Em</asp:ListItem>
                                    <asp:ListItem Value="Loai6">Phim</asp:ListItem>
                                    <asp:ListItem Value="Loai7">Tin Tức</asp:ListItem>
                                </asp:dropdownlist>
                                <%--<asp:TextBox ID="txtMaLoai" class="form-control" placeholder=" Mã Loại Video" runat="server"></asp:TextBox>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>Ngày Đăng:</td>
                            <td>
                                <asp:textbox id="txtNgayDang" class="form-control" placeholder=" Ngày Đăng" runat="server"></asp:textbox>


                                <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>


                            </td>

                        </tr>
                        <tr>
                            <td>Tên Tài Khoản Đăng:</td>
                            <td>



                                <asp:textbox id="txtTaiKhoanDang" class="form-control" placeholder=" Tài Khoản Đăng" runat="server"></asp:textbox>
                            </td>
                        </tr>
                        <tr>
                            <td>Đường Dẫn Video: </td>
                            <td>
                                <asp:textbox id="txtDuongDan" class="form-control" placeholder=" Link Video" runat="server"></asp:textbox>
                            </td>
                        </tr>
                        <%--<tr>
                            <td>Ảnh Đại Diện:</td>
                            <td>
                                <asp:TextBox ID="txtAnhDaiDien" class="form-control" placeholder=" Ảnh Đại Diện" runat="server"></asp:TextBox></td>
                        </tr>--%>
                        <tr>
                            <td>Trạng Thái:</td>
                            <td>
                                <asp:checkbox id="chkTrangThai" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:button class="btn btn-success" id="btnThem" runat="server" text="Thêm" onclick="btnThem_Click" />
                                <asp:button class=" btn btn-warning" id="btnSua" runat="server" text="Sửa" enabled="false" onclick="btnSua_Click" />
                                <asp:button class="btn btn-danger" id="btnHuy" runat="server" text="Hủy bỏ" onclick="btnHuy_Click" />
                            </td>
                        </tr>
                    </table>
                </fieldset>


                <fieldset>
                    <legend>Danh Sách Video</legend>
                    <asp:gridview class=" table-striped" id="grvDSVideo" runat="server" autogeneratecolumns="False" datakeynames="MaVideo" allowsorting="True" onpageindexchanging="grvDSVideo_PageIndexChanging" allowcustompaging="True" onrowcommand="grvDSVideo_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="STT">
                                <ItemTemplate>
                                    <%#get_stt() %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            <asp:BoundField DataField="MaVideo" HeaderText="Mã Video" ReadOnly="True" SortExpression="MaVideo" />
                            <asp:BoundField DataField="TenVideo" HeaderText="Tên Video" SortExpression="TenVideo" />
                            <asp:BoundField DataField="ThongTin" HeaderText="Thông Tin" SortExpression="ThongTin" />
                            <asp:BoundField DataField="NgayDang" HeaderText="Ngày Đăng" SortExpression="NgayDang" />
                            <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tài Khoản Đăng" SortExpression="TenTaiKhoan" />
                            <asp:BoundField DataField="DuongDanVideo" HeaderText="Đường Dẫn" SortExpression="DuongDanVideo" />
                            <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button class=" btn btn-info" ID="btnChon" runat="server" CausesValidation="False" CommandName="ChonVd" CommandArgument='<%# Eval("MaVideo") %>' Text="Chọn" />
                                    <asp:Button class=" btn btn-danger" ID="btnXoa" runat="server" CausesValidation="False" CommandName="XoaVd" CommandArgument='<%# Eval("MaVideo") %>' Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:gridview>


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
