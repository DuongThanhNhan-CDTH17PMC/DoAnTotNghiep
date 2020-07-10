<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="Home_Admin.aspx.cs" Inherits="GUI.Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">Tổng quan
                <label><small>Welcome</small> </label>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Home_Admin.aspx">Trang chủ</a></li>
                    <li><a href="Home_Admin.aspx">Tổng quan</a></li>
                </ol>
            </div>
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="board">
                            <div class="panel panel-primary">
                                <div class="number">
                                    <h3>
                                        <h3>44,023</h3>
                                        <small>Lượt xem cập hàng ngày</small>
                                    </h3>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-eye fa-5x red"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="board">
                            <div class="panel panel-primary">
                                <div class="number">
                                    <h3>
                                        <h3>56,150</h3>
                                        <small>Bình luận</small>
                                    </h3>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-comments fa-5x green"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="board">
                            <div class="panel panel-primary">
                                <div class="number">
                                    <h3>
                                        <h3>9</h3>
                                        <small>Video tải lên</small>
                                    </h3>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-user fa-5x yellow"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-xs-12">
                        <div class="panel panel-default chartJs">
                            <div class="panel-heading">
                                <div class="card-title">
                                    <div class="title">Biểu đồ đường</div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <canvas id="line-chart" class="chart"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <div class="panel panel-default chartJs">
                            <div class="panel-heading">
                                <div class="card-title">
                                    <div class="title">Biểu đồ cột</div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <canvas id="bar-chart" class="chart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Biểu đồ đường
                            </div>
                            <div class="panel-body">
                                <div id="morris-line-chart"></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-7">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Biểu đồ cột
                            </div>
                            <div class="panel-body">
                                <div id="morris-bar-chart"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Biểu đồ khu vực
                            </div>
                            <div class="panel-body">
                                <div id="morris-area-chart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Biểu đồ tròn
                            </div>
                            <div class="panel-body">
                                <div id="morris-donut-chart"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Bảng Thống Kê
                            </div>
                            <div class="panel-body">
                                <div class="list-group">

                                    <a href="#" class="list-group-item">
                                        <span class="badge">7 minutes ago</span>
                                        <i class="fa fa-fw fa-comment"></i>Nhận xét về một video
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">16 minutes ago</span>
                                        <i class="fa fa-fw fa-film"></i>Một video đã được tải lên
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">36 minutes ago</span>
                                        <i class="fa fa-fw fa-globe"></i>Một tài khoản đã đăng kí thành công
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12 col-xs-12">

                        <div class="panel panel-default">
                            <fieldset>
                                <legend>Danh sách người dùng</legend>
                                <asp:GridView  class="table table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TenTaiKhoan" DataSourceID="SqlDataSource_HomeDanhSach" AllowSorting="True">
                                    <Columns>
                                        <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên Tài Khoản" ReadOnly="True" SortExpression="TenTaiKhoan" />
                                        <asp:BoundField DataField="SDT" HeaderText="SĐT" SortExpression="SDT" />
                                        <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
                                        <asp:CheckBoxField DataField="LaAdmin" HeaderText="Là Admin" SortExpression="LaAdmin" />
                                        <asp:BoundField DataField="AnhDaiDien" HeaderText="Ảnh Đại Diện" SortExpression="AnhDaiDien" />
                                        <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource_HomeDanhSach" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>" ProviderName="<%$ ConnectionStrings:HomeConnectionString.ProviderName %>" SelectCommand="SELECT [TenTaiKhoan], [SDT], [HoTen], [LaAdmin], [AnhDaiDien], [TrangThai] FROM [TaiKhoan]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
                            </fieldset>
                        </div>
                    </div>
                </div>
                <footer>
                    <p>All right reserved.</p>

                    <script src="assets/js/jquery-1.10.2.js"></script>
                    <!-- Bootstrap Js -->
                    <script src="assets/js/bootstrap.min.js"></script>

                    <!-- Metis Menu Js -->
                    <script src="assets/js/jquery.metisMenu.js"></script>
                    <!-- Morris Chart Js -->
                    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
                    <script src="assets/js/morris/morris.js"></script>


                    <script src="assets/js/easypiechart.js"></script>
                    <script src="assets/js/easypiechart-data.js"></script>

                    <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

                    <!-- Custom Js -->
                    <script src="assets/js/custom-scripts.js"></script>

                    <!-- Chart Js -->
                    <script type="text/javascript" src="assets/js/Chart.min.js"></script>
                    <script type="text/javascript" src="assets/js/chartjs.js"></script>
                </footer>
            </div>
          
        </div>
    </form>
</asp:Content>
