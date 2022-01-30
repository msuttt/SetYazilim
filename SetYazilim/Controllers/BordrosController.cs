using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SetYazilim.EF;

namespace SetYazilim.Controllers
{

    [Route("api/[controller]")]
    [ApiController]


    public class BordrosController : ControllerBase
    {
        List<Temptable> liste = new List<Temptable>();
       

        [Route("GetAll")]
        [HttpGet]
        public IActionResult GetAll()
        {
            using (var db = new SetYazilimDBContext())
            {
                liste = db.Temptables.ToList();
            }
            return Ok(liste);
        }

    }
}