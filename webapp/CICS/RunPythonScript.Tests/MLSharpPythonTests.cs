using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace RunPythonScript.Tests
{
    [TestClass]
    public class MLSharpPythonTests
    {

        private static string filePythonExePath = "";// Properties.Settings.Default.FilePythonExePath;
        private static string folderImagePath = "";// Properties.Settings.Default.FolderImagePath;
        private static string filePythonNamePath = "";// Properties.Settings.Default.FilePythonNamePath;
        private static string filePythonParameterName = "";// Properties.Settings.Default.FilePythonParameterName;
        [TestMethod]
        public void ExecutePythonScriptTest()
        {
            string standardError;
            string expectedOutputText = "1";
            string fileNamePythonExe = filePythonExePath;
            MLSharpPython mlSharpPython = new MLSharpPython(fileNamePythonExe);
            string imagePathName = folderImagePath + "Image_Test_Name.png";
            string fileNameParameter = $"{filePythonNamePath} {filePythonParameterName} {imagePathName}";
            string actualOutputText = mlSharpPython.ExecutePythonScript(fileNameParameter, out standardError);
            Assert.AreEqual(expectedOutputText, actualOutputText);
        }
    }
}
