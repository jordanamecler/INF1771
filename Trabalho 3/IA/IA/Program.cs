using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IA
{
    class Program
    {
        public static List <string>     _badReviews        = new List <string> ();
        public static List <string>     _goodReviews       = new List <string> ();
        private static HashSet <string> _notImportantWords = new HashSet <string> (StringComparer.OrdinalIgnoreCase)
        {
            ".", ",", "and",
            "i", "it", "for",
            "am", "is", "are",
            "was", "me", "you",
            "he", "she", "we",
            "they", "him", "her",
            "us", "them", "my",
            "your", "his", "its",
            "our", "your", "their",
            "mine", "yours", "hers",
            "ours", "theirs", "myself",
            "yourself", "himself", "herself",
            "itself", "ourselves", "yourselves",
            "themselves",
            "nor", "but", "or",
            "yet", "so", "though",
            "although", "while", "if",
            "unless", "until", "even",
            "lest", "than", "rather",
            "whether", "as", "whereas",
            "after", "soon", "before",
            "by", "the", "now",
            "once", "since", "till",
            "until", "when", "whenever",
            "that", "what", "whatever",
            "which", "whichever", "who",
            "whoever", "whom", "whomever",
            "whose", "because", "since",
            "why", "how", "where",
            "wherever", "also", "besides",
            "furthermore", "likewise", "moreover",
            "however", "nevertheless", "nonetheless",
            "still", "conversely", "instead",
            "otherwise", "rather", "accordingly",
            "consequently", "hence", "meanwhile",
            "then", "therefore", "thus",
            "on", "in", "at",
            "since", "ago", "before",
            "to", "past", "next",
            "across", "through", "to",
            "into", "towards", "onto",
            "from", "of", "off",
            "about"
        };

        static void Main (string[] args)
        {
            Console.WriteLine ("Started at: " + DateTime.Now);

            // Removes crapy words from reviews and stores them in good/bad list
            FillsReviewsList ("neg");
            FillsReviewsList ("pos");

            Console.WriteLine ("Finished at: " + DateTime.Now);
        }

        public static void FillsReviewsList (string reviewType)
        {
            foreach (string file in Directory.GetFiles ("C:\\Users\\jordana\\Desktop\\Arquivos_ia\\IA\\movie_review_dataset\\part1\\" + reviewType, "*.txt"))
            {
                using (StreamReader inputFile = new StreamReader (file))
                {
                    string line;
                    string newLine = "";
                    while ((line = inputFile.ReadLine ()) != null)
                    {
                        string[] words = line.Split (' ');
                        newLine += "\"";
                        foreach (string word in words)
                        {
                            string newWord = RemoveDiacritics (word);
                            newWord = newWord.Replace ("\"", "");
                            newWord = newWord.Replace (".", "");
                            newWord = newWord.Replace (",", "");
                            newWord = newWord.Replace (":", "");
                            newWord = newWord.Replace ("!", "");
                            newWord = newWord.Replace ("?", "");
                            newWord = newWord.Replace ("/", "");
                            newWord = newWord.Replace ("*", "");
                            newWord = newWord.Replace ("%", "");
                            newWord = newWord.Replace ("&", "");
                            newWord = newWord.Replace ("@", "");
                            newWord = newWord.Replace ("$", "");
                            if (!_notImportantWords.Contains (newWord))
                            {
                                newLine += (newWord + " ");
                            }
                        }
                        newLine = newLine.Remove (newLine.Length - 1);
                        if (reviewType == "neg")
                        {
                            _badReviews.Add (newLine);
                        }
                        else
                        {
                            _goodReviews.Add (newLine);
                        }
                    }
                }
            }
        }

        public static void FillsGoodReviewsList ()
        {
            foreach (string file in Directory.GetFiles ("C:\\Users\\jordana\\Desktop\\Arquivos_ia\\IA\\movie_review_dataset\\part1\\pos", "*.txt"))
            {
                using (StreamReader inputFile = new StreamReader (file))
                {
                    string line;
                    string newLine = "";
                    while ((line = inputFile.ReadLine ()) != null)
                    {
                        string[] words = line.Split (' ');
                        newLine += "\"";
                        foreach (string word in words)
                        {
                            string newWord = RemoveDiacritics (word);
                            newWord = newWord.Replace ("\"", "");
                            newWord = newWord.Replace (".", "");
                            newWord = newWord.Replace (",", "");
                            newWord = newWord.Replace (":", "");
                            newWord = newWord.Replace ("!", "");
                            newWord = newWord.Replace ("?", "");
                            newWord = newWord.Replace ("/", "");
                            newWord = newWord.Replace ("*", "");
                            newWord = newWord.Replace ("%", "");
                            newWord = newWord.Replace ("&", "");
                            newWord = newWord.Replace ("@", "");
                            newWord = newWord.Replace ("$", "");
                            if (!_notImportantWords.Contains (newWord))
                            {
                                newLine += (newWord + " ");
                            }
                        }
                        newLine = newLine.Remove (newLine.Length - 1);
                        _goodReviews.Add (newLine);
                    }
                }
            }
        }
        static string RemoveDiacritics (string text)
        {
            var normalizedString = text.Normalize (NormalizationForm.FormD);
            var stringBuilder = new StringBuilder ();

            foreach (var c in normalizedString)
            {
                var unicodeCategory = CharUnicodeInfo.GetUnicodeCategory (c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                {
                    stringBuilder.Append (c);
                }
            }

            return stringBuilder.ToString ().Normalize (NormalizationForm.FormC);
        }
    }
}
