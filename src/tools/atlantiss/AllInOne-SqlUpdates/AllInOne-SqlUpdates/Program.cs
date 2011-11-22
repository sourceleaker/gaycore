using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;

namespace AllInOne_SqlUpdates
{
    class Program
    {
        static void Main(string[] args)
        {
            // Atlantiss Updates
            // ---------------------------------
            string path_A = "sql/ACORE3/updates/world";
            Dictionary<float, string> Data_A = new Dictionary<float, string>();
            
            Regex Regex_A = new Regex(@"(?<number>\d{1,4})_(?<title>.*)");
            DirectoryInfo dir = new DirectoryInfo(path_A);
            FileInfo[] Files  = dir.GetFiles("*.sql");
            Console.WriteLine("Atlantiss Updates generate, found files: {0}", Files.Count());

            foreach(FileInfo file in Files)
            {
                Match data = Regex_A.Match(file.Name);
                float key = Convert.ToSingle(data.Groups["number"].Value);

                while (true)
                {
                    if (Data_A.ContainsKey(key))
                        key += 0.01f;
                    else
                        break;
                }

                StringBuilder tmp = new StringBuilder();
                tmp.AppendFormat("-- @FILE: {0:S}", file.Name);
                tmp.AppendLine();
                using (StreamReader f = file.OpenText())
                {
                    string l;
                    while ((l = f.ReadLine()) != null)
                        tmp.AppendLine(l);
                }

                Data_A[key] = tmp.ToString();
            }

            StringBuilder output = new StringBuilder();
            output.AppendFormat("-- Atlantiss Sql updates: {0:S} files", Files.Count().ToString());
            output.AppendLine();
            output.AppendLine("-- ------------------------------------ ");
            output.AppendLine(); output.AppendLine();

            List<float> keys = new List<float>(Data_A.Keys);
            keys.Sort();
            foreach (float key in keys)
            {
                output.AppendLine(Data_A[key].ToString());
            }

            using (StreamWriter f = new StreamWriter("Atlantiss_updates.sql"))
            {
                f.Write(output.ToString());
            }
        }
    }
}
