using System;
using System.Collections.Generic;
using System.Text;
using DTO;
using DAO;
using System.Data;

namespace BUS
{
    public class VideoBUS
    {
        //Lấy danh sách video
     
        public static DataTable LayDSVideo()
        {
            return VideoDAO.LayDSVideo();
        }
        //admin
        public static DataTable LaytatcaVideo()
        {
            return VideoDAO.LayDSVideo();
        }

        public static DataRow LayVideo(VideoDTO maVideo)
        {
            if (!VideoDAO.KTVideoTonTai(maVideo))
            {
                return null;

            }
            else
            {
                return VideoDAO.LayTenVideo(maVideo);
            }
        }

        public static VideoDTO LayThongTinVideo(string maVideo)
        {
            if (!VideoDAO.KTVideoTonTai(maVideo))
            {
                return null;
            }
            else
            {
                return VideoDAO.LayThongTinVideo(maVideo);
            }
        }

        //Thêm  video
        public static bool ThemVideo(VideoDTO vd)
        {
            if (VideoDAO.KTVideoTonTai(vd))
            {
                return false;
            }
            else
            {
                return VideoDAO.ThemVideo(vd);
            }
        }
        //Sửa video
        public static bool SuaVideo(VideoDTO maVideo)
        {
            if (VideoDAO.KTVideoTonTai(maVideo))
            {
                return VideoDAO.SuaVideo(maVideo);
            }
            else
            {
                return false;
            }
        }
       

        public static bool XoaVideo(string maVideo)
        {
            if (VideoDAO.KTVideoTonTai(maVideo))
            {
                return VideoDAO.XoaVideo(maVideo); ;
               
            }
            else
            {
                return false;
            }
        }
    }
}
