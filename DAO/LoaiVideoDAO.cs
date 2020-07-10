using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class LoaiVideoDAO
    {
        public static DataTable LayDSLoaiVideo()
        {
            string query = "SELECT * FROM LoaiVideo";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param);
        }

        public static LoaiVideoDTO ConvertToDTO(DataRow dr)
        {
            LoaiVideoDTO loaiVD = new LoaiVideoDTO();
            loaiVD.MaLoaiVideo = dr["MaLoaiVideo"].ToString();
            loaiVD.TenLoaiVideo = dr["TenLoaiVideo"].ToString();
            loaiVD.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return loaiVD;
        }

        //public static List<VideoDTO> LayLoaiVideo(string maLoaiVideo)
        //{
        //    string query = "SELECT * FROM Video WHERE MaLoaiVideo = @MaLoaiVideo";
        //    SqlParameter[] param = new SqlParameter[1];
        //    param[0] = new SqlParameter("@MaLoaiVideo", maLoaiVideo);
        //    DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
        //    List<VideoDTO> lstSanPham = new List<VideoDTO>();
        //    foreach (DataRow dr in dtbKetQua.Rows)
        //    {
        //        lstSanPham.Add(ConvertToDTO(dr));
        //    }
        //    return lstSanPham;
        //}

        public static DataTable LaytatcaLoaiVideo()
        {
            string query = "SELECT * FROM LoaiVideo";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param);
        }

        public static bool KTMaLoaiVideoTonTai(string maLoaiVideo)
        {
            string query = "SELECT COUNT(*) FROM LoaiVideo WHERE MaLoaiVideo = @MaLoaiVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiVideo", maLoaiVideo);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static LoaiVideoDTO LayThongTinLoaiVideo(string maLoaiVideo)
        {
            string query = "SELECT * FROM LoaiVideo WHERE MaLoaiVideo = @MaLoaiVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiVideo", maLoaiVideo);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }
        public static DataRow LayLoaiVideo(LoaiVideoDTO lvd)
        {
            string query = "SELECT * FROM LoaiVideo WHERE MaLoaiVideo = @MaLoaiVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiVideo", lvd.MaLoaiVideo);
            return DataProvider.ExecuteSelectQuery(query, param).Rows[0];
        }

        public static bool XoaLoaiVideo(string maLoaiVideo)
        {
            string query = "UPDATE LoaiVideo SET TrangThai = 0 WHERE MaLoaiVideo = @MaLoaiVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiVideo", maLoaiVideo);
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }

        public static bool KTMaLoaiVideoTonTai(LoaiVideoDTO lvd)
        {
            string query = "SELECT COUNT(*) FROM LoaiVideo WHERE MaLoaiVideo = @MaLoaiVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiVideo", lvd.MaLoaiVideo);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool ThemLoaiVideo(LoaiVideoDTO lvd)
        {
            string query = "INSERT INTO LoaiVideo (MaLoaiVideo, TenLoaiVideo, TrangThai) VALUES (@MaLoaiVideo, @TenLoaiVideo, @TrangThai)";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@MaLoaiVideo", lvd.MaLoaiVideo);
            param[1] = new SqlParameter("@TenLoaiVideo", lvd.TenLoaiVideo);
            param[2] = new SqlParameter("@TrangThai", lvd.TrangThai);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaLoaiVideo(LoaiVideoDTO lvd)
        {
            string query = "UPDATE LoaiVideo SET TenLoaiVideo = @TenLoaiVideo, TrangThai = @TrangThai WHERE MaLoaiVideo = @MaLoaiVideo";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@MaLoaiVideo", lvd.MaLoaiVideo);
            param[1] = new SqlParameter("@TenLoaiVideo", lvd.TenLoaiVideo);
            param[2] = new SqlParameter("@TrangThai", lvd.TrangThai);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }

        public static bool XoaLoaiVideo(LoaiVideoDTO lvd)
        {
            string query = "UPDATE LoaiVideo SET TrangThai = 0 WHERE MaLoaiVideo = @MaLoaiVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiVideo", lvd.MaLoaiVideo);
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }

        public static LoaiVideoDTO ConverToDTO(DataRow dr)
        {
            LoaiVideoDTO vd = new LoaiVideoDTO();
            vd.MaLoaiVideo = dr["MaLoaiVideo"].ToString();
            vd.TenLoaiVideo = dr["TenLoaiVideo"].ToString();
            vd.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
           
            return vd;
        }
    }
}
