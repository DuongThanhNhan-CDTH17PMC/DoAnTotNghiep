<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="GUI.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <link rel="icon" href="favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <title>Đăng Ký Mới</title>

    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <link href="css/main2.css" rel="stylesheet" media="all">
</head>

<body>
    <form id="form1" runat="server">
        <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
            <div class="wrapper wrapper--w680">
                <div class="card card-4">
                    <div class="card-body">
                        <h2 class="title">Đăng Ký Tài Khoản Mới</h2>
                        <form method="POST">
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Tên Tài Khoản</label>
                                        <asp:TextBox class="input--style-4" ID="TextBox1" runat="server"></asp:TextBox>

                                    </div>
                                </div>

                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Mật Khẩu</label>
                                        <asp:TextBox ID="TextBox2" class="input--style-4" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Nhập Lại Mật Khẩu</label>
                                        <asp:TextBox class="input--style-4" ID="TextBox3" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Họ Tên</label>
                                        <input class="input--style-4" type="email" name="email">
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Số Điện Thoại</label>
                                        <asp:TextBox ID="TextBox4" class="input--style-4" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="input-group">
                                <label class="label">Ảnh Đại Diện</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <asp:Button class="btn btn--radius-2 btn--green" ID="Button2" runat="server" Text="Đăng Ký" />
                                </div>
                                <div class="col-2">
                                    <asp:Button class="btn btn--radius-2 btn--blue" ID="Button1" runat="server" Text="Đăng Nhập" />
                                </div>
                            </div>
                            <div class="flex-col-c p-t-155">
                                <span class="txt1 p-b-17"></span>

                                <a href="Home.aspx" class="txt2">Về Trang Chủ
                                </a>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <script src="js/global.js"></script>
    </form>
</body>
</html>
