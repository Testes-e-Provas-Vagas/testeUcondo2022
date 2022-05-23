using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UCondo.Application.InputModels;
using UCondo.Application.Services;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace UCondo.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ContasController : ControllerBase
    {
        private IContaService _iContaService;


        public ContasController(IContaService iContaService)
        {
            _iContaService = iContaService;
        }

        [HttpGet]
        [Route("GetAll")]
        [AllowAnonymous]
        public ActionResult GetContas()
        {
            List<ContaModel> list = new List<ContaModel>();

            list = _iContaService.GetAll().OrderBy(a => a.FileName).ToList();


            List<ContaModel> treelist = new List<ContaModel>();
            if (list.Count > 0)
            {
                treelist = _iContaService.BuildTree(list);
            }

            return Ok(new { Data = treelist });
        }


        [HttpGet]
        [Route("GetByID")]
        [AllowAnonymous]
        public ActionResult GetContasByID(string ID)
        {
            ContaModel dado = new ContaModel();

            dado = _iContaService.GetByID(ID);

            return Ok(new { Data = dado });
        }


    }
}
