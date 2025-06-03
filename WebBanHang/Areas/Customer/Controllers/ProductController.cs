using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using WebBanHang.Areas.Customer.Models;
using WebBanHang.Models;

namespace WebBanHang.Controllers
{
    [Area("Customer")]
    public class ProductController : Controller
    {
        private ApplicationDbContext _db;
        public ProductController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult Index(int catid = 1)
        {
            var dsLoai = _db.Categories.OrderBy(x => x.DisplayOrder).Select(c => new CategoryNew { Id = c.Id, Name = c.Name, TotalProduct = _db.Products.Where(p => p.CategoryId == c.Id).Count() }).ToList();
            var catName = _db.Categories.Find(catid).Name;
            var dsSanPham = _db.Products.Where(p => p.CategoryId == catid).ToList();
            ViewBag.DSLOAI = dsLoai;
            ViewBag.CATEGORY_NAME = catName;
            return View(dsSanPham);
        }
        public IActionResult LoadPartial(int catid = 1)
        {
            var dsSanPham = _db.Products.Where(p => p.CategoryId == catid).ToList();
            var catName = _db.Categories.Find(catid).Name;
            ViewBag.CATEGORY_NAME = catName;
            return PartialView("_ProductPartial", dsSanPham);
        }
    }
}
