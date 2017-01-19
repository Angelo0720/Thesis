using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BFARv3.Startup))]
namespace BFARv3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
