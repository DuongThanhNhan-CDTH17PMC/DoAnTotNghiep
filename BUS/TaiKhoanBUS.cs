using System;
using System.Collections.Generic;
using System.Text;
using DAO;
using DTO;
using System.Data;


namespace BUS
{
    public class TaiKhoanBUS
    {
        //Lấy danh sách tài khoản
        public static DataTable LayDSTaiKhoan()
        {
            return TaiKhoanDAO.LayDSTaiKhoan();
        }



        //Kiểm tra đăng nhập
        public static bool KiemtraLaADMIN(string tentk)
        {
            return TaiKhoanDAO.Kiemtraphaiadmin(tentk);
        }
        
        //Lấy họ tên để xuất lên label
        public static DataTable getHoten(string tentk)
        {
            return TaiKhoanDAO.laytentaikhoan(tentk);
        }

        public static TaiKhoanDTO LayThongTinTaiKhoan(string tenTK)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tenTK))
            {
                return null;
            }
            else
            {
                return TaiKhoanDAO.LayThongTinTaiKhoan(tenTK);
            }
        }
        //Kiểm tra đăng nhập
        public static bool KTDangNhap(string tenTK, string mk)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tenTK))
            {
                return false;
            }
            else
            {
                return mk == TaiKhoanDAO.LayMatKhau(tenTK);
            }
        }

        public static bool ThemTK(TaiKhoanDTO tk)
        {
            if (TaiKhoanDAO.KTTKTonTai(tk.TenTaiKhoan))
            {
                return false;
            }
            else
            {
                return TaiKhoanDAO.ThemTK(tk);
            }
        }

        public static bool SuaTK(TaiKhoanDTO tk)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tk.TenTaiKhoan))
            {
                return false;
            }
            else
            {
                return TaiKhoanDAO.SuaTK(tk);
            }
        }

        public static bool XoaTK(string tenTK)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tenTK))
            {
                return false;
            }
            else
            {
                return TaiKhoanDAO.XoaTK(tenTK);
            }
        }

    }
}
