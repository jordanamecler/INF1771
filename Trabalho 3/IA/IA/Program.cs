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
        public  static List       <string>      _badReviews        = new List       <string>      ();
        public  static List       <string>      _goodReviews       = new List       <string>      ();
        public  static Dictionary <string, int> _topWords          = new Dictionary <string, int> ();
        public  static HashSet    <string>      _topKWords         = new HashSet    <string>      ();
        private static HashSet    <string>      _notImportantWords = new HashSet    <string>      (StringComparer.OrdinalIgnoreCase)
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
            "about", "a", "b",
            "c", "d", "e",
            "f", "g", "h",
            "j", "k", "l",
            "m", "n", "o",
            "p", "q", "r",
            "s", "t", "u",
            "w", "x", "y",
            "z", "one", "two",
            "three", "four", "five",
            "six", "seven", "eight",
            "nine", "ten", "zero",
            "this", "br", "with",
            "just", "be", "out",
            "film", "movie", "have",
            "an", "all", "has",
            "more", "some", "up",
            "been", "it's", "would",
            "time", "only", "had",
            "can", "there", "story",
            "were", "no", "see"
        };

        static void Main (string[] args)
        {
            Console.WriteLine ("Started at: " + DateTime.Now);

            // Removes crapy words from reviews and stores them in good/bad list
            FillsReviewsList ("neg");
            FillsReviewsList ("pos");

            // Fills dictionary with all words and its occurrencies
            FillsWordsDictionary ();

            // Fills HashSet with top Words
            GetsTopKWords ();

            WritesToArff ();

            Console.WriteLine ("Finished at: " + DateTime.Now);
        }

        public static void FillsReviewsList (string reviewType)
        {
            Console.WriteLine ("Started reading reviews");
            foreach (string file in Directory.GetFiles ("C:\\Users\\jordana\\Desktop\\Arquivos_ia\\IA\\movie_review_dataset\\part1\\" + reviewType, "*.txt"))
            {
                using (StreamReader inputFile = new StreamReader (file))
                {
                    string line;
                    string newLine = "";
                    while ((line = inputFile.ReadLine ()) != null)
                    {
                        string[] words = line.Split (' ');
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
                            newWord = newWord.Replace (">", "");
                            newWord = newWord.Replace ("<", "");
                            newWord = newWord.Replace ("-", "");
                            
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
            Console.WriteLine ("Ended reading reviews");
        }

        public static void FillsWordsDictionary ()
        {
            Console.WriteLine ("Started filling dictionary");
            foreach (string review in _badReviews)
            {
                string[] words = review.Split (' ');
                foreach (string word in words)
                {
                    if (_topWords.ContainsKey (word))
                    {
                        _topWords[word]++;
                    }
                    else
                    {
                        _topWords.Add (word, 1);
                    }
                }
            }

            foreach (string review in _goodReviews)
            {
                string[] words = review.Split (' ');
                foreach (string word in words)
                {
                    if (_topWords.ContainsKey (word))
                    {
                        _topWords[word]++;
                    }
                    else
                    {
                        _topWords.Add (word, 1);
                    }
                }
            }
            Console.WriteLine ("Ended filling dictionary");
        }

        public static void GetsTopKWords ()
        {
            var items = from pair in _topWords
                        orderby pair.Value descending
                        select pair;
            int count = 0;

            foreach (KeyValuePair <string, int> topWord in items)
            {
                if (count >= 20)
                {
                    break;
                }
                _topKWords.Add (topWord.Key);
                count++;
            }

            _topWords.Clear ();
        }

        public static void WritesToArff ()
        {
            Console.WriteLine ("Started writing arff file");
            using (StreamWriter outputFile = new StreamWriter ("C:\\Users\\jordana\\Documents\\INF1771\\Trabalho 3\\outputFile.arff", false))
            {
                int count = 0;
                outputFile.WriteLine ("@relation imdb");
                outputFile.WriteLine ("");

                foreach (string word in _topKWords)
                {
                    outputFile.WriteLine ("@attribute " + word + " real");
                }

                outputFile.WriteLine ("@attribute class {p, n}");
                outputFile.WriteLine ("@data");
                outputFile.WriteLine ("");

                foreach (string review in _badReviews)
                {
                    string[] words = review.Split (' ');

                    foreach (string topWord in _topKWords)
                    {
                        foreach (string word in words)
                        {
                            if (word.Equals (topWord, StringComparison.InvariantCultureIgnoreCase))
                            {
                                count++;
                            }
                        }
                        outputFile.Write (count + ", ");
                        count = 0;
                    }
                    outputFile.Write ("n");
                    outputFile.Write ("\n");
                }

                _badReviews.Clear ();

                count = 0;
                foreach (string review in _goodReviews)
                {
                    string[] words = review.Split (' ');

                    foreach (string topWord in _topKWords)
                    {
                        foreach (string word in words)
                        {
                            if (word.Equals (topWord, StringComparison.InvariantCultureIgnoreCase))
                            {
                                count++;
                            }
                        }
                        outputFile.Write (count + ", ");
                        count = 0;
                    }
                    outputFile.Write ("p");
                    outputFile.Write ("\n");
                }

                _goodReviews.Clear ();
                _topKWords.Clear();
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
