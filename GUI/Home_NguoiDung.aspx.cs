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
    public partial class Home_NguoiDung1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
               
                rptVideo.DataSource = VideoBUS.LayDSVideo();
                rptVideo.DataBind();
            }

        }

        //protected void rptloaiVideo_ItemCommand(object source, RepeaterCommandEventArgs e)
        //{
        //    String masp = e.CommandArgument.ToString();
        //    rptloaiVideo.DataSource = LoaiVideoBUS.LayDSLoaiVideo(maLoaiVideo);
        //    rptloaiVideo.DataBind();
        //}
    }
}