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
    public class VideoDAO
    {
        public static DataTable LayDSVideo()
        {
            string query = "SELECT * FROM Video";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param);

        }
        
        public static VideoDTO LayThongTinVideo(string maVideo)
        {
            string query = "SELECT * FROM Video WHERE MaVideo = @MaVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaVideo", maVideo);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }

        public static DataRow LayTenVideo(VideoDTO vd)
        {
            string query = "SELECT TenVideo FROM Video WHERE MaVideo = @MaVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaVideo", vd.MaVideo);
            return DataProvider.ExecuteSelectQuery(query, param).Rows[0];
            
        }

        public static bool KTVideoTonTai(VideoDTO vd)
        {
            string query = "SELECT COUNT(*) FROM Video WHERE MaVideo = @MaVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaVideo", vd.MaVideo);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }
        
        public static DataTable LayTenVideo(string maVideo)
        {
            string query = "SELECT TenVideo FROM Video WHERE MaVideo = @MaVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaVideo", maVideo);
            return DataProvider.ExecuteSelectQuery(query, param);
        }
        
        public static bool KTVideoTonTai(string maVideo)
        {
            string query = "SELECT COUNT(*) FROM Video WHERE MaVideo = @MaVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaVideo", maVideo);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool ThemVideo(VideoDTO vd)
        {

            string query = "Insert Into Video(MaVideo,TenVideo,ThongTin,MaLoaiVideo,LuotThich,LuotKhongThich,NgayDang,LuotXem,TenTaiKhoan,DuongDanVideo,AnhDaiDien,TrangThai) values(@MaVideo,@TenVideo,@ThongTin,@MaLoaiVideo,@LuotThich,@LuotKhongThich,@NgayDang,@LuotXem,@TenTaiKhoan,@DuongDanVideo,@AnhDaiDien,@TrangThai)";
            
            SqlParameter[] param = new SqlParameter[12];
            param[0] = new SqlParameter("@MaVideo", vd.MaVideo);
            param[1] = new SqlParameter("@TenVideo", vd.TenVideo);
            param[2] = new SqlParameter("@ThongTin", vd.ThongTin);
            param[3] = new SqlParameter("@MaLoaiVideo", vd.MaLoaiVideo);
            param[4] = new SqlParameter("@LuotThich", vd.LuotThich);
            param[5] = new SqlParameter("@LuotKhongThich", vd.LuotKhongThich);
            param[6] = new SqlParameter("@NgayDang", vd.NgayDang);
            param[7] = new SqlParameter("@LuotXem", vd.LuotXem);
            param[8] = new SqlParameter("@TenTaiKhoan", vd.TenTaiKhoan);
            param[9] = new SqlParameter("@DuongDanVideo", vd.DuongDanVideo);
            param[10] = new SqlParameter("@AnhDaiDien", vd.AnhDaiDien);
            param[11] = new SqlParameter("@TrangThai", vd.TrangThai);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaVideo(VideoDTO vd)
        {
            string query = "UPDATE Video SET TenVideo = @TenVideo,  ThongTin = @ThongTin,  MaLoaiVideo = @MaLoaiVideo, LuotThich = @LuotThich, LuotKhongThich = @LuotKhongThich, NgayDang = @NgayDang, LuotXem = @LuotXem, TenTaiKhoan = @TenTaiKhoan, DuongDanVideo= @DuongDanVideo, AnhDaiDien= @AnhDaiDien, TrangThai = @TrangThai WHERE MaVideo = @MaVideo";

            SqlParameter[] param = new SqlParameter[12];
            param[0] = new SqlParameter("@MaVideo", vd.MaVideo);
            param[1] = new SqlParameter("@TenVideo", vd.TenVideo);
            param[2] = new SqlParameter("@ThongTin", vd.ThongTin);
            param[3] = new SqlParameter("@MaLoaiVideo", vd.MaLoaiVideo);
            param[4] = new SqlParameter("@LuotThich", vd.LuotThich);
            param[5] = new SqlParameter("@LuotKhongThich", vd.LuotKhongThich);
            param[6] = new SqlParameter("@NgayDang", vd.NgayDang);
            param[7] = new SqlParameter("@LuotXem", vd.LuotXem);
            param[8] = new SqlParameter("@TenTaiKhoan", vd.TenTaiKhoan);
            param[9] = new SqlParameter("@DuongDanVideo", vd.DuongDanVideo);
            param[10] = new SqlParameter("@AnhDaiDien", vd.AnhDaiDien);
            param[11] = new SqlParameter("@TrangThai", vd.TrangThai);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool XoaVideo(string maVideo)
        {
            string query = "UPDATE Video SET TrangThai = 0 WHERE MaVideo = @MaVideo";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", maVideo);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }

        public static VideoDTO ConvertToDTO(DataRow dr)
        {
            VideoDTO vd = new VideoDTO();
            vd.MaVideo = dr["MaVideo"].ToString();
            vd.TenVideo = dr["TenVideo"].ToString();
            vd.ThongTin = dr["ThongTin"].ToString();
            vd.MaLoaiVideo = dr["MaLoaiVideo"].ToString();
            vd.LuotThich = Convert.ToInt32(dr["LuotThich"]);
            vd.LuotKhongThich = Convert.ToInt32(dr["LuotKhongThich"]);
            vd.NgayDang = (DateTime)dr["NgayDang"];
            vd.LuotXem = Convert.ToInt32(dr["LuotXem"]);
            vd.TenTaiKhoan = dr["TenTaiKhoan"].ToString();
            vd.DuongDanVideo = dr["DuongDanVideo"].ToString();
            vd.AnhDaiDien = dr["AnhDaiDien"].ToString();
            vd.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return vd;

         
        }
     
        //tìm kiếm Video 
        public static List<VideoDTO> TimkiemVideo(string TenVideo)
        {
            string query = "SELECT * FROM Video WHERE TenVideo LIKE '%@TenVideo%'";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenVideo", TenVideo);
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<VideoDTO> lstVideo = new List<VideoDTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstVideo.Add(ConvertToDTO(dr));
            }
            return lstVideo;
        }
        
    }
}
