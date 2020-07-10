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
    public partial class QL_LoaiVideospx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSLoaiVideo();
            }
        }

        protected void LoadDSLoaiVideo()
        {
            grvDSLoaiVideo.DataSource = LoaiVideoBUS.LayDSLoaiVideo();
            grvDSLoaiVideo.DataBind();
        }


        protected void btnThem_Click(object sender, EventArgs e)
        {
            LoaiVideoDTO lvd = new LoaiVideoDTO();

            lvd.MaLoaiVideo = txtMaLoai.Text;
            lvd.TenLoaiVideo = txtTenLoai.Text;
            lvd.TrangThai = chkTrangThai.Checked;

            if (LoaiVideoBUS.ThemLoaiVideo(lvd))
            {
                XoaForm();
                LoadDSLoaiVideo();
                GiaoDienThem(true);
                Response.Write("<script>alert('Thêm loại video thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Thêm loại video thất bại');</script>");
            }
        }

        protected void GiaoDienThem(bool gd)
        {
            txtMaLoai.Enabled = gd;
            btnThem.Enabled = gd;
            btnSua.Enabled = !gd;
        }

        protected void XoaForm()
        {
            foreach (Control c in form2.Controls)
            {
                if (c is TextBox)
                {
                    (c as TextBox).Text = string.Empty;
                }
            }
            chkTrangThai.Checked = false;
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            LoaiVideoDTO lvd = LoaiVideoBUS.LayThongTinLoaiVideo(txtMaLoai.Text);

            lvd.MaLoaiVideo = txtMaLoai.Text;

            if(txtMaLoai.Text != "")
            {
                lvd.TenLoaiVideo = txtTenLoai.Text;
            }
            lvd.TrangThai = chkTrangThai.Checked;

            if (LoaiVideoBUS.SuaLoaiVideo(lvd))
            {
                XoaForm();
                LoadDSLoaiVideo();
                GiaoDienThem(true);
                Response.Write("<script>alert('Sửa loại video thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Sửa loại video thất bại');</script>");
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            XoaForm();
            GiaoDienThem(true);
        }

        protected void grvDSLoaiVideo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChonLVD")
            {
                string maLoaiVideo = e.CommandArgument.ToString();
                

                LoaiVideoDTO lvd = LoaiVideoBUS.LayThongTinLoaiVideo(maLoaiVideo);
                if (lvd != null)
                {
                    txtMaLoai.Text = lvd.MaLoaiVideo;
                    txtTenLoai.Text = lvd.TenLoaiVideo;
                    chkTrangThai.Checked = lvd.TrangThai;
                    GiaoDienThem(false);
                }
            }

            if (e.CommandName == "XoaLVD")
            {
                string maLoaiVideo = e.CommandArgument.ToString();
                
                if (LoaiVideoBUS.XoaLoaiVideo(maLoaiVideo))
                {
                    XoaForm();
                    LoadDSLoaiVideo();
                    Response.Write("<script>alert('Xóa loại video thành công');</script>");
                }
                else
                {

                    Response.Write("<script>alert('Xóa Loại Video Thất Bại');</script>");
                }
            }
        }
    }
}