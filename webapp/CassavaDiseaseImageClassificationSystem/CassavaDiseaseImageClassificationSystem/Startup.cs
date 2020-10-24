using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CassavaDiseaseImageClassificationSystem.Startup))]
namespace CassavaDiseaseImageClassificationSystem
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
