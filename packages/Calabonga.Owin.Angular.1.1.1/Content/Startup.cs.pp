using Microsoft.Owin;
using Owin;
using System.Web.Http;
using Calabonga.Owin.Angular;
using $rootnamespace$;

[assembly: OwinStartup(typeof(Startup))]
namespace $rootnamespace$ {

    /// <summary>
    /// Start for Owin
    /// </summary>
    public class Startup {

        public void Configuration(IAppBuilder app) {
        
            // use WebAPI
            var config = new HttpConfiguration();            
            config.EnableCors();
            config.Routes.MapHttpRoute("DefaulApi", "api/{controller}/{id}", new { id = RouteParameter.Optional });
            app.UseWebApi(config);
            
            // use Angular command
            // ng new app 
            // for new site generation
            app.UseSinglePageApplicationOverWebApi("/app/", "/", "/index.html");
        }
    }
}