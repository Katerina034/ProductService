using System.Collections.Generic;
using System.Web.Http;
using System.Web.Http.Cors;
using Calabonga.OperationResults;

namespace $rootnamespace$.Controllers {

    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*")]
    public class ValuesController : ApiController {

        public IHttpActionResult Get() {
            var items = new List<string>
            {
                "www.calabonga.net",
                "Value 2",
                "Value 3",
                "Value 4",
                "Value 5",
                "Value 6",
            };
            return Ok(OperationResult.CreateResult(items));
        }
    }
}