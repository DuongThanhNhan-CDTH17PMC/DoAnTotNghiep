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
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSVideo();
            }
           
        }

        protected void LoadDSVideo()
        {
            grvDSVideo.DataSource = VideoBUS.LayDSVideo();
            grvDSVideo.DataBind();
        }

        protected void XoaForm()
        {
            foreach (Control c in form3.Controls)
            {
                if (c is TextBox)
                {
                    (c as TextBox).Text = string.Empty;
                }
            }
            chkTrangThai.Checked = false;
        }
    
        protected void btnThem_Click(object sender, EventArgs e)
        {
            VideoDTO vd = new VideoDTO();

            vd.MaVideo = txtMaVideo.Text;
            vd.TenVideo = txtTenVideo.Text;
            vd.ThongTin = txtThongTin.Text;
            vd.MaLoaiVideo = dropMaLoaiVideo.Text;
            vd.NgayDang = DateTime.Parse(txtNgayDang.Text);
            vd.TenTaiKhoan = txtTaiKhoanDang.Text;
            vd.DuongDanVideo = txtDuongDan.Text;
            vd.TrangThai = chkTrangThai.Checked;




            if (VideoBUS.ThemVideo(vd))
            {
                XoaForm();
                LoadDSVideo();
                GiaoDienThem(true);
                Response.Write("<script>alert('Thêm thành công!');</script>");
            }
            else
            {
                Response.Write("<script>alert('Thêm thất bại');</script>");
            }
        }

        protected void GiaoDienThem(bool gd)
        {
            txtMaVideo.Enabled = gd;
            btnThem.Enabled = gd;
            btnSua.Enabled = !gd;
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            VideoDTO vd = VideoBUS.LayThongTinVideo(txtMaVideo.Text);

            vd.MaVideo = txtMaVideo.Text;

            if (txtTenVideo.Text != "")
            {
                vd.TenVideo = txtTenVideo.Text;
            }

            vd.ThongTin = txtThongTin.Text;
            vd.MaLoaiVideo = dropMaLoaiVideo.Text;
            vd.NgayDang = DateTime.Parse(txtNgayDang.Text);
            vd.TenTaiKhoan = txtTaiKhoanDang.Text;
            vd.DuongDanVideo = txtDuongDan.Text;
            vd.TrangThai = chkTrangThai.Checked;

            if (VideoBUS.SuaVideo(vd))
            {
                XoaForm();
                LoadDSVideo();
                GiaoDienThem(true);
                Response.Write("<script>alert('Sửa thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Sửa thất bại');</script>");
            }
        }
        
        protected void btnHuy_Click(object sender, EventArgs e)
        {
            XoaForm();
            GiaoDienThem(true);
        }

        protected void grvDSVideo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChonVd")
            {
                string maVideo = e.CommandArgument.ToString();

                VideoDTO vd = VideoBUS.LayThongTinVideo(maVideo);

                if (vd != null)
                {
                    txtMaVideo.Text = vd.MaVideo;
                    txtTenVideo.Text = vd.TenVideo;
                    txtThongTin.Text = vd.ThongTin;
                    dropMaLoaiVideo.Text = vd.MaLoaiVideo;
                    txtNgayDang.Text = (vd.NgayDang).ToString();
                    txtTaiKhoanDang.Text = vd.TenTaiKhoan;
                    txtDuongDan.Text = vd.DuongDanVideo;
                    chkTrangThai.Checked = vd.TrangThai;
                    GiaoDienThem(false);
                }
            }

            if (e.CommandName == "XoaVd")
            {
                string maVideo = e.CommandArgument.ToString();

                if (VideoBUS.XoaVideo(maVideo))
                {
                    XoaForm();
                    LoadDSVideo();
                    Response.Write("<script>alert('Xóa thành công ');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Xóa thất bại');</script>");
                }
            }
        }
        protected void grvDSVideo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvDSVideo.PageIndex = e.NewPageIndex;
            int trang_thu = e.NewPageIndex;
            int sodong = grvDSVideo.PageSize;
            stt = trang_thu * sodong + 1;
            this.bindgrikview();
        }
        public void bindgrikview()
        {
            grvDSVideo.DataSource = VideoBUS.LayDSVideo();
            grvDSVideo.DataBind();
        }
        public string get_stt()
        {
            return Convert.ToString(stt++);
        }
        int stt = 1;
    }
}