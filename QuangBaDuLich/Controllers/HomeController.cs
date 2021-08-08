using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuangBaDuLich.Models;

namespace QuangBaDuLich.Controllers
{
    
    public class HomeController : Controller
    {
        QL_DatTourDuLichEntities1 db = new QL_DatTourDuLichEntities1();
        // GET: Home
        public ActionResult Interface()
        {
            List<DiaDiem> danhsanh = db.DiaDiems.ToList();
            return View(danhsanh);
        }

        public ActionResult Detail()
        {
            string idDiaDiem = (string)RouteData.Values["id"];

            DiaDiem diaDiem = db.DiaDiems.Find(Int16.Parse(idDiaDiem));
            return View(diaDiem);
        }
    }
}