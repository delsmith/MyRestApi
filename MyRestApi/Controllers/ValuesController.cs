using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace MyRestApi.Controllers
{
    public class ValuesController : ApiController
    {
        static internal string lastPut = "", lastPost = "";
        static internal string[] value;
        // GET api/values
        public IEnumerable<string> Get()
        {
            value = new string[] { $"Post:[{lastPost}]", $"Put:[{lastPut}]" };
            return value;
        }

        // GET api/values/5
        public string Get(int id)
        {
            return ($"id = '{id}'");
        }

        // POST api/values
        public async void Post()
        {
            lastPost = await Request.Content.ReadAsStringAsync();
        }

        // PUT api/values/5
        public async void Put()
        {
            lastPut = await Request.Content.ReadAsStringAsync();
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
