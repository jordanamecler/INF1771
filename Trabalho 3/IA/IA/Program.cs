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
        private static HashSet<string> _notImportantWords = new HashSet<string>(StringComparer.OrdinalIgnoreCase)
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

        static void Main(string[] args)
        {
            using (StreamWriter outputFile = new StreamWriter("C:\\Users\\jordana\\Documents\\INF1771\\Trabalho 3\\outputIA.arff", true))
            {
                foreach (string file in Directory.GetFiles("C:\\Users\\jordana\\Desktop\\Arquivos_ia\\IA\\movie_review_dataset\\part2\\pos", "*.txt"))
                {
                    using (StreamReader inputFile = new StreamReader (file))
                    {
                        string line;
                        string newLine = "";
                        while ((line = inputFile.ReadLine()) != null)
                        {
                            string[] words = line.Split(' ');
                            newLine += "\"";
                            foreach (string word in words)
                            {
                                string newWord = RemoveDiacritics(word);
                                newWord = newWord.Replace ("\"", "");
                                if (!_notImportantWords.Contains(newWord))
                                {
                                    newLine += (newWord + " ");
                                }
                            }
                            newLine = newLine.Remove (newLine.Length - 1);
                            newLine += "\", p";
                            outputFile.WriteLine (newLine);
                        }
                    }
                }
            }
        }

        static string RemoveDiacritics (string text)
        {
            var normalizedString = text.Normalize(NormalizationForm.FormD);
            var stringBuilder = new StringBuilder();

            foreach (var c in normalizedString)
            {
                var unicodeCategory = CharUnicodeInfo.GetUnicodeCategory(c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                {
                    stringBuilder.Append(c);
                }
            }

            return stringBuilder.ToString().Normalize(NormalizationForm.FormC);
        }
    }
}
