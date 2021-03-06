using foodfun.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace foodfun.Controllers
{
    public class HomeController : Controller
    {
        GoPASTAEntities db;
        public HomeController()
        {
            db = new GoPASTAEntities();
        }

        [LoginAuthorize(RoleList ="")]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {

            AboutViewModel model = new AboutViewModel();
            model.Company = db.Company.OrderBy(m => m.rowid).FirstOrDefault();
            model.About = db.About.OrderBy(m => m.sortid).ToList();
            return View(model);
        }

        public ActionResult Contact()
        {
            var data = db.Company.Where(m => m.rowid == 1).FirstOrDefault();

            return View(data);
        }
    }
}