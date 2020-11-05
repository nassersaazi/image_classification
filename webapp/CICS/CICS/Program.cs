using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CICS
{
    public class Program
    {
        public static void Main(string[] args)
        {
            // Get folder image path
           // private static string folderImagePath = Properties.Settings.Default.FolderImagePath;

            // Declare variables
            string uirWebAPI, exceptionMessage, webResponse;

            // Set the UIR endpoint link. It should go to the application config file 
            uirWebAPI = "http://localhost:5000/api/v1.0/csharp_python_restfulapi_json";
            exceptionMessage = string.Empty;
            CSharpPythonRESTfulSAPI csharpPythonRESTfulAPI = new CSharpPythonRESTfulSAPI();
            // Get web response by calling the CSharpPythonRestfulApiSimpleTest() method
            webResponse = csharpPythonRESTfulAPI.CSharpPythonRestfulApiSimpleTest(uirWebAPI, out exceptionMessage);

            if (string.IsNullOrEmpty(exceptionMessage))
            {
                // No errors occurred. Write the string web response     
                Console.WriteLine(webResponse.ToString());
            }
            else
            {
                // An error occurred. Write the exception message
                Console.WriteLine(exceptionMessage);
            }
        }
    }
}
