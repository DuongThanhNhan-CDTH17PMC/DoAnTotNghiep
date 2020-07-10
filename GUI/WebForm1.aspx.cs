using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;

namespace GUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void btn_login_Click(object sender, EventArgs e)
        //{

        //    {
        //        string tentk = txt_tentaikhoan.Text;
        //        string mk = txt_matkhau.Text;
        //        if (TaiKhoanBUS.KTDangNhap(tentk, mk))
        //        {
        //            HttpCookie cookie = new HttpCookie("tentk");
        //            cookie.Value = tentk;
        //            cookie.Expires = DateTime.Now.AddDays(7);
        //            Response.Cookies.Add(cookie);
        //            if (TaiKhoanBUS.KiemtraLaADMIN(tentk))
        //            {
        //                Response.Redirect("Home_Admin.aspx");
        //            }
        //            else
        //            {
        //                Response.Redirect("Home.aspx");
        //            }

        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('Đăng nhập thất bại')</script>");
        //        }


        //    }
        //}
    }
}