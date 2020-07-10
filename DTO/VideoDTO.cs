using System;
using System.Collections.Generic;
using System.Text;

namespace DTO
{
    public class VideoDTO
    {
        private string maVideo;
        private string tenVideo;
        private string thongTin;
        private string maLoaiVideo;
        private int luotThich;
        private int luotKhongThich;
        private DateTime ngayDang;
        private int luotXem;
        private string tenTaiKhoan;
        private string duongDanVideo;
        private string anhDaiDien;
        private bool trangThai;

        public string MaVideo { get => maVideo; set => maVideo = value; }
        public string TenVideo { get => tenVideo; set => tenVideo = value; }
        public string ThongTin { get => thongTin; set => thongTin = value; }
        public string MaLoaiVideo { get => maLoaiVideo; set => maLoaiVideo = value; }
        public int LuotThich { get => luotThich; set => luotThich = value; }
        public int LuotKhongThich { get => luotKhongThich; set => luotKhongThich = value; }
        public DateTime NgayDang { get => ngayDang; set => ngayDang = value; }
        public int LuotXem { get => luotXem; set => luotXem = value; }
        public string TenTaiKhoan { get => tenTaiKhoan; set => tenTaiKhoan = value; }
        public string DuongDanVideo { get => duongDanVideo; set => duongDanVideo = value; }
        public string AnhDaiDien { get => anhDaiDien; set => anhDaiDien = value; }
        public bool TrangThai { get => trangThai; set => trangThai = value; }

        public VideoDTO()
        {
            LuotThich = 0;
            LuotKhongThich = 0;
            LuotXem = 0;
            TrangThai = true;
        }

    }
}
