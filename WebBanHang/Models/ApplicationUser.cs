using Microsoft.AspNetCore.Identity;
using System;

namespace WebBanHang.Models
{
    public class ApplicationUser : IdentityUser
    {
        //Bổ sung các thuộc tính cần thiết cho người dùng
        public string FullName { get; set; }
        //Ngày sinh nhật
        public DateTime Birthday { get; set; }
    }
}
