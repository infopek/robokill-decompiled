package Tools
{
   public class HumanReadable
   {
      public function HumanReadable()
      {
         super();
      }

      public static function combineSentences(sentences:Array, appendPeriod:Boolean = true):String
      {
         var filtered:Array = [];
         for (var i:int = 0; i < sentences.length; i++)
         {
            if (sentences[i] != "")
            {
               filtered.push(sentences[i]);
            }
         }

         var combined:String = "";
         for (var j:int = 0; j < filtered.length; j++)
         {
            combined += filtered[j];
            if (j != filtered.length - 1)
            {
               combined += ", ";
            }
         }

         if (appendPeriod && filtered.length > 0)
         {
            combined += ".";
         }

         return combined;
      }

      public static function padInteger(value:int, digits:int = 8):String
      {
         var str:String = String(value);
         while (str.length < digits)
         {
            str = "0" + str;
         }
         return str;
      }

      public static function splitIntoLines(text:String, delimiter:String, maxLineLength:int, maxLines:int = -1):Array
      {
         var lines:Array = [];
         if (maxLines > 0)
         {
            for (var i:int = 0; i < maxLines; i++)
            {
               lines[i] = "";
            }
         }

         var tokens:Array = text.split(delimiter);
         var currentLine:int = 0;

         for (var j:int = 0; j < tokens.length; j++)
         {
            var currentLength:int = lines[currentLine] ? lines[currentLine].length : 0;

            if (currentLength > 0 && (currentLine < maxLines || maxLines == -1))
            {
               if (currentLength + tokens[j].length + tokens.length > maxLineLength)
               {
                  currentLine++;
               }
            }

            if (!(lines[currentLine] is String))
            {
               lines[currentLine] = "";
            }

            lines[currentLine] += tokens[j];

            if (j < tokens.length - 1)
            {
               lines[currentLine] += delimiter;
            }
         }

         return lines;
      }

      public static function truncateFloat(number:Number, precision:int = 2):String
      {
         var numStr:String = String(number);
         var integerPart:String = numStr.split(".")[0];
         var decimalPart:String = numStr.split(".")[1];

         if (decimalPart)
         {
            if (decimalPart.length > precision)
            {
               decimalPart = decimalPart.substr(0, precision);
            }
         }

         var result:String = integerPart;
         if (decimalPart && decimalPart.length > 0)
         {
            result += "." + decimalPart;
         }

         return result;
      }

      public static function formatInteger(value:int):String
      {
         var str:String = String(value);
         var formatted:String = "";

         for (var i:int = 0; i < str.length; i++)
         {
            formatted = str.substring(str.length - i - 1, str.length - i) + formatted;
            if (i % 3 == 2 && i < str.length - 1)
            {
               formatted = "," + formatted;
            }
         }

         return formatted;
      }
   }
}
