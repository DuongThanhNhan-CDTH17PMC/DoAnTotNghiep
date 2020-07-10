using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;

namespace DAO
{
    public class TaiKhoanDAO
    {

        public static DataTable LayDSTaiKhoan()
        {
            string query = "SELECT * FROM TaiKhoan";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param);
            
        }
        
        //kiểm tra có phải là admin
        public static bool Kiemtraphaiadmin(string tentk)
        {
            string query = "SELECT LaAdmin FROM TaiKhoan WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tentk);
            return Convert.ToBoolean(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == true;
        }
        
        //Lấy thông tin tài khoản
        public static TaiKhoanDTO LayThongTinTaiKhoan(string tenTK)
        {
            string query = "SELECT * FROM TaiKhoan WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }
        public static DataTable laytentaikhoan(string tenTK)
        {
            string query = "SELECT HoTen FROM TaiKhoan WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);
            return DataProvider.ExecuteSelectQuery(query, param);
        }

        public static string LayMatKhau(string tenTK)
        {
            string query = "SELECT MatKhau FROM TaiKhoan WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);
            return DataProvider.ExecuteSelectQuery(query, param).Rows[0][0].ToString();
        }

        public static bool KTTKTonTai(string tenTK)
        {
            string query = "SELECT COUNT(*) FROM TaiKhoan WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool ThemTK(TaiKhoanDTO tk)
        {
            string query = "INSERT INTO TaiKhoan (TenTaiKhoan, MatKhau, SDT, HoTen, LaAdmin, AnhDaiDien, TrangThai) VALUES (@TenTaiKhoan, @MatKhau, @SDT, @HoTen, @LaAdmin, @AnhDaiDien, @TrangThai)";
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@TenTaiKhoan", tk.TenTaiKhoan);
            param[1] = new SqlParameter("@MatKhau", tk.MatKhau);
            param[2] = new SqlParameter("@SDT", tk.Sdt);
            param[3] = new SqlParameter("@HoTen", tk.HoTen);
            param[4] = new SqlParameter("@LaAdmin", tk.LaAdmin);
            param[5] = new SqlParameter("@AnhDaiDien", tk.AnhDaiDien);
            param[6] = new SqlParameter("@TrangThai", tk.TrangThai);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaTK(TaiKhoanDTO tk)
        {
            string query = "UPDATE TaiKhoan SET MatKhau = @MatKhau,  SDT = @SDT,  HoTen = @HoTen, LaAdmin = @LaAdmin, AnhDaiDien = @AnhDaiDien, TrangThai = @TrangThai WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@TenTaiKhoan", tk.TenTaiKhoan);
            param[1] = new SqlParameter("@MatKhau", tk.MatKhau);
            param[2] = new SqlParameter("@SDT", tk.Sdt);
            param[3] = new SqlParameter("@HoTen", tk.HoTen);
            param[4] = new SqlParameter("@LaAdmin", tk.LaAdmin);
            param[5] = new SqlParameter("@AnhDaiDien", tk.AnhDaiDien);
            param[6] = new SqlParameter("@TrangThai", tk.TrangThai);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool XoaTK(string tenTK)
        {
            string query = "UPDATE TaiKhoan SET TrangThai = 0 WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }

        public static TaiKhoanDTO ConvertToDTO(DataRow dr)
        {
            TaiKhoanDTO tk = new TaiKhoanDTO();
            tk.TenTaiKhoan = dr["TenTaiKhoan"].ToString();
            tk.MatKhau = dr["MatKhau"].ToString();
            tk.Sdt = dr["SDT"].ToString();
            tk.HoTen = dr["HoTen"].ToString();
            tk.LaAdmin = Convert.ToBoolean(dr["LaAdmin"]);
            tk.AnhDaiDien = dr["AnhDaiDien"].ToString();
            tk.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return tk;
        }

    }
}
