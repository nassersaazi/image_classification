using System;
using CICS;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CallPythonRESTfulAPITest
{
    [TestClass]
    public class PythonRESTfulAPITest
    {
        [TestMethod]
        public void TestCallPythonRESTfulAPI()
        {

            string exceptionMessage = string.Empty;
            string urlWebAPI = "http://localhost:5000/api/v1.0/image_classification_base64_encode_json";
            string expectedOutputText = "{\n  \"image type\": \"0\"\n}\n";
            string folderImagePath = "";// Properties.Settings.Default.FolderImagePath;
            string imagePathName = folderImagePath + "flat.tif";
            ICSharpPythonRESTfulAPI csharpPythonRESTfulAPI = new CSharpPythonRESTfulSAPI();
            string actualOutputText = csharpPythonRESTfulAPI.RestSharpPythonRestfulApiImageClassificationBase64(urlWebAPI, imagePathName, out exceptionMessage);
            Assert.AreEqual(expectedOutputText, actualOutputText);
        }
    }
}
