using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace CICS
{
    public class CSharpPythonRESTfulSAPI : ICSharpPythonRESTfulAPI
    {
        /// <summary>
        /// C# test to call Python HttpWeb RESTful API
        /// </summary>
        /// <param name="uirWebAPI">UIR web api link</param>
        /// <param name="exceptionMessage">Returned exception message</param>
        /// <returns>Web response string</returns>
        public string CSharpPythonRestfulApiSimpleTest(string uirWebAPI, out string exceptionMessage)
        {
            exceptionMessage = string.Empty;
            string webResponse = string.Empty;
            try
            {
                Uri uri = new Uri(uirWebAPI);
                WebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(uri);
                httpWebRequest.ContentType = "application/json";
                httpWebRequest.Method = "POST";
                using (StreamWriter streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {
                    dynamic employee = new JObject();
                    employee.username = "theUserName";
                    employee.password = "thePassword";
                    streamWriter.Write(employee.ToString());
                }
                HttpWebResponse httpWebResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                using (StreamReader streamReader = new StreamReader(httpWebResponse.GetResponseStream()))
                {
                    webResponse = streamReader.ReadToEnd();
                }
            }
            catch (Exception ex)
            {
                exceptionMessage = $"An error occurred. {ex.Message}";
                
            }
            return webResponse;
        }

        /// <summary>
        /// C# call Python HttpWeb RESTful API for image classification with Base64 encoded string
        /// </summary>
        /// <param name="uirWebAPI">UIR web api link</param>
        /// <param name="imagePathName">Image path and name</param>
        /// <param name="exceptionMessage">Exception message</param>
        /// <returns>Web response string</returns>
        public string CSharPythonRestfulApiImageClassificationBase64(string uirWebAPI, string imagePathName, out string exceptionMessage)
        {
            string base64String = string.Empty;
            exceptionMessage = string.Empty;
            string webResponse = string.Empty;
            try
            {
                Uri uri = new Uri(uirWebAPI);
                WebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(uri);
                httpWebRequest.ContentType = "application/json";
                httpWebRequest.Method = "POST";
                base64String = ImageFileToBase64String(imagePathName);
                using (StreamWriter streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {
                    dynamic imageJson = new JObject();
                    imageJson.content = base64String;
                    streamWriter.Write(imageJson.ToString());
                }
                HttpWebResponse httpWebResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                using (StreamReader streamReader = new StreamReader(httpWebResponse.GetResponseStream()))
                {
                    webResponse = streamReader.ReadToEnd();
                }
            }
            catch (Exception ex)
            {
                exceptionMessage = $"An error occurred. {ex.Message}";
            }
            return webResponse;
        }

        /// <summary>
        /// RestSharp call Python RESTful API for image classification with Base64 encode
        /// </summary>
        /// <param name="urlWebAPI">UIR web api link</param>
        /// <param name="imagePathName">Image path and name</param>
        /// <param name="exceptionMessage">Returned exception message</param>
        /// <returns>Response content string</returns>
        public string RestSharpPythonRestfulApiImageClassificationBase64(string urlWebAPI, string imagePathName, out string exceptionMessage)
        {
            string base64String = string.Empty;
            string imageJsonString = string.Empty;
            exceptionMessage = string.Empty;
            string responseContent = string.Empty;
            try
            {
                base64String = ImageFileToBase64String(imagePathName);
                imageJsonString = BuildImageJsonString(base64String);
                RestRequest restRequest = new RestRequest(Method.POST);
                restRequest.AddHeader("content-type", "application/json");
                restRequest.AddParameter("application/json", imageJsonString, ParameterType.RequestBody);
                RestClient restClient = new RestClient(urlWebAPI);
                IRestResponse iRestResponse = restClient.Execute(restRequest);
                string errorMessage = iRestResponse.ErrorMessage;
                if (string.IsNullOrEmpty(errorMessage))
                {
                    responseContent = iRestResponse.Content;
                }
                else
                {
                    responseContent = errorMessage;
                }
            }
            catch (Exception ex)
            {
                exceptionMessage = $"An error occurred. {ex.Message}";
            }
            return responseContent;
        }

        /// <summary>
        /// Convert image file to base64 encoded string
        /// </summary>
        /// <param name="imagePathName">Image path and name</param>     
        /// <returns>Base64 encoded string</returns>
        private string ImageFileToBase64String(string imagePathName)
        {
            string base64String = string.Empty;
            try
            {
                using (Image image = Image.FromFile(imagePathName))
                {
                    using (MemoryStream memoryStream = new MemoryStream())
                    {
                        image.Save(memoryStream, image.RawFormat);
                        byte[] imageBytes = memoryStream.ToArray();
                        base64String = Convert.ToBase64String(imageBytes);
                    }
                }
            }
            catch (Exception ex)
            {
                string exceptionMessage = $"An error occurred. {ex.Message}";
            }
            return base64String;
        }

        /// <summary>
        /// Build image json string object
        /// </summary>
        /// <param name="base64String">Base64 encoded string</param>
        /// <returns>Image json string</returns>
        private string BuildImageJsonString(string base64String)
        {
            string imageJsonString = string.Empty;
            try
            {
                dynamic imageJson = new JObject();
                imageJson.content = base64String;
                imageJsonString = imageJson.ToString();
            }
            catch (Exception ex)
            {
                string exceptionMessage = $"An error occurred. {ex.Message}";
            }
            return imageJsonString;
        }
    }
}
