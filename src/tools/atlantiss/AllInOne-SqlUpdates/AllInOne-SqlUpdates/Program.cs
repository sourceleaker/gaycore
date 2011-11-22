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
            AtlantissWorld();
            AtlantissCharacters();
            AtlantissAuth();

            SkyfireWorld();
            SkyfireCharacters();           
            SkyfireAuth();

            System.Threading.Thread.Sleep(15000);
        }

        static void AtlantissWorld()
        {
            // Atlantiss World Updates
            // ---------------------------------
            string path_A = "ACORE3/updates/world";
            if (!Directory.Exists(path_A))
            {
                Console.WriteLine("Atlanitiss World Directory (ACORE3/updates/world) Not Found");
                return;
            }

            Dictionary<float, string> Data_A = new Dictionary<float, string>();

            Regex Regex_A = new Regex(@"(?<number>\d{1,4})_(?<title>.*)");
            DirectoryInfo dirA = new DirectoryInfo(path_A);
            FileInfo[] FilesA = dirA.GetFiles("*.sql");
            Console.WriteLine("Atlantiss World Updates generate, found files: {0}", FilesA.Count());

            foreach (FileInfo fileA in FilesA)
            {
                Match dataA = Regex_A.Match(fileA.Name);
                float keyA = Convert.ToSingle(dataA.Groups["number"].Value);

                while (true)
                {
                    if (Data_A.ContainsKey(keyA))
                        keyA += 0.01f;
                    else
                        break;
                }

                StringBuilder tmpA = new StringBuilder();
                tmpA.AppendFormat("-- @FILE: {0:S}", fileA.Name);
                tmpA.AppendLine();
                using (StreamReader f = fileA.OpenText())
                {
                    string l;
                    while ((l = f.ReadLine()) != null)
                        tmpA.AppendLine(l);
                }

                Data_A[keyA] = tmpA.ToString();
            }

            StringBuilder outputA = new StringBuilder();          
            outputA.AppendFormat("-- Atlantiss World Sql updates: {0:S} files", FilesA.Count().ToString());
            outputA.AppendLine();
            outputA.AppendLine("-- ------------------------------------ ");
            outputA.AppendLine(); outputA.AppendLine();
            
            List<float> keysA = new List<float>(Data_A.Keys);
            keysA.Sort();
            foreach (float keyA in keysA)
            {
                outputA.AppendLine(Data_A[keyA].ToString());
            }

            using (StreamWriter f = new StreamWriter("Atlantiss_world_updates.sql"))
            {
                f.Write(outputA.ToString());
            }
        }

        static void AtlantissCharacters()
        {
            // Atlantiss Characters Updates
            // ---------------------------------
            string path_A = "ACORE3/updates/characters";
            if (!Directory.Exists(path_A))
            {
                Console.WriteLine("Atlanitiss Characters Directory (ACORE3/updates/characters) Not Found");
                return;
            }

            Dictionary<float, string> Data_A = new Dictionary<float, string>();

            Regex Regex_A = new Regex(@"(?<number>\d{1,4})_(?<title>.*)");
            DirectoryInfo dirA = new DirectoryInfo(path_A);
            FileInfo[] FilesA = dirA.GetFiles("*.sql");
            Console.WriteLine("Atlantiss Characters Updates generate, found files: {0}", FilesA.Count());

            foreach (FileInfo fileA in FilesA)
            {
                Match dataA = Regex_A.Match(fileA.Name);
                float keyA = Convert.ToSingle(dataA.Groups["number"].Value);

                while (true)
                {
                    if (Data_A.ContainsKey(keyA))
                        keyA += 0.01f;
                    else
                        break;
                }

                StringBuilder tmpA = new StringBuilder();
                tmpA.AppendFormat("-- @FILE: {0:S}", fileA.Name);
                tmpA.AppendLine();
                using (StreamReader f = fileA.OpenText())
                {
                    string l;
                    while ((l = f.ReadLine()) != null)
                        tmpA.AppendLine(l);
                }

                Data_A[keyA] = tmpA.ToString();
            }

            StringBuilder outputA = new StringBuilder();
            outputA.AppendFormat("-- Atlantiss Characters Sql updates: {0:S} files", FilesA.Count().ToString());
            outputA.AppendLine();
            outputA.AppendLine("-- ------------------------------------ ");
            outputA.AppendLine(); outputA.AppendLine();

            List<float> keysA = new List<float>(Data_A.Keys);
            keysA.Sort();
            foreach (float keyA in keysA)
            {
                outputA.AppendLine(Data_A[keyA].ToString());
            }

            using (StreamWriter f = new StreamWriter("Atlantiss_characters_updates.sql"))
            {
                f.Write(outputA.ToString());
            }
        }

        static void AtlantissAuth()
        {
            // Atlantiss Auth Updates
            // ---------------------------------
            string path_A = "ACORE3/updates/auth";
            if (!Directory.Exists(path_A))
            {
                Console.WriteLine("Atlanitiss Auth Directory (ACORE3/updates/auth) Not Found");
                return;
            }

            Dictionary<float, string> Data_A = new Dictionary<float, string>();

            Regex Regex_A = new Regex(@"(?<number>\d{1,4})_(?<title>.*)");
            DirectoryInfo dirA = new DirectoryInfo(path_A);
            FileInfo[] FilesA = dirA.GetFiles("*.sql");
            Console.WriteLine("Atlantiss Auth Updates generate, found files: {0}", FilesA.Count());

            foreach (FileInfo file in FilesA)
            {
                Match dataA = Regex_A.Match(file.Name);
                float keyA = Convert.ToSingle(dataA.Groups["number"].Value);

                while (true)
                {
                    if (Data_A.ContainsKey(keyA))
                        keyA += 0.01f;
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

                Data_A[keyA] = tmp.ToString();
            }

            StringBuilder outputA = new StringBuilder();

            outputA.AppendFormat("-- Atlantiss Auth Sql updates: {0:S} files", FilesA.Count().ToString());
            outputA.AppendLine();
            outputA.AppendLine("-- ------------------------------------ ");
            outputA.AppendLine(); outputA.AppendLine();

            List<float> keysA = new List<float>(Data_A.Keys);
            keysA.Sort();
            foreach (float key in keysA)
            {
                outputA.AppendLine(Data_A[key].ToString());
            }

            using (StreamWriter f = new StreamWriter("Atlantiss_auth_updates.sql"))
            {
                f.Write(outputA.ToString());
            }
        }

        static void SkyfireWorld()
        {
            /// Skyfire World Updates
            // ---------------------------------
            string path_A = "updates/world";
            if (!Directory.Exists(path_A))
            {
                Console.WriteLine("Skyfire World Directory (updates/world) Not Found");
                return;
            }

            Dictionary<float, string> Data_A = new Dictionary<float, string>();

            Regex Regex_A = new Regex(@"(?<number>\d{1,4})_(?<title>.*)");
            DirectoryInfo dirA = new DirectoryInfo(path_A);
            FileInfo[] FilesA = dirA.GetFiles("*.sql");
            Console.WriteLine("Skyfire World Updates generate, found files: {0}", FilesA.Count());

            foreach (FileInfo file in FilesA)
            {
                Match dataA = Regex_A.Match(file.Name);
                float keyA = Convert.ToSingle(dataA.Groups["number"].Value);

                while (true)
                {
                    if (Data_A.ContainsKey(keyA))
                        keyA += 0.01f;
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

                Data_A[keyA] = tmp.ToString();
            }

            StringBuilder outputA = new StringBuilder();

            outputA.AppendFormat("-- Skyfire World Sql updates: {0:S} files", FilesA.Count().ToString());
            outputA.AppendLine();
            outputA.AppendLine("-- ------------------------------------ ");
            outputA.AppendLine(); outputA.AppendLine();

            List<float> keysA = new List<float>(Data_A.Keys);
            keysA.Sort();
            foreach (float key in keysA)
            {
                outputA.AppendLine(Data_A[key].ToString());
            }

            using (StreamWriter f = new StreamWriter("Skyfire_world_updates.sql"))
            {
                f.Write(outputA.ToString());
            }
        }

        static void SkyfireCharacters()
        {
            /// Skyfire Characters Updates
            // ---------------------------------
            string path_A = "updates/characters";
            
            if (!Directory.Exists(path_A))
            {
                Console.WriteLine("Skyfire Characters Directory (updates/characters) Not Found");
                return;
            }
            Dictionary<float, string> Data_A = new Dictionary<float, string>();

            Regex Regex_A = new Regex(@"(?<number>\d{1,4})_(?<title>.*)");
            DirectoryInfo dirA = new DirectoryInfo(path_A);
            FileInfo[] FilesA = dirA.GetFiles("*.sql");
            Console.WriteLine("Skyfire Characters Updates generate, found files: {0}", FilesA.Count());

            foreach (FileInfo file in FilesA)
            {
                Match dataA = Regex_A.Match(file.Name);
                float keyA = Convert.ToSingle(dataA.Groups["number"].Value);

                while (true)
                {
                    if (Data_A.ContainsKey(keyA))
                        keyA += 0.01f;
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

                Data_A[keyA] = tmp.ToString();
            }

            StringBuilder outputA = new StringBuilder();

            outputA.AppendFormat("-- Skyfire Characters Sql updates: {0:S} files", FilesA.Count().ToString());
            outputA.AppendLine();
            outputA.AppendLine("-- ------------------------------------ ");
            outputA.AppendLine(); outputA.AppendLine();

            List<float> keysA = new List<float>(Data_A.Keys);
            keysA.Sort();
            foreach (float key in keysA)
            {
                outputA.AppendLine(Data_A[key].ToString());
            }

            using (StreamWriter f = new StreamWriter("Skyfire_characters_updates.sql"))
            {
                f.Write(outputA.ToString());
            }
        }

        static void SkyfireAuth()
        {
            /// Skyfire Auth Updates
            // ---------------------------------
            string path_A = "updates/auth";
            if (!Directory.Exists(path_A))
            {
                Console.WriteLine("Skyfire Auth Directory (updates/auth) Not Found");
                return;
            }

            Dictionary<float, string> Data_A = new Dictionary<float, string>();

            Regex Regex_A = new Regex(@"(?<number>\d{1,4})_(?<title>.*)");
            DirectoryInfo dirA = new DirectoryInfo(path_A);
            FileInfo[] FilesA = dirA.GetFiles("*.sql");
            Console.WriteLine("Skyfire Auth Updates generate, found files: {0}", FilesA.Count());

            foreach (FileInfo file in FilesA)
            {
                Match dataA = Regex_A.Match(file.Name);
                float keyA = Convert.ToSingle(dataA.Groups["number"].Value);

                while (true)
                {
                    if (Data_A.ContainsKey(keyA))
                        keyA += 0.01f;
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

                Data_A[keyA] = tmp.ToString();
            }

            StringBuilder outputA = new StringBuilder();

            outputA.AppendFormat("-- Skyfire Auth Sql updates: {0:S} files", FilesA.Count().ToString());
            outputA.AppendLine();
            outputA.AppendLine("-- ------------------------------------ ");
            outputA.AppendLine(); outputA.AppendLine();

            List<float> keysA = new List<float>(Data_A.Keys);
            keysA.Sort();
            foreach (float key in keysA)
            {
                outputA.AppendLine(Data_A[key].ToString());
            }

            using (StreamWriter f = new StreamWriter("Skyfire_auth_updates.sql"))
            {
                f.Write(outputA.ToString());
            }
        }
    }
}
