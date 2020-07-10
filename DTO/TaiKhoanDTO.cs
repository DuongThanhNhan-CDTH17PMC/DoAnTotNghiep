using System;
using System.Collections.Generic;
using System.Text;


namespace DTO
{
    public class TaiKhoanDTO
    {
        private string tenTaiKhoan;
        private string matKhau;
        private string sdt;
        private string hoTen;
        private bool laAdmin;
        private string anhDaiDien;
        private bool trangThai;

        public string TenTaiKhoan { get => tenTaiKhoan; set => tenTaiKhoan = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string HoTen { get => hoTen; set => hoTen = value; }
        public bool LaAdmin { get => laAdmin; set => laAdmin = value; }
        public string AnhDaiDien { get => anhDaiDien; set => anhDaiDien = value; }
        public bool TrangThai { get => trangThai; set => trangThai = value; }

        public TaiKhoanDTO()
        {
            LaAdmin = false;
            TrangThai = true;
        }
    }
}
