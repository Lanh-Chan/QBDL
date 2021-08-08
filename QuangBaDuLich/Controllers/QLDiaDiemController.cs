using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.Mvc;
using QuangBaDuLich.Models;

namespace QuangBaDuLich.Controllers
{
    public class QLDiaDiemController : Controller
    {
        QL_DatTourDuLichEntities1 db = new QL_DatTourDuLichEntities1();
        // GET: DiaDiem
        public ActionResult DanhSachDiaDiem()
        {
            List<DiaDiem> danhSach = db.DiaDiems.ToList();
            return View(danhSach);
        }

        public ActionResult DiaDiem()
        {
            List<DiaDiem> danhSach = db.DiaDiems.ToList();
            return View(danhSach);
        }

        public ActionResult ThemDiaDiem()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ThemDiaDiem(DiaDiem diaDiem)
        {
            if (ModelState.IsValid)
            {
                db.DiaDiems.Add(diaDiem);
                db.SaveChanges();
                return RedirectToAction("DanhSachDiaDiem");
            }
            return View();
        }

        public ActionResult SuaDiaDiem(int id)
        {
            var data = db.DiaDiems.FirstOrDefault(x => x.Id == id);
            return View(data);
        }

        [HttpPost]
        public ActionResult SuaDiaDiem(DiaDiem diaDiem)
        {
            if (ModelState.IsValid)
            {
                db.Entry(diaDiem).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("DanhSachDiaDiem");
            }
            return View();
        }

        public ActionResult XoaDiaDiem(int id)
        {
            var data = db.DiaDiems.FirstOrDefault(x => x.Id == id);
            db.DiaDiems.Remove(data);
            db.SaveChanges();
            return RedirectToAction("DanhSachDiaDiem");
        }
    }
}