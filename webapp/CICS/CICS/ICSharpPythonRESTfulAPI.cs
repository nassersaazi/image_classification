using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CICS
{
    public interface ICSharpPythonRESTfulAPI
    {
        string CSharpPythonRestfulApiSimpleTest(string uirWebAPI, out string exceptionMessage);
        string CSharPythonRestfulApiImageClassificationBase64(string uirWebAPI, string imagePathName, out string exceptionMessage);
        string RestSharpPythonRestfulApiImageClassificationBase64(string urlWebAPI, string imagePathName, out string exceptionMessage);
    }
}
