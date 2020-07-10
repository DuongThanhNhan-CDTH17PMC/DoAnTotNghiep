using System;
using System.Collections.Generic;
using System.Text;

namespace DTO
{
   public class LoaiVideoDTO
    {
        private string maLoaiVideo;
        private string tenLoaiVideo;
        private bool trangThai;

        public string MaLoaiVideo { get => maLoaiVideo; set => maLoaiVideo = value; }
        public string TenLoaiVideo { get => tenLoaiVideo; set => tenLoaiVideo = value; }
        public bool TrangThai { get => trangThai; set => trangThai = value; }
        
        public LoaiVideoDTO()
        {
            TrangThai = true;
        }

    }
}
