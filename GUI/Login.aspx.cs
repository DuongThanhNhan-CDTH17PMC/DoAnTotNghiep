using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

            }
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {

            {
                string tenTK = txtTTK.Text;
                string mk = txtMK.Text;
                if (TaiKhoanBUS.KTDangNhap(tenTK, mk))
                {
                    HttpCookie cookie = new HttpCookie("tenTK");
                    cookie.Value = tenTK;
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                    if (TaiKhoanBUS.KiemtraLaADMIN(tenTK))
                    {
                        Response.Redirect("Home_Admin.aspx");
                    }
                    else
                    {
                        Response.Redirect("Home_NguoiDung.aspx");
                    }

                }
                else
                {
                    Response.Write("<script>alert('Đăng nhập thất bại')</script>");
                }


            }
        }
    }
}