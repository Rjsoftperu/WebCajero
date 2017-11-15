using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebCajero.Startup))]
namespace WebCajero
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
