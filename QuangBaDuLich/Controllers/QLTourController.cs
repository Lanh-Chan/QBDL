using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.Mvc;
using QuangBaDuLich.Models;

namespace QuangBaDuLich.Controllers
{
    public class QLTourController : Controller
    {
        QL_DatTourDuLichEntities1 db = new QL_DatTourDuLichEntities1();
        // GET: QLTour
        public ActionResult Tour()
        {
            List<Tour> danhsanh = db.Tours.ToList();
            return View(danhsanh);
        }

        public ActionResult ListTour()
        {
            List<Tour> danhSach = db.Tours.ToList();
            return View(danhSach);
        }
        public ActionResult CreateTour()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateTour(Tour tour)
        {
            if (ModelState.IsValid)
            {
                db.Tours.Add(tour);
                db.SaveChanges();
                return RedirectToAction("ListTour");
            }
            return View();
        }
        public ActionResult EditTour(int id)
        {
            var tours = db.Tours.FirstOrDefault(n => n.Id == id);
            return View(tours);
        }

        [HttpPost]
        public ActionResult EditTour(Tour tour)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tour).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("ListTour");
            }
            return View();
        }
        public ActionResult DeleteTour(int id)
        {
            var tours = db.Tours.FirstOrDefault(n => n.Id == id);
            db.Tours.Remove(tours);
            db.SaveChanges();
            return RedirectToAction("ListTour");
        }
    }
}