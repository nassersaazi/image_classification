﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RunPythonScript
{
    public class Program
    {


        // Get config settings
        private static string filePythonExePath = "";//Properties.Settings.Default.FilePythonExePath;
        private static string folderImagePath = "";//Properties.Settings.Default.FolderImagePath;
        private static string filePythonNamePath = "";//Properties.Settings.Default.FilePythonNamePath;
        private static string filePythonParameterName = "";//Properties.Settings.Default.FilePythonParameterName;

        static void Main(string[] args)
        {
            string outputText, standardError;

            // Instantiate Machine Learning C# - Python class object            
            IMLSharpPython mlSharpPython = new MLSharpPython(filePythonExePath);
            // Test image
            string imagePathName = folderImagePath + "Image_Test_Name.png";
            // Define Python script file and input parameter name
            string fileNameParameter = $"{filePythonNamePath} {filePythonParameterName} {imagePathName}";
            // Execute the python script file 
            outputText = mlSharpPython.ExecutePythonScript(fileNameParameter, out standardError);
            if (string.IsNullOrEmpty(standardError))
            {
                switch (outputText.ToLower())
                {
                    case "1":
                        Console.WriteLine("Image category 1");
                        break;
                    case "0":
                        Console.WriteLine("Image category 0");
                        break;
                    default:
                        Console.WriteLine(outputText);
                        break;
                }
            }
            else
            {
                Console.WriteLine(standardError);
            }
            Console.ReadKey();
        }
    }
    
}
