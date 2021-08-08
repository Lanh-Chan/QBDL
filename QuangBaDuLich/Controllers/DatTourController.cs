using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuangBaDuLich.Models;

namespace QuangBaDuLich.Controllers
{
    public class DatTourController : Controller
    {
        QL_DatTourDuLichEntities1 db = new QL_DatTourDuLichEntities1();
        // GET: DatTour
        public ActionResult DatTour(int id)
        {
            ViewBag.Tour = db.Tours.FirstOrDefault(x => x.Id == id);
            return View();
        }
        public ActionResult HanhTrinh()
        {
            List<HanhTrinh> danhsach = db.HanhTrinhs.ToList();
            return View(danhsach);
        }
        public ActionResult HienThiDatTour()
        {
            List<DatTour> danhsach = db.DatTours.ToList();
            return View(danhsach);
        }
        public ActionResult XoaDatTour(int id)
        {
            var duLieuCanXoa = db.DatTours.FirstOrDefault(x => x.Id == id);
            db.DatTours.Remove(duLieuCanXoa);
            db.SaveChanges();

            return RedirectToAction("HienThiDatTour");
        }
    }
}