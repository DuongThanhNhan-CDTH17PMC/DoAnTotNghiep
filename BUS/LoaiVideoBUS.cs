using System;
using System.Collections.Generic;
using System.Text;
using DTO;
using DAO;
using System.Data;

namespace BUS
{
   public class LoaiVideoBUS
    {
        public static DataTable LayDSLoaiVideo()
        {
            return LoaiVideoDAO.LayDSLoaiVideo();
        }


        //admin
        public static DataTable LaytatcaLoaiVideo()
        {
            return LoaiVideoDAO.LaytatcaLoaiVideo();
        }

        public static DataRow LayLoaiVideo(LoaiVideoDTO lvd)
        {
            if (!LoaiVideoDAO.KTMaLoaiVideoTonTai(lvd))
            {
                return null;
               
            }
            else
            {
                return LoaiVideoDAO.LayLoaiVideo(lvd);
            }
        }

        public static LoaiVideoDTO LayThongTinLoaiVideo(string maLoaiVideo)
        {
            if (!LoaiVideoDAO.KTMaLoaiVideoTonTai(maLoaiVideo))
            {
                return null;
            }
            else
            {
                return LoaiVideoDAO.LayThongTinLoaiVideo(maLoaiVideo);
            }
        }
        
        //Thêm loại video
        public static bool ThemLoaiVideo(LoaiVideoDTO lvd)
        {
            if (LoaiVideoDAO.KTMaLoaiVideoTonTai(lvd))
            {
                return false;
            }
            else
            {
                return LoaiVideoDAO.ThemLoaiVideo(lvd);
            }
        }
        //Sửa loại video
        public static bool SuaLoaiVideo(LoaiVideoDTO lvd)
        {
            if (LoaiVideoDAO.KTMaLoaiVideoTonTai(lvd))
            {
                return LoaiVideoDAO.SuaLoaiVideo(lvd);
            }
            else
            {
                return false;
            }
        }
        //Xóa loại video
        public static bool XoaLoaiVideo(LoaiVideoDTO lvd)
        {
            if (LoaiVideoDAO.KTMaLoaiVideoTonTai(lvd))
            {
                return LoaiVideoDAO.XoaLoaiVideo(lvd);
            }
            else
            {
                return false;
            }
        }

        public static bool XoaLoaiVideo(string maLoaiVideo)
        {
            if (LoaiVideoDAO.KTMaLoaiVideoTonTai(maLoaiVideo))
            {
                return LoaiVideoDAO.XoaLoaiVideo(maLoaiVideo);
            }
            else
            {
                return false;
            }
        }
    }
}
