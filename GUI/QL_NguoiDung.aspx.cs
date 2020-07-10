using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
using System.IO;

namespace GUI
{
    public partial class QL_NguoiDung : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSTaiKhoan();
            }

        }

        protected void LoadDSTaiKhoan()
        {
            grvDSTaiKhoan.DataSource = TaiKhoanBUS.LayDSTaiKhoan();
            grvDSTaiKhoan.DataBind();
        }
        protected void XoaForm()
        {
            foreach (Control c in form1.Controls)
            {
                if (c is TextBox)
                {
                    (c as TextBox).Text = string.Empty;
                }
            }
            chkAdmin.Checked = false;
            chkTrangThai.Checked = false;
        }



        protected void btnThem_Click(object sender, EventArgs e)
        {
            TaiKhoanDTO tk = new TaiKhoanDTO();
            tk.TenTaiKhoan = txtTTK.Text;
            tk.MatKhau = txtMK.Text;
            tk.Sdt = txtSDT.Text;
            tk.HoTen = txtHoTen.Text;
            tk.LaAdmin = chkAdmin.Checked;
            tk.AnhDaiDien = fileAnhDaiDien.FileName;
            tk.TrangThai = chkTrangThai.Checked;

            if (TaiKhoanBUS.ThemTK(tk))
            {
                XoaForm();
                LoadDSTaiKhoan();
                GiaoDienThem(true);
                Response.Write("<script>alert('Thêm tài khoản thành công!');</script>");
            }
            else
            {
                Response.Write("<script>alert('Thêm tài khoản thất bại');</script>");
            }
        }

        protected void GiaoDienThem(bool gd)
        {
            txtTTK.Enabled = gd;
            btnThem.Enabled = gd;
            btnSua.Enabled = !gd;
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(txtTTK.Text);
            tk.TenTaiKhoan = txtTTK.Text;
            if (txtMK.Text != "")
            {
                tk.MatKhau = txtMK.Text;
            }
           
            tk.Sdt = txtSDT.Text;
            tk.HoTen = txtHoTen.Text;
            tk.LaAdmin = chkAdmin.Checked;
            tk.AnhDaiDien = fileAnhDaiDien.FileName;
            tk.TrangThai = chkTrangThai.Checked;

            if (TaiKhoanBUS.SuaTK(tk))
            {
                XoaForm();
                LoadDSTaiKhoan();
                GiaoDienThem(true);
                Response.Write("<script>alert('Sửa tài khoản thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Sửa tài khoản thất bại');</script>");
            }
        }
        protected void btnHuy_Click(object sender, EventArgs e)
        {
            XoaForm();
            GiaoDienThem(true);
        }

        protected void grvDSTaiKhoan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChonTK")
            {
                string tenTK = e.CommandArgument.ToString();

                TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tenTK);
                if (tk != null)
                {
                    txtTTK.Text = tk.TenTaiKhoan;
                    txtMK.Text = tk.MatKhau;
                    txtSDT.Text = tk.Sdt;
                    txtHoTen.Text = tk.HoTen;
                    chkAdmin.Checked = tk.LaAdmin;
                    //txtAnhDaiDien.Text = tk.AnhDaiDien;
                    imagAnhDaiDien.ImageUrl = tk.AnhDaiDien.ToString();
                    chkTrangThai.Checked = tk.TrangThai;
                    GiaoDienThem(false);
                }
            }

            if (e.CommandName == "XoaTK")
            {
                string tenTK = e.CommandArgument.ToString();

                if (TaiKhoanBUS.XoaTK(tenTK))
                {
                    XoaForm();
                    LoadDSTaiKhoan();

                }
                else
                {
                    Response.Write("<script>alert('Xóa tài khoản thất bại');</script>");
                }
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string sTenfile;
            //Tách lấy tên tập tin
            sTenfile = fileAnhDaiDien.FileName;
            //Thực hiện chép tập tin lên thư mục Upload
            fileAnhDaiDien.SaveAs(MapPath("~/images/" + sTenfile));
          
        }

    }
}