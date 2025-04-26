package Levels
{
   import Tools.Debug;

   public class mainGameLevels
   {
      public function mainGameLevels()
      {
         super();
      }
      
      public static function init(missionNum:int, param2:int, param3:int) : Array
      {
         if(missionNum == 0)
         {
            if(param2 == 3 && param3 == -2)
            {
               return [[new decalSet(),12,0.5,0.5],[new defaultSet(),12,0.632843733,0.409098864],[new defaultSet(),12,0.566187382,0.50000751],[new defaultSet(),12,0.632843733,0.590916157],[new defaultSet(),12,0.699499846,0.50000751],[new defaultSet(),11,0.89946866,0.50000751]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),13,0.5,0.5],[new defaultSet(),4,0.499687672,0.136353731],[new defaultSet(),4,0.499687672,0.227262259]];
            }
            if(param2 == -1 && param3 == 1)
            {
               return [[new decalSet(),16,0.5,0.5],[new defaultSet(),2,0.100218773,0.227270007],[new defaultSet(),2,0.100218773,0.772722483],[new defaultSet(),11,0.633468747,0.227270603],[new defaultSet(),11,0.633468747,0.772722483],[new defaultSet(),12,0.433499992,0.136361241],[new defaultSet(),12,0.433499992,0.863631129]];
            }
            if(param2 == 2 && param3 == -1)
            {
               return [[new decalSet(),11,0.5,0.5],[new defaultSet(),2,0.166406155,0.681825042],[new defaultSet(),2,0.899625063,0.681825042],[new defaultSet(),12,0.433031321,0.136368811],[new defaultSet(),12,0.632999897,0.136368811],[new defaultSet(),13,0.166406155,0.318186164],[new defaultSet(),13,0.899625063,0.318186164],[new defaultSet(),0,0.499687672,0.136368811],[new defaultSet(),0,0.566343784,0.136368811],[new defaultSet(),0,0.166406155,0.409094989],[new defaultSet(),0,0.899625063,0.409094989]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),14,0.5,0.5],[new defaultSet(),2,0.166093826,0.772718906],[new defaultSet(),2,0.832655907,0.772718906],[new defaultSet(),4,0.299406052,0.772718906],[new defaultSet(),4,0.699343681,0.772718906],[new defaultSet(),4,0.632687569,0.863627672],[new defaultSet(),4,0.566031456,0.863627672],[new defaultSet(),4,0.499375343,0.863627672],[new defaultSet(),4,0.432718754,0.863627672],[new defaultSet(),4,0.366062641,0.863627672],[new defaultSet(),12,0.166093826,0.499992609],[new defaultSet(),12,0.832655907,0.499992609],[new defaultSet(),12,0.765999794,0.318175077],[new defaultSet(),12,0.232749939,0.318175077],[new defaultSet(),12,0.499375343,0.681809902]];
            }
            if(param2 == 5 && param3 == -5)
            {
               return [[new decalSet(),17,0.5,0.5],[new defaultSet(),13,0.432562828,0.500018597],[new defaultSet(),13,0.565875053,0.500018597],[new defaultSet(),2,0.699187279,0.500018597],[new defaultSet(),2,0.299250126,0.500018597],[new defaultSet(),0,0.432562828,0.227292538],[new defaultSet(),0,0.565875053,0.227292538],[new defaultSet(),0,0.499218941,0.318201065],[new propertiesSet(),3,0.499218941,0.500018597]];
            }
            if(param2 == 5 && param3 == 1)
            {
               return [[new decalSet(),15,0.5,0.5],[new defaultSet(),2,0.832499981,0.227270007],[new defaultSet(),2,0.832499981,0.772722483],[new defaultSet(),11,0.832499981,0.681813836],[new defaultSet(),11,0.832499981,0.318178773],[new defaultSet(),12,0.499218941,0.136361241],[new defaultSet(),12,0.499218941,0.863631129],[new defaultSet(),13,0.632531166,0.863631129],[new defaultSet(),13,0.632531166,0.136361241],[new defaultSet(),10,0.832499981,0.499996305],[new defaultSet(),12,0.699187279,0.409087539],[new defaultSet(),12,0.699187279,0.590904951]];
            }
            if(param2 == 3 && param3 == 1)
            {
               return [[new decalSet(),12,0.5,0.5],[new defaultSet(),8,0.832812548,0.499996305],[new defaultSet(),12,0.499531269,0.409086108],[new defaultSet(),12,0.499531269,0.590907454],[new defaultSet(),20,0.432875156,0.318178773],[new defaultSet(),18,0.432875156,0.681813836]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),4,0.5,0.5],[new defaultSet(),2,0.233062506,0.227268457],[new defaultSet(),2,0.766312361,0.227268457],[new defaultSet(),4,0.166406155,0.409087539],[new defaultSet(),4,0.366374969,0.409087539],[new defaultSet(),4,0.632999897,0.409087539],[new defaultSet(),4,0.832968712,0.409087539],[new defaultSet(),4,0.166406155,0.590904951],[new defaultSet(),4,0.366374969,0.590904951],[new defaultSet(),4,0.632999897,0.590904951],[new defaultSet(),4,0.832968712,0.590904951],[new defaultSet(),4,0.433031321,0.227270007],[new defaultSet(),4,0.566343784,0.227270007],[new defaultSet(),28,0.166406155,0.863631129],[new propertiesSet(),5,0.366374969,0.772722483]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),1,0.5,0.5],[new defaultSet(),4,0.499687672,0.409083843],[new defaultSet(),4,0.233062506,0.227266073],[new defaultSet(),4,0.699656248,0.227266073],[new defaultSet(),4,0.166406155,0.499992609],[new defaultSet(),4,0.832968712,0.499992609]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),2,0.5,0.5],[new defaultSet(),2,0.166718751,0.227270007],[new defaultSet(),2,0.166718751,0.772722483],[new defaultSet(),8,0.300031245,0.318178773],[new defaultSet(),8,0.300031245,0.681813836],[new defaultSet(),11,0.5,0.227270007],[new defaultSet(),11,0.5,0.772722483],[new defaultSet(),13,0.566656232,0.409087539],[new defaultSet(),13,0.566656232,0.590904951],[new defaultSet(),13,0.5,0.409087539],[new defaultSet(),13,0.5,0.590904951],[new defaultSet(),13,0.433343738,0.409087539],[new defaultSet(),13,0.433343738,0.590904951],[new defaultSet(),13,0.633312523,0.409087539],[new defaultSet(),13,0.633312523,0.590904951],[new propertiesSet(),5,0.433343738,0.227270007],[new defaultSet(),28,0.766624987,0.590904951]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),4,0.5,0.5],[new defaultSet(),4,0.300031245,0.954543769],[new defaultSet(),4,0.833281279,0.863635004],[new defaultSet(),4,0.5,0.590908766],[new defaultSet(),2,0.5,0.227273747],[new defaultSet(),2,0.100062512,0.5],[new defaultSet(),2,0.89993751,0.5],[new defaultSet(),4,0.89993751,0.0454562493],[new defaultSet(),4,0.166718751,0.0454562493],[new defaultSet(),8,0.5,0.318182498],[new defaultSet(),11,0.166718751,0.409091264],[new defaultSet(),11,0.166718751,0.590908766],[new defaultSet(),12,0.699968755,0.136364996],[new defaultSet(),12,0.233374998,0.136364996],[new defaultSet(),12,0.833281279,0.136364996],[new defaultSet(),12,0.166718751,0.136364996]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),14,0.5,0.5],[new propertiesSet(),1,0.492773443,0.237760305],[new defaultSet(),5,0.5,0.499992609],[new defaultSet(),13,0.300031245,0.681809902],[new defaultSet(),13,0.366687506,0.772718906],[new defaultSet(),13,0.633312523,0.772718906],[new defaultSet(),13,0.699968755,0.681809902],[new defaultSet(),13,0.833281279,0.499992609],[new defaultSet(),13,0.233374998,0.409083843],[new defaultSet(),13,0.100062512,0.499992609],[new defaultSet(),13,0.0334062576,0.590901136],[new defaultSet(),13,0.366687506,0.590901136],[new defaultSet(),13,0.5,0.681809902],[new defaultSet(),13,0.633312523,0.499992609],[new defaultSet(),13,0.699968755,0.409083843],[new defaultSet(),13,0.766624987,0.590901136],[new defaultSet(),13,0.89993751,0.590901136],[new defaultSet(),12,0.566656232,0.681809902],[new defaultSet(),12,0.166718751,0.590901136],[new defaultSet(),12,0.766624987,0.863627672],[new defaultSet(),12,0.300031245,0.409083843]];
            }
            if(param2 == 6 && param3 == -2)
            {
               return [[new decalSet(),14,0.5,0.5],[new propertiesSet(),1,0.493750095,0.5078125],[new defaultSet(),5,0.499062538,0.50000751],[new defaultSet(),12,0.565718651,0.681825042],[new defaultSet(),12,0.565718651,0.772733808],[new defaultSet(),12,0.565718651,0.318189979],[new defaultSet(),12,0.565718651,0.227281213],[new defaultSet(),11,0.432406425,0.409098864],[new defaultSet(),11,0.432406425,0.50000751],[new defaultSet(),11,0.432406425,0.590916157],[new defaultSet(),13,0.432406425,0.136372328],[new defaultSet(),13,0.432406425,0.227281213],[new defaultSet(),13,0.365750313,0.227281213],[new defaultSet(),13,0.365750313,0.136372328],[new defaultSet(),13,0.365750313,0.772733808],[new defaultSet(),13,0.365750313,0.863642454],[new defaultSet(),13,0.432406425,0.863642454],[new defaultSet(),13,0.432406425,0.772733808],[new defaultSet(),10,0.765687466,0.50000751]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),7,0.5,0.5],[new defaultSet(),2,0.166718751,0.136368811],[new defaultSet(),2,0.833281279,0.136368811],[new defaultSet(),4,0.166718751,0.500005782],[new defaultSet(),4,0.833281279,0.500006855],[new defaultSet(),0,0.300031245,0.227276385],[new defaultSet(),0,0.633312523,0.227277517],[new defaultSet(),8,0.5,0.31818974],[new defaultSet(),10,0.233374998,0.136371374],[new defaultSet(),19,0.166718751,0.2272802],[new defaultSet(),18,0.833281279,0.2272802]];
            }
            if(param2 == 5 && param3 == -4)
            {
               return [[new decalSet(),1,0.5,0.5],[new defaultSet(),2,0.099281311,0.136375904],[new defaultSet(),2,0.832499981,0.136375904],[new defaultSet(),2,0.099281311,0.863650084],[new defaultSet(),2,0.832499981,0.863652468],[new defaultSet(),11,0.232594013,0.318197727],[new defaultSet(),11,0.699187279,0.318197727],[new defaultSet(),13,0.299250126,0.318197727],[new defaultSet(),13,0.632531166,0.318197727],[new defaultSet(),13,0.632531166,0.409106255],[new defaultSet(),13,0.299250126,0.409106255],[new defaultSet(),13,0.365906239,0.318197727],[new defaultSet(),13,0.365906239,0.409106255],[new defaultSet(),13,0.565875053,0.409106255],[new defaultSet(),13,0.565875053,0.318197727],[new defaultSet(),13,0.699187279,0.409106255],[new defaultSet(),13,0.232594013,0.409106255],[new defaultSet(),18,0.699187279,0.863650084],[new defaultSet(),18,0.165937424,0.863650084],[new defaultSet(),19,0.232594013,0.863650084]];
            }
            if(param2 == 5 && param3 == -3)
            {
               return [[new decalSet(),13,0.5,0.5],[new defaultSet(),4,0.499218941,0.227284908],[new defaultSet(),4,0.499218941,0.40910244],[new defaultSet(),4,0.432562828,0.136378288],[new propertiesSet(),1,0.499218941,0.318193913],[new defaultSet(),8,0.499218941,0.227284908],[new defaultSet(),13,0.432562828,0.500011206],[new defaultSet(),13,0.499218941,0.500011206],[new defaultSet(),13,0.565875053,0.500011206],[new defaultSet(),13,0.565875053,0.590919971],[new defaultSet(),13,0.499218941,0.590919971],[new defaultSet(),13,0.432562828,0.590919971]];
            }
            if(param2 == 5 && param3 == -2)
            {
               return [[new decalSet(),6,0.5,0.5],[new defaultSet(),4,0.499218941,0.318189979],[new defaultSet(),4,0.499218941,0.227280736],[new defaultSet(),4,0.832499981,0.681825042],[new defaultSet(),4,0.832499981,0.863642454],[new defaultSet(),2,0.565875053,0.863642454],[new defaultSet(),2,0.499218941,0.136372328],[new defaultSet(),10,0.832499981,0.50000751],[new defaultSet(),12,0.432562828,0.863642454],[new defaultSet(),12,0.765843391,0.681825042],[new defaultSet(),13,0.699187279,0.772733808],[new defaultSet(),13,0.765843391,0.50000751],[new defaultSet(),13,0.432562828,0.227281213],[new defaultSet(),13,0.565875053,0.227281213],[new defaultSet(),28,0.232594013,0.863642454],[new propertiesSet(),5,0.499218941,0.681825042]];
            }
            if(param2 == 4 && param3 == -2)
            {
               return [[new decalSet(),9,0.5,0.5],[new propertiesSet(),1,0.484570503,0.508072972],[new defaultSet(),2,0.499375343,0.136372328],[new defaultSet(),2,0.899312496,0.50000751],[new defaultSet(),12,0.699343681,0.50000751],[new defaultSet(),12,0.566031456,0.50000751],[new defaultSet(),12,0.499375343,0.318189979],[new defaultSet(),12,0.499375343,0.681825042],[new defaultSet(),18,0.432718754,0.227281213],[new defaultSet(),19,0.432718754,0.772733808]];
            }
            if(param2 == 2 && param3 == -2)
            {
               return [[new decalSet(),3,0.5,0.5],[new defaultSet(),2,0.166406155,0.500009894],[new defaultSet(),2,0.166406155,0.136375904],[new defaultSet(),2,0.832968712,0.136375904],[new defaultSet(),2,0.699656248,0.136375904],[new defaultSet(),2,0.166406155,0.318191051],[new defaultSet(),10,0.499687672,0.136372328],[new defaultSet(),13,0.233062506,0.227281213],[new defaultSet(),13,0.766312361,0.59091568],[new defaultSet(),13,0.766312361,0.772729993],[new defaultSet(),13,0.832968712,0.50000906],[new defaultSet(),21,0.233062506,0.681825042],[new defaultSet(),28,0.899625063,0.772733808],[new propertiesSet(),5,0.499687672,0.681825042]];
            }
            if(param2 == 4 && param3 == 0)
            {
               return [[new decalSet(),2,0.5,0.5],[new defaultSet(),13,0.166093826,0.409091264],[new defaultSet(),13,0.299406052,0.409091264],[new defaultSet(),13,0.232749939,0.5],[new defaultSet(),13,0.632687569,0.409091264],[new defaultSet(),13,0.765999794,0.409091264],[new defaultSet(),13,0.699343681,0.5],[new defaultSet(),13,0.166093826,0.136364996],[new defaultSet(),13,0.299406052,0.136364996],[new defaultSet(),13,0.699343681,0.136364996],[new defaultSet(),13,0.832655907,0.136364996],[new defaultSet(),13,0.832655907,0.227273747],[new defaultSet(),13,0.899312496,0.318182498],[new defaultSet(),13,0.0994372368,0.227273747],[new defaultSet(),13,0.0994372368,0.5],[new defaultSet(),13,0.499375343,0.227273747],[new defaultSet(),13,0.366062641,0.318182498],[new defaultSet(),13,0.699343681,0.318182498],[new defaultSet(),13,0.832655907,0.590908766],[new defaultSet(),13,0.432718754,0.409091264],[new defaultSet(),13,0.166093826,0.590908766],[new defaultSet(),13,0.0994372368,0.681817472],[new defaultSet(),17,0.566031456
               ,0.5],[new defaultSet(),17,0.499375343,0.5],[new defaultSet(),17,0.432718754,0.5],[new defaultSet(),17,0.366062641,0.5],[new defaultSet(),17,0.632687569,0.5],[new defaultSet(),18,0.299406052,0.590908766],[new defaultSet(),18,0.699343681,0.590908766],[new defaultSet(),18,0.366062641,0.590908766],[new defaultSet(),18,0.632687569,0.590908766]];
            }
            if(param2 == 4 && param3 == 1)
            {
               return [[new decalSet(),9,0.5,0.5],[new defaultSet(),4,0.499375343,0.318178773],[new defaultSet(),4,0.499375343,0.681813836],[new defaultSet(),4,0.499375343,0.863631129],[new defaultSet(),4,0.499375343,0.136361241],[new defaultSet(),4,0.899312496,0.499996305],[new defaultSet(),4,0.832655907,0.499996305],[new defaultSet(),4,0.765999794,0.499996305],[new defaultSet(),11,0.432718754,0.227270007],[new defaultSet(),11,0.432718754,0.772722483],[new defaultSet(),28,0.166093826,0.499996305],[new propertiesSet(),5,0.499375343,0.409087539]];
            }
            if(param2 == 2 && param3 == 0)
            {
               return [[new decalSet(),13,0.5,0.5],[new propertiesSet(),1,0.493359327,0.477864593],[new defaultSet(),8,0.499687672,0.136364996],[new defaultSet(),13,0.499687672,0.318182498],[new defaultSet(),13,0.433031321,0.227273747],[new defaultSet(),13,0.566343784,0.227273747],[new defaultSet(),11,0.499687672,0.409091264]];
            }
            if(param2 == 1 && param3 == 1)
            {
               return [[new decalSet(),12,0.5,0.5],[new defaultSet(),4,0.499843836,0.499995351],[new defaultSet(),8,0.166562557,0.499996305],[new defaultSet(),12,0.433187485,0.772721529],[new defaultSet(),12,0.433187485,0.227266312]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),0,0.5,0.5],[new propertiesSet(),0,0.566343784,0.499985218],[new defaultSet(),28,0.499687672,0.499985218],[new defaultSet(),39,0.766312361,0.227261066],[new defaultSet(),40,0.766312361,0.227258682]];
            }
         }
         if(missionNum == 1)
         {
            if(param2 == 6 && param3 == 3)
            {
               return [[new decalSet(),29,0.5,0.5],[new defaultSet(),11,0.499062538,0.681806087],[new defaultSet(),11,0.499062538,0.318167686],[new defaultSet(),15,0.299093723,0.681802511],[new defaultSet(),15,0.699030876,0.409075975],[new propertiesSet(),5,0.499062538,0.136353731],[new defaultSet(),28,0.165781498,0.499988794]];
            }
            if(param2 == -2 && param3 == -2)
            {
               return [[new decalSet(),30,0.5,0.5],[new defaultSet(),16,0.500312448,0.681828141],[new defaultSet(),12,0.167031288,0.40909934],[new defaultSet(),12,0.167031288,0.500006199],[new defaultSet(),12,0.167031288,0.590914369],[new propertiesSet(),6,0.500312448,0.409098864]];
            }
            if(param2 == 3 && param3 == 3)
            {
               return [[new decalSet(),30,0.5,0.5],[new defaultSet(),2,0.499531269,0.499988794],[new defaultSet(),13,0.632843733,0.409079075],[new defaultSet(),13,0.566187382,0.409079075],[new defaultSet(),13,0.632843733,0.590900183],[new defaultSet(),13,0.566187382,0.590900183],[new defaultSet(),13,0.699499846,0.590899229],[new defaultSet(),13,0.699499846,0.409080029],[new defaultSet(),13,0.499531269,0.409080029],[new defaultSet(),13,0.499531269,0.59089756],[new defaultSet(),14,0.699499846,0.954534292],[new defaultSet(),14,0.699499846,0.0454423428]];
            }
            if(param2 == 5 && param3 == 3)
            {
               return [[new decalSet(),25,0.5,0.5],[new defaultSet(),15,0.499218941,0.318171263],[new defaultSet(),15,0.499218941,0.681806087]];
            }
            if(param2 == -3 && param3 == 1)
            {
               return [[new decalSet(),4,0.5,0.5],[new defaultSet(),24,0.500468731,0.772718668],[new propertiesSet(),3,0.500468731,0.681813836],[new defaultSet(),11,0.700437546,0.590904951],[new defaultSet(),11,0.633781195,0.590904951],[new defaultSet(),11,0.300500154,0.590904951],[new defaultSet(),11,0.367156267,0.590904951]];
            }
            if(param2 == 4 && param3 == 3)
            {
               return [[new decalSet(),27,0.5,0.5],[new defaultSet(),2,0.832655907,0.227262259],[new defaultSet(),2,0.832655907,0.863623857],[new defaultSet(),13,0.699343681,0.136353731],[new defaultSet(),13,0.632687569,0.227262259],[new defaultSet(),13,0.699343681,0.863623857],[new defaultSet(),13,0.765999794,0.499988794],[new defaultSet(),13,0.832655907,0.59089756],[new defaultSet(),13,0.899312496,0.681806087],[new defaultSet(),0,0.499375343,0.136353731],[new defaultSet(),28,0.499375343,0.772711992],[new propertiesSet(),5,0.499375343,0.227262259]];
            }
            if(param2 == 4 && param3 == 4)
            {
               return [[new decalSet(),28,0.5,0.5],[new defaultSet(),14,0.899312496,0.590893745],[new defaultSet(),14,0.899312496,0.227258682],[new defaultSet(),12,0.366062641,0.499985218],[new defaultSet(),12,0.366062641,0.590893745]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),28,0.5,0.5],[new defaultSet(),12,0.433343738,0.136357546],[new defaultSet(),12,0.566656232,0.136357546],[new defaultSet(),0,0.5,0.136357546],[new propertiesSet(),6,0.5,0.499992609]];
            }
            if(param2 == 4 && param3 == 5)
            {
               return [[new decalSet(),28,0.5,0.5],[new defaultSet(),14,0.0994372368,0.409072399],[new defaultSet(),14,0.899312496,0.409072399],[new defaultSet(),15,0.366062641,0.681798935],[new defaultSet(),15,0.632687569,0.681798935]];
            }
            if(param2 == -1 && param3 == -2)
            {
               return [[new decalSet(),27,0.5,0.5],[new defaultSet(),13,0.166875005,0.136372328],[new defaultSet(),13,0.100218773,0.227281213],[new defaultSet(),13,0.166875005,0.227281213],[new defaultSet(),13,0.233531296,0.318189979],[new defaultSet(),13,0.166875005,0.409098864],[new defaultSet(),13,0.100218773,0.681825042],[new defaultSet(),13,0.233531296,0.590916157],[new defaultSet(),13,0.233531296,0.681825042],[new defaultSet(),13,0.166875005,0.772733808],[new defaultSet(),13,0.300187469,0.772733808],[new defaultSet(),13,0.700125039,0.772733808],[new defaultSet(),13,0.833437502,0.590916157],[new defaultSet(),13,0.900093734,0.772733808],[new defaultSet(),13,0.833437502,0.772733808],[new defaultSet(),13,0.766781211,0.863642454],[new defaultSet(),13,0.766781211,0.227281213],[new defaultSet(),13,0.833437502,0.136372328],[new defaultSet(),13,0.900093734,0.227281213],[new defaultSet(),13,0.900093734,0.318189979],[new defaultSet(),13,0.766781211,0.409098864],[new defaultSet(),13,0.633468747,0.136372328]
               ,[new defaultSet(),13,0.500156224,0.13637495],[new defaultSet(),13,0.36684382,0.0454638004],[new defaultSet(),13,0.300187469,0.136372328],[new defaultSet(),13,0.300187469,0.227283716],[new defaultSet(),13,0.500156224,0.0454638004],[new defaultSet(),13,0.100218773,0.50000751],[new defaultSet(),13,0.900093734,0.409098864],[new defaultSet(),13,0.700125039,0.590916157],[new defaultSet(),17,0.566812515,0.227281213],[new defaultSet(),17,0.433499992,0.227281213],[new defaultSet(),17,0.433499992,0.772733808],[new defaultSet(),17,0.566812515,0.772733808]];
            }
            if(param2 == -1 && param3 == -1)
            {
               return [[new decalSet(),23,0.5,0.5],[new defaultSet(),17,0.433499992,0.409094989],[new defaultSet(),17,0.433499992,0.500003755],[new defaultSet(),17,0.433499992,0.590912461],[new defaultSet(),17,0.500156224,0.590912461],[new defaultSet(),17,0.566812515,0.409094989],[new defaultSet(),18,0.500156224,0.409094989],[new defaultSet(),18,0.500156224,0.500003755],[new defaultSet(),20,0.566812515,0.500003755],[new defaultSet(),18,0.566812515,0.590912461],[new defaultSet(),19,0.100218773,0.500003755],[new defaultSet(),19,0.900093734,0.500003755],[new defaultSet(),20,0.900093734,0.318186164],[new defaultSet(),15,0.900093734,0.136368811],[new defaultSet(),15,0.100218773,0.136368811],[new defaultSet(),4,0.166875005,0.318186164],[new defaultSet(),4,0.166875005,0.409094989],[new defaultSet(),4,0.166875005,0.500003755],[new defaultSet(),4,0.833437502,0.318186164],[new defaultSet(),4,0.833437502,0.409094989],[new defaultSet(),4,0.833437502,0.500003755],[new defaultSet(),13,0.433499992,0.136368811],[new defaultSet()
               ,13,0.566812515,0.0454599857],[new defaultSet(),13,0.36684382,0.0454599857],[new defaultSet(),13,0.700125039,0.136368811]];
            }
            if(param2 == -3 && param3 == -2)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),23,0.167187452,0.409098864],[new defaultSet(),20,0.300500154,0.318189979],[new defaultSet(),20,0.367156267,0.409098864],[new defaultSet(),18,0.300500154,0.409098864],[new defaultSet(),18,0.367156267,0.318189979],[new defaultSet(),22,0.233843565,0.681825042],[new defaultSet(),7,0.567124844,0.136372328],[new defaultSet(),7,0.567124844,0.863642454],[new defaultSet(),13,0.567124844,0.50000751],[new defaultSet(),13,0.700437546,0.50000751],[new defaultSet(),13,0.700437546,0.318189979],[new defaultSet(),13,0.700437546,0.681825042],[new defaultSet(),13,0.567124844,0.318189979],[new defaultSet(),13,0.567124844,0.681825042],[new defaultSet(),13,0.433812618,0.318189979],[new defaultSet(),13,0.433812618,0.50000751],[new defaultSet(),13,0.433812618,0.681825042],[new defaultSet(),13,0.633781195,0.590916157],[new defaultSet(),13,0.633781195,0.318189979],[new defaultSet(),13,0.167187452,0.772733808],[new defaultSet(),13,0.300500154,0.863642454],[new propertiesSet()
               ,5,0.500468731,0.318189979],[new defaultSet(),28,0.83375001,0.590916157]];
            }
            if(param2 == -3 && param3 == -1)
            {
               return [[new decalSet(),19,0.5,0.5],[new defaultSet(),15,0.633781195,0.772729993],[new defaultSet(),15,0.367156267,0.772729993],[new defaultSet(),4,0.367156267,0.590912461],[new defaultSet(),4,0.433812618,0.590912461],[new defaultSet(),4,0.500468731,0.590912461],[new defaultSet(),4,0.567124844,0.590912461],[new defaultSet(),4,0.633781195,0.590912461]];
            }
            if(param2 == -3 && param3 == 0)
            {
               return [[new decalSet(),21,0.5,0.5],[new defaultSet(),15,0.500468731,0.863635004],[new defaultSet(),15,0.83375001,0.5],[new defaultSet(),14,0.167187452,0.409091264]];
            }
            if(param2 == -2 && param3 == 0)
            {
               return [[new decalSet(),26,0.5,0.5],[new defaultSet(),5,0.233687639,0.318182498],[new defaultSet(),5,0.233687639,0.681817472],[new defaultSet(),16,0.233687639,0.318182498],[new defaultSet(),16,0.300343752,0.590908766],[new defaultSet(),16,0.233687639,0.954543769],[new defaultSet(),17,0.766937494,0.136364996],[new defaultSet(),17,0.700281382,0.863635004],[new defaultSet(),17,0.766937494,0.863635004],[new defaultSet(),17,0.700281382,0.136364996]];
            }
            if(param2 == 5 && param3 == 6)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),22,0.765843391,0.227251053],[new defaultSet(),23,0.832499981,0.863612175],[new defaultSet(),20,0.499218941,0.499977589],[new defaultSet(),18,0.565875053,0.499977589],[new defaultSet(),18,0.565875053,0.409068584],[new defaultSet(),18,0.432562828,0.409068584],[new defaultSet(),18,0.432562828,0.499977589],[new defaultSet(),19,0.499218941,0.409068584],[new defaultSet(),21,0.232594013,0.227251053],[new defaultSet(),15,0.499218941,0.136342525],[new defaultSet(),15,0.899156094,0.590886593],[new defaultSet(),2,0.899156094,0.318160057]];
            }
            if(param2 == 4 && param3 == 7)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),2,0.832655907,0.863612175],[new defaultSet(),2,0.166093826,0.863611221],[new defaultSet(),11,0.499375343,0.499973774],[new defaultSet(),15,0.232749939,0.499973774],[new defaultSet(),15,0.765999794,0.499973774],[new defaultSet(),21,0.499375343,0.40906477],[new defaultSet(),22,0.232749939,0.772702217],[new defaultSet(),17,0.765999794,0.227247715],[new defaultSet(),17,0.232749939,0.136338711]];
            }
            if(param2 == 4 && param3 == 6)
            {
               return [[new decalSet(),21,0.5,0.5],[new defaultSet(),21,0.699343681,0.499973774],[new defaultSet(),14,0.166093826,0.227251053],[new defaultSet(),14,0.166093826,0.772703648],[new defaultSet(),12,0.499375343,0.863612175],[new propertiesSet(),5,0.499375343,0.136342525],[new defaultSet(),28,0.499375343,0.499977589]];
            }
            if(param2 == 7 && param3 == 3)
            {
               return [[new decalSet(),20,0.5,0.5],[new defaultSet(),14,0.698874474,0.0454449654],[new defaultSet(),14,0.698874474,0.954532385],[new defaultSet(),8,0.832187653,0.499988794],[new defaultSet(),4,0.765531063,0.318171263],[new defaultSet(),4,0.765531063,0.681806087],[new defaultSet(),13,0.498906136,0.318171263],[new defaultSet(),13,0.498906136,0.681806087],[new defaultSet(),13,0.432250023,0.772715092],[new defaultSet(),13,0.432250023,0.227262259],[new defaultSet(),13,0.898843288,0.318171263],[new defaultSet(),13,0.898843288,0.681806087],[new propertiesSet(),6,0.498906136,0.499988794]];
            }
            if(param2 == 8 && param3 == 3)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),5,0.498750687,0.499988794],[new propertiesSet(),1,0.498750687,0.136353731],[new defaultSet(),13,0.765375137,0.59089756],[new defaultSet(),13,0.898687363,0.772715092],[new defaultSet(),13,0.83203125,0.863623857],[new defaultSet(),13,0.698719025,0.772715092],[new defaultSet(),13,0.632062912,0.681806087],[new defaultSet(),13,0.698719025,0.318171263],[new defaultSet(),13,0.565405846,0.227262259],[new defaultSet(),13,0.43209362,0.227262259],[new defaultSet(),13,0.632062912,0.136353731],[new defaultSet(),13,0.232125282,0.863623857],[new defaultSet(),13,0.0988121033,0.863623857],[new defaultSet(),13,0.298781395,0.772715092],[new defaultSet(),13,0.365437508,0.863623857],[new defaultSet(),13,0.165468216,0.318171263],[new defaultSet(),13,0.298781395,0.318171263],[new defaultSet(),13,0.165468216,0.227262259],[new defaultSet(),13,0.298781395,0.0454449654],[new defaultSet(),13,0.898687363,0.409080029],[new defaultSet(),13,0.365437508,0.499988794]
               ,[new defaultSet(),12,0.898687363,0.136353731],[new defaultSet(),18,0.232125282,0.409080029],[new defaultSet(),18,0.232125282,0.499988794],[new defaultSet(),18,0.232125282,0.59089756]];
            }
            if(param2 == 6 && param3 == 2)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),11,0.232437611,0.136359215],[new defaultSet(),11,0.765687466,0.863624096],[new defaultSet(),8,0.699030876,0.227266073],[new defaultSet(),8,0.699030876,0.772718906],[new defaultSet(),8,0.299093723,0.227266073],[new defaultSet(),16,0.299093723,0.590901136],[new defaultSet(),16,0.765687466,0.681809902],[new defaultSet(),16,0.832343578,0.499992609]];
            }
            if(param2 == 5 && param3 == 2)
            {
               return [[new decalSet(),18,0.5,0.5],[new defaultSet(),15,0.365906239,0.318175077],[new defaultSet(),15,0.632531166,0.227266073],[new defaultSet(),15,0.765843391,0.590901136]];
            }
            if(param2 == 6 && param3 == 4)
            {
               return [[new decalSet(),25,0.5,0.5],[new defaultSet(),12,0.232437611,0.499985218],[new defaultSet(),12,0.765687466,0.499985218],[new defaultSet(),15,0.499062538,0.772711277],[new defaultSet(),10,0.765687466,0.772711277],[new defaultSet(),2,0.499062538,0.863619804],[new defaultSet(),2,0.432406425,0.863619804],[new defaultSet(),2,0.565718651,0.863619804]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),23,0.5,0.5],[new defaultSet(),10,0.833281279,0.499996185],[new defaultSet(),15,0.5,0.5],[new defaultSet(),12,0.5,0.227273747],[new defaultSet(),12,0.166718751,0.5],[new defaultSet(),12,0.766624987,0.5]];
            }
            if(param2 == -1 && param3 == 0)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),6,0.500156224,0.590905488],[new propertiesSet(),1,0.500156224,0.136364996],[new defaultSet(),15,0.166875005,0.227273747],[new defaultSet(),15,0.833437502,0.227273747],[new defaultSet(),15,0.166875005,0.772726238],[new defaultSet(),15,0.833437502,0.772726238],[new defaultSet(),28,0.500156224,0.5],[new propertiesSet(),5,0.500156224,0.318182498]];
            }
            if(param2 == -1 && param3 == 1)
            {
               return [[new decalSet(),25,0.5,0.5],[new defaultSet(),15,0.36684382,0.227270007],[new defaultSet(),15,0.36684382,0.772722483],[new defaultSet(),15,0.700125039,0.499996305],[new defaultSet(),4,0.233531296,0.409087539],[new defaultSet(),4,0.233531296,0.499996305],[new defaultSet(),4,0.233531296,0.590904951]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),24,0.5,0.5],[new propertiesSet(),0,0.499687672,0.59089756],[new defaultSet(),17,0.899625063,0.136353731],[new defaultSet(),17,0.832968712,0.136353731],[new defaultSet(),18,0.832968712,0.863623857],[new defaultSet(),19,0.166406155,0.863623857],[new defaultSet(),18,0.099750042,0.863625765],[new defaultSet(),20,0.899625063,0.863623857],[new defaultSet(),18,0.832968712,0.227262259],[new defaultSet(),18,0.899625063,0.227262259],[new defaultSet(),17,0.832968712,0.772715092],[new defaultSet(),17,0.899625063,0.772715092],[new defaultSet(),17,0.166406155,0.772715092],[new defaultSet(),17,0.099750042,0.772715092],[new defaultSet(),28,0.499687672,0.499988794],[new defaultSet(),39,0.166406155,0.227258921],[new defaultSet(),40,0.166406155,0.227262259]];
            }
            if(param2 == 2 && param3 == 0)
            {
               return [[new decalSet(),18,0.5,0.5],[new defaultSet(),7,0.632999897,0.227269933],[new defaultSet(),7,0.366374969,0.318182498],[new defaultSet(),13,0.299718618,0.227273747],[new defaultSet(),13,0.766312361,0.136364996],[new defaultSet(),13,0.499687672,0.5],[new defaultSet(),13,0.766312361,0.5],[new defaultSet(),13,0.233062506,0.5],[new defaultSet(),13,0.166406155,0.681817472],[new defaultSet(),13,0.832968712,0.772726238]];
            }
            if(param2 == 3 && param3 == 1)
            {
               return [[new decalSet(),18,0.5,0.5],[new defaultSet(),0,0.766156435,0.863631129],[new defaultSet(),0,0.766156435,0.227270007],[new defaultSet(),4,0.366218805,0.136361241],[new defaultSet(),4,0.366218805,0.863631129],[new defaultSet(),4,0.499531269,0.681813836],[new defaultSet(),4,0.499531269,0.318178773],[new defaultSet(),13,0.632843733,0.136361241],[new defaultSet(),13,0.632843733,0.863631129],[new defaultSet(),13,0.366218805,0.227270007],[new defaultSet(),13,0.366218805,0.681813836]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),21,0.5,0.5],[new defaultSet(),11,0.499687672,0.499996305],[new defaultSet(),13,0.499687672,0.227270007],[new defaultSet(),13,0.832968712,0.499996305],[new defaultSet(),13,0.499687672,0.772722483],[new defaultSet(),14,0.166406155,0.136361241],[new defaultSet(),14,0.166406155,0.863631129],[new defaultSet(),14,0.766312361,0.136361241],[new defaultSet(),14,0.766312361,0.863631129],[new propertiesSet(),5,0.499687672,0.318178773],[new defaultSet(),28,0.632999897,0.499996305]];
            }
            if(param2 == 2 && param3 == 5)
            {
               return [[new decalSet(),18,0.5,0.5],[new defaultSet(),10,0.766312361,0.863615513],[new defaultSet(),0,0.166406155,0.681798935],[new defaultSet(),0,0.832968712,0.681798935],[new defaultSet(),2,0.366374969,0.681798935],[new defaultSet(),2,0.632999897,0.863616467],[new defaultSet(),4,0.233062506,0.499981403],[new defaultSet(),4,0.766312361,0.409072399],[new defaultSet(),16,0.166406155,0.499981403]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),22,0.5,0.5],[new defaultSet(),2,0.166718751,0.136361241],[new defaultSet(),2,0.833281279,0.136361241],[new defaultSet(),2,0.833281279,0.863631129],[new defaultSet(),2,0.166718751,0.863631129],[new defaultSet(),0,0.366687506,0.136361241],[new defaultSet(),0,0.633312523,0.136361241],[new defaultSet(),14,0.5,0.499996305],[new defaultSet(),28,0.5,0.863631129],[new propertiesSet(),5,0.566656232,0.499996305]];
            }
            if(param2 == 0 && param3 == 3)
            {
               return [[new decalSet(),22,0.5,0.5],[new propertiesSet(),1,0.5,0.499988794],[new defaultSet(),11,0.100062512,0.136353731],[new defaultSet(),11,0.100062512,0.863623857],[new defaultSet(),12,0.5,0.136353731],[new defaultSet(),12,0.5,0.863623857],[new defaultSet(),13,0.366687506,0.136353731],[new defaultSet(),13,0.233374998,0.0454449654],[new defaultSet(),13,0.100062512,0.499988794],[new defaultSet(),13,0.0334062576,0.318171263],[new defaultSet(),13,0.100062512,0.318171263],[new defaultSet(),13,0.100062512,0.681806087],[new defaultSet(),13,0.433343738,0.772715092],[new defaultSet(),13,0.633312523,0.863623857],[new defaultSet(),28,0.766624987,0.863623857],[new propertiesSet(),5,0.433343738,0.681806087]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),19,0.5,0.5],[new defaultSet(),12,0.632999897,0.499982834],[new defaultSet(),12,0.366374969,0.499980927],[new defaultSet(),4,0.366374969,0.590892792],[new defaultSet(),4,0.366374969,0.681800365],[new defaultSet(),4,0.632999897,0.590893269],[new defaultSet(),4,0.632999897,0.681800365],[new defaultSet(),4,0.499687672,0.590893745],[new defaultSet(),4,0.499687672,0.681802273],[new defaultSet(),14,0.099750042,0.681802273],[new defaultSet(),14,0.899625063,0.681802273]];
            }
            if(param2 == 1 && param3 == 3)
            {
               return [[new decalSet(),20,0.5,0.5],[new defaultSet(),12,0.233218789,0.409080029],[new defaultSet(),12,0.233218789,0.59089756],[new defaultSet(),13,0.233218789,0.681806087],[new defaultSet(),13,0.63315618,0.227262259],[new defaultSet(),13,0.766468763,0.409080029],[new defaultSet(),13,0.63315618,0.681806087]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),19,0.5,0.5],[new defaultSet(),8,0.499687672,0.499991894],[new defaultSet(),11,0.366374969,0.136357546],[new defaultSet(),11,0.632999897,0.136357546],[new defaultSet(),13,0.433031321,0.136357546],[new defaultSet(),13,0.499687672,0.136357546],[new defaultSet(),13,0.566343784,0.136357546]];
            }
         }
         if(missionNum == 2)
         {
            if(param2 == 4 && param3 == 0)
            {
               return [[new decalSet(),41,0.5,0.5],[new defaultSet(),19,0.299406052,0.409091264],[new defaultSet(),19,0.832655907,0.590908766],[new defaultSet(),20,0.765999794,0.590908766],[new defaultSet(),20,0.232749939,0.5],[new defaultSet(),16,0.232749939,0.772726238],[new defaultSet(),12,0.499375343,0.863635004],[new defaultSet(),15,0.832655907,0.863635004],[new defaultSet(),15,0.166093826,0.863635004],[new defaultSet(),13,0.366062641,0.954543769],[new defaultSet(),13,0.432718754,0.954543769],[new defaultSet(),13,0.499375343,0.954543769],[new defaultSet(),13,0.499375343,0.954543769],[new defaultSet(),13,0.632687569,0.954543769],[new defaultSet(),13,0.566031456,0.954543769]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),41,0.5,0.5],[new defaultSet(),19,0.166406155,0.227270007],[new defaultSet(),17,0.166406155,0.318178773],[new defaultSet(),18,0.233062506,0.227270007],[new defaultSet(),18,0.832968712,0.772722483],[new defaultSet(),13,0.166406155,0.772722483],[new defaultSet(),13,0.166406155,0.681813836],[new defaultSet(),13,0.233062506,0.681813836],[new defaultSet(),13,0.233062506,0.772722483],[new defaultSet(),13,0.099750042,0.772722483],[new defaultSet(),13,0.099750042,0.681813836],[new defaultSet(),13,0.832968712,0.681813836],[new defaultSet(),13,0.766312361,0.681813836],[new defaultSet(),13,0.766312361,0.772722483],[new defaultSet(),13,0.899625063,0.772722483],[new defaultSet(),13,0.899625063,0.681813836],[new defaultSet(),13,0.832968712,0.590904951],[new defaultSet(),15,0.766312361,0.499993563],[new defaultSet(),15,0.233062506,0.499993563],[new propertiesSet(),1,0.499687672,0.863631129]];
            }
            if(param2 == 1 && param3 == -7)
            {
               return [[new decalSet(),41,0.5,0.5],[new defaultSet(),20,0.899781227,0.772752285],[new defaultSet(),19,0.0999062061,0.772752285],[new defaultSet(),17,0.366531253,0.772752285],[new defaultSet(),18,0.63315618,0.772752285],[new defaultSet(),25,0.233218789,0.227300167],[new defaultSet(),25,0.766468763,0.227300167],[new defaultSet(),5,0.499843836,0.227300167],[new propertiesSet(),6,0.499843836,0.59093523]];
            }
            if(param2 == -1 && param3 == -6)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),6,0.300187469,0.590931416],[new defaultSet(),12,0.36684382,0.409113407],[new defaultSet(),12,0.233531296,0.590931416],[new defaultSet(),13,0.500156224,0.136387825],[new defaultSet(),13,0.766781211,0.136387825],[new defaultSet(),13,0.36684382,0.227296352],[new defaultSet(),13,0.433499992,0.863657475],[new defaultSet(),13,0.700125039,0.772748947],[new defaultSet(),13,0.766781211,0.863657475],[new defaultSet(),15,0.166875005,0.136387825],[new defaultSet(),28,0.766781211,0.500022411],[new propertiesSet(),5,0.500156224,0.409113407]];
            }
            if(param2 == 3 && param3 == -1)
            {
               return [[new decalSet(),40,0.5,0.5],[new defaultSet(),25,0.766156435,0.590912461]];
            }
            if(param2 == -1 && param3 == -8)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),2,0.233531296,0.227303028],[new defaultSet(),2,0.766781211,0.227303028],[new defaultSet(),2,0.100218773,0.318212509],[new defaultSet(),2,0.900093734,0.318212509],[new defaultSet(),2,0.36684382,0.227303505],[new defaultSet(),2,0.633468747,0.227303505],[new defaultSet(),2,0.100218773,0.500030041],[new defaultSet(),2,0.900093734,0.500030041],[new defaultSet(),2,0.36684382,0.500030041],[new defaultSet(),2,0.633468747,0.500030041],[new propertiesSet(),4,0.500156224,0.681847572],[new propertiesSet(),1,0.433499992,0.409121037]];
            }
            if(param2 == 5 && param3 == -1)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),2,0.632531166,0.772729993],[new defaultSet(),2,0.765843391,0.772729993],[new defaultSet(),2,0.632531166,0.227277517],[new defaultSet(),2,0.765843391,0.227277517],[new defaultSet(),13,0.499218941,0.409094989],[new defaultSet(),13,0.499218941,0.590912461],[new defaultSet(),11,0.499218941,0.227276385],[new defaultSet(),11,0.499218941,0.772730529]];
            }
            if(param2 == 1 && param3 == -5)
            {
               return [[new decalSet(),39,0.5,0.5],[new defaultSet(),13,0.433187485,0.136380672],[new defaultSet(),13,0.566499949,0.136380672]];
            }
            if(param2 == -1 && param3 == -7)
            {
               return [[new decalSet(),39,0.5,0.5],[new defaultSet(),11,0.433499992,0.136389256],[new defaultSet(),11,0.566812515,0.136391163]];
            }
            if(param2 == -2 && param3 == -3)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),3,0.233687639,0.318193913],[new defaultSet(),3,0.766937494,0.318191051],[new defaultSet(),13,0.433656335,0.40910244],[new defaultSet(),2,0.366999984,0.590919971],[new defaultSet(),2,0.633625031,0.590919971],[new propertiesSet(),4,0.500312448,0.227284908],[new propertiesSet(),1,0.500312448,0.590919971]];
            }
            if(param2 == -1 && param3 == -3)
            {
               return [[new decalSet(),37,0.5,0.5],[new defaultSet(),16,0.833437502,0.590919971],[new defaultSet(),16,0.166875005,0.681828737]];
            }
            if(param2 == 1 && param3 == -1)
            {
               return [[new decalSet(),32,0.5,0.5],[new defaultSet(),2,0.433187485,0.50000155],[new defaultSet(),4,0.366531253,0.409094989],[new defaultSet(),4,0.366531253,0.590912461],[new defaultSet(),4,0.299875021,0.409094989],[new defaultSet(),4,0.299875021,0.590912461],[new defaultSet(),4,0.233218789,0.409094989],[new defaultSet(),4,0.233218789,0.590912461],[new defaultSet(),13,0.433187485,0.409091711],[new defaultSet(),13,0.433187485,0.590915203],[new defaultSet(),13,0.566499949,0.50000751],[new defaultSet(),13,0.499843836,0.409091711],[new defaultSet(),13,0.499843836,0.590915203],[new defaultSet(),17,0.63315618,0.409094989],[new defaultSet(),17,0.63315618,0.590912461]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),32,0.5,0.5],[new defaultSet(),12,0.5,0.409094989],[new defaultSet(),12,0.5,0.590912461],[new defaultSet(),15,0.300031245,0.500003755],[new defaultSet(),16,0.633312523,0.590912461],[new propertiesSet(),5,0.5,0.227277517],[new defaultSet(),28,0.633312523,0.500003755]];
            }
            if(param2 == 0 && param3 == -3)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),3,0.5,0.500011206],[new defaultSet(),13,0.633312523,0.227284908],[new defaultSet(),13,0.633312523,0.772737741],[new defaultSet(),13,0.366687506,0.772737741],[new defaultSet(),13,0.366687506,0.227284908],[new propertiesSet(),6,0.5,0.500011206]];
            }
            if(param2 == 3 && param3 == -6)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),3,0.566187382,0.500022411],[new defaultSet(),10,0.832812548,0.136387825],[new defaultSet(),20,0.499531269,0.31820488],[new defaultSet(),17,0.499531269,0.681839943],[new defaultSet(),18,0.299562454,0.590931416],[new defaultSet(),17,0.299562454,0.409113407],[new defaultSet(),2,0.699499846,0.227296352],[new defaultSet(),2,0.699499846,0.772748947],[new defaultSet(),2,0.16624999,0.863657475],[new defaultSet(),2,0.16624999,0.136387825],[new defaultSet(),2,0.832812548,0.500022411],[new propertiesSet(),4,0.499531269,0.500022411],[new defaultSet(),13,0.299562454,0.227296352],[new defaultSet(),13,0.299562454,0.772748947]];
            }
            if(param2 == 2 && param3 == -6)
            {
               return [[new decalSet(),37,0.5,0.5],[new defaultSet(),19,0.632999897,0.409113407],[new defaultSet(),18,0.632999897,0.590931416],[new defaultSet(),20,0.632999897,0.500022411],[new defaultSet(),17,0.632999897,0.681839943],[new defaultSet(),17,0.632999897,0.31820488],[new defaultSet(),19,0.366374969,0.409113407],[new defaultSet(),18,0.366374969,0.31820488],[new defaultSet(),17,0.366374969,0.500022411],[new defaultSet(),20,0.366374969,0.590931416],[new defaultSet(),18,0.366374969,0.681839943]];
            }
            if(param2 == 0 && param3 == -6)
            {
               return [[new decalSet(),34,0.5,0.5],[new defaultSet(),2,0.166718751,0.409113407],[new defaultSet(),2,0.166718751,0.590931416],[new defaultSet(),18,0.300031245,0.409113407],[new defaultSet(),18,0.233374998,0.409113407],[new defaultSet(),18,0.233374998,0.590931416],[new defaultSet(),18,0.300031245,0.590931416],[new propertiesSet(),1,0.433343738,0.863657475],[new defaultSet(),14,0.433343738,0.136387825],[new defaultSet(),14,0.433343738,0.954566479]];
            }
            if(param2 == -3 && param3 == -1)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),2,0.167187452,0.227277517],[new defaultSet(),2,0.767093897,0.227277517],[new defaultSet(),2,0.167187452,0.772729993],[new defaultSet(),2,0.767093897,0.772729993],[new defaultSet(),2,0.500468731,0.500003755],[new defaultSet(),19,0.233843565,0.772729993],[new defaultSet(),20,0.767093897,0.681821227],[new defaultSet(),20,0.167187452,0.318186164],[new defaultSet(),19,0.233843565,0.227277517],[new defaultSet(),17,0.83375001,0.227277517],[new defaultSet(),17,0.83375001,0.318186164],[new defaultSet(),20,0.567124844,0.500003755],[new defaultSet(),17,0.567124844,0.590912461],[new defaultSet(),19,0.567124844,0.409094989],[new defaultSet(),15,0.433812618,0.863638759]];
            }
            if(param2 == -2 && param3 == 0)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),5,0.500312448,0.772726238],[new defaultSet(),21,0.500312448,0.681817472],[new defaultSet(),15,0.167031288,0.590908766],[new defaultSet(),15,0.833593726,0.590908766],[new defaultSet(),11,0.500312448,0.5],[new defaultSet(),13,0.633625031,0.409091264],[new defaultSet(),13,0.300343752,0.681817472]];
            }
            if(param2 == -2 && param3 == -2)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),13,0.167031288,0.590916157],[new defaultSet(),13,0.833593726,0.227281213],[new defaultSet(),13,0.900250077,0.590916157],[new defaultSet(),13,0.300343752,0.318189979],[new defaultSet(),13,0.167031288,0.772733808],[new defaultSet(),13,0.766937494,0.772733808],[new defaultSet(),4,0.167031288,0.318189979],[new defaultSet(),4,0.233687639,0.50000751],[new defaultSet(),4,0.766937494,0.50000751],[new defaultSet(),4,0.833593726,0.318189979],[new defaultSet(),4,0.900250077,0.409098864],[new defaultSet(),4,0.900250077,0.772733808],[new defaultSet(),4,0.100374937,0.772733808],[new defaultSet(),4,0.700281382,0.227281213],[new defaultSet(),12,0.100374937,0.409098864],[new defaultSet(),15,0.900250077,0.227278352],[new defaultSet(),15,0.500312448,0.227281213],[new defaultSet(),20,0.233687639,0.590916157],[new defaultSet(),19,0.766937494,0.318189979],[new defaultSet(),17,0.766937494,0.409098864],[new defaultSet(),18,0.300343752,0.409098864]];
            }
            if(param2 == -2 && param3 == -1)
            {
               return [[new decalSet(),40,0.5,0.5],[new defaultSet(),25,0.300343752,0.409094989],[new defaultSet(),25,0.300343752,0.772729993],[new propertiesSet(),5,0.500312448,0.227277517],[new defaultSet(),28,0.700281382,0.500003755]];
            }
            if(param2 == -1 && param3 == -1)
            {
               return [[new decalSet(),34,0.5,0.5],[new defaultSet(),14,0.500156224,0.227277517],[new defaultSet(),14,0.300187469,0.772730529]];
            }
            if(param2 == 3 && param3 == -3)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),3,0.499531269,0.500011206],[new defaultSet(),13,0.699499846,0.681828737],[new defaultSet(),13,0.299562454,0.136376143],[new defaultSet(),19,0.299562454,0.500011206],[new defaultSet(),18,0.299562454,0.40910244],[new defaultSet(),18,0.299562454,0.681828737],[new defaultSet(),18,0.232906103,0.590919971]];
            }
            if(param2 == 1 && param3 == -6)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),8,0.366531253,0.227292538],[new defaultSet(),8,0.63315618,0.227292538],[new defaultSet(),13,0.699812531,0.500024319],[new defaultSet(),13,0.766468763,0.681840897],[new defaultSet(),13,0.233218789,0.68184185],[new defaultSet(),13,0.166562557,0.409114361],[new defaultSet(),18,0.233218789,0.500022411],[new defaultSet(),18,0.766468763,0.500022411],[new defaultSet(),15,0.499843836,0.136384487],[new defaultSet(),28,0.499843836,0.590931416],[new propertiesSet(),5,0.499843836,0.681839943]];
            }
            if(param2 == 1 && param3 == -4)
            {
               return [[new decalSet(),36,0.5,0.5],[new defaultSet(),12,0.366531253,0.0454711914],[new defaultSet(),12,0.63315618,0.0454711914],[new defaultSet(),11,0.499843836,0.318197727],[new defaultSet(),13,0.566499949,0.136379957],[new defaultSet(),13,0.566499949,0.0454711914],[new defaultSet(),13,0.433187485,0.136379957],[new defaultSet(),13,0.433187485,0.0454711914],[new defaultSet(),13,0.699812531,0.13637805],[new defaultSet(),13,0.299875021,0.13637805]];
            }
            if(param2 == 1 && param3 == -3)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),20,0.566499949,0.40910244],[new defaultSet(),19,0.499843836,0.40910244],[new defaultSet(),18,0.433187485,0.40910244],[new defaultSet(),18,0.499843836,0.500011206],[new defaultSet(),17,0.433187485,0.590919971],[new defaultSet(),17,0.566499949,0.590919971],[new defaultSet(),18,0.499843836,0.590919971],[new defaultSet(),15,0.499843836,0.227284908],[new defaultSet(),15,0.499843836,0.772737741],[new defaultSet(),13,0.366531253,0.227284908],[new defaultSet(),13,0.299875021,0.318193913],[new defaultSet(),13,0.366531253,0.772737741],[new defaultSet(),13,0.299875021,0.681828737],[new defaultSet(),13,0.699812531,0.772737741],[new defaultSet(),13,0.699812531,0.681828737],[new defaultSet(),13,0.699812531,0.318193913],[new defaultSet(),13,0.699812531,0.227284908],[new propertiesSet(),5,0.499843836,0.318193913],[new defaultSet(),28,0.499843836,0.863646269]];
            }
            if(param2 == 2 && param3 == -3)
            {
               return [[new decalSet(),38,0.5,0.5],[new defaultSet(),13,0.299718618,0.136376143],[new defaultSet(),13,0.366374969,0.0454676151],[new defaultSet(),13,0.433031321,0.136376143],[new defaultSet(),13,0.832968712,0.136376143],[new defaultSet(),13,0.766312361,0.318193913],[new defaultSet(),13,0.832968712,0.40910244],[new defaultSet(),13,0.499687672,0.590919971],[new defaultSet(),13,0.699656248,0.500011206],[new defaultSet(),13,0.433031321,0.500011206],[new defaultSet(),13,0.766312361,0.40910244],[new defaultSet(),13,0.766312361,0.590919971],[new defaultSet(),13,0.433031321,0.227284908],[new defaultSet(),13,0.499687672,0.0454676151],[new defaultSet(),13,0.566343784,0.227284908],[new defaultSet(),13,0.499687672,0.136376143],[new defaultSet(),20,0.433031321,0.681828737],[new defaultSet(),19,0.632999897,0.681828737],[new defaultSet(),17,0.166406155,0.500014305]];
            }
            if(param2 == 4 && param3 == -2)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),22,0.499375343,0.590916157],[new defaultSet(),2,0.232749939,0.227281213],[new defaultSet(),2,0.765999794,0.227281213],[new defaultSet(),2,0.832655907,0.227281213],[new defaultSet(),2,0.166093826,0.227281213],[new defaultSet(),19,0.899312496,0.318189979],[new defaultSet(),19,0.166093826,0.318189979],[new defaultSet(),17,0.0994372368,0.318189979],[new defaultSet(),17,0.832655907,0.318189979],[new defaultSet(),17,0.299406052,0.318189979],[new defaultSet(),19,0.699343681,0.318189979],[new defaultSet(),13,0.899312496,0.772733808],[new defaultSet(),13,0.899312496,0.681825042],[new defaultSet(),13,0.0994372368,0.772733808],[new defaultSet(),13,0.0994372368,0.681825042],[new defaultSet(),13,0.232749939,0.50000751],[new defaultSet(),13,0.765999794,0.50000751]];
            }
            if(param2 == 2 && param3 == -2)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),12,0.233062506,0.227281213],[new defaultSet(),12,0.766312361,0.227281213],[new defaultSet(),11,0.366374969,0.318189979],[new defaultSet(),11,0.632999897,0.318189979],[new defaultSet(),11,0.099750042,0.772733808],[new defaultSet(),11,0.899625063,0.772733808],[new defaultSet(),13,0.299718618,0.681825042],[new defaultSet(),13,0.699656248,0.50000751],[new defaultSet(),13,0.499687672,0.227281213],[new defaultSet(),17,0.299718618,0.409098864],[new defaultSet(),17,0.699656248,0.409098864]];
            }
            if(param2 == 4 && param3 == -1)
            {
               return [[new decalSet(),33,0.5,0.5],[new defaultSet(),15,0.899312496,0.409094989],[new defaultSet(),15,0.899312496,0.590912461],[new defaultSet(),15,0.765999794,0.50000751],[new defaultSet(),18,0.432718754,0.227277517],[new defaultSet(),19,0.499375343,0.227277517],[new defaultSet(),20,0.566031456,0.227277517],[new defaultSet(),17,0.432718754,0.772729993],[new defaultSet(),18,0.499375343,0.772729993],[new defaultSet(),19,0.566031456,0.772729993],[new defaultSet(),14,0.166093826,0.136368811],[new defaultSet(),28,0.366062641,0.500003755],[new propertiesSet(),5,0.432718754,0.409094989]];
            }
            if(param2 == 2 && param3 == -1)
            {
               return [[new decalSet(),40,0.5,0.5],[new defaultSet(),2,0.499687672,0.227277517],[new defaultSet(),2,0.299718618,0.318186164],[new defaultSet(),2,0.699656248,0.318186164],[new defaultSet(),15,0.832968712,0.318186164],[new defaultSet(),15,0.166406155,0.318186164],[new defaultSet(),17,0.699656248,0.409094989],[new defaultSet(),17,0.299718618,0.409094989],[new defaultSet(),28,0.699656248,0.681821227],[new propertiesSet(),5,0.499687672,0.500003755]];
            }
            if(param2 == 2 && param3 == 0)
            {
               return [[new decalSet(),39,0.5,0.5],[new defaultSet(),10,0.766312361,0.5]];
            }
            if(param2 == -1 && param3 == 4)
            {
               return [[new decalSet(),31,0.5,0.5],[new propertiesSet(),1,0.500156224,0.863619804],[new defaultSet(),5,0.233531296,0.590893745],[new defaultSet(),5,0.766781211,0.590893745],[new defaultSet(),4,0.300187469,0.772711277],[new defaultSet(),4,0.700125039,0.772711277],[new defaultSet(),4,0.633468747,0.772711277],[new defaultSet(),4,0.36684382,0.772711277],[new defaultSet(),4,0.36684382,0.681802273],[new defaultSet(),4,0.633468747,0.681802273],[new defaultSet(),4,0.433499992,0.772711277],[new defaultSet(),4,0.433499992,0.681802273],[new defaultSet(),4,0.433499992,0.590893745],[new defaultSet(),4,0.566812515,0.772711277],[new defaultSet(),4,0.566812515,0.681802273],[new defaultSet(),4,0.566812515,0.590893745],[new propertiesSet(),6,0.500156224,0.409076214]];
            }
            if(param2 == -1 && param3 == 3)
            {
               return [[new decalSet(),36,0.5,0.5],[new defaultSet(),17,0.700125039,0.681806087],[new defaultSet(),17,0.766781211,0.681806087],[new defaultSet(),17,0.300187469,0.681806087],[new defaultSet(),17,0.233531296,0.681806087],[new defaultSet(),25,0.500156224,0.863623857]];
            }
            if(param2 == -1 && param3 == 2)
            {
               return [[new decalSet(),35,0.5,0.5],[new defaultSet(),15,0.300187469,0.318178892],[new defaultSet(),15,0.300187469,0.681809902],[new defaultSet(),18,0.433499992,0.227266073],[new defaultSet(),18,0.433499992,0.318175077],[new defaultSet(),18,0.433499992,0.590901136],[new defaultSet(),18,0.433499992,0.681809902],[new defaultSet(),18,0.566812515,0.772718906],[new defaultSet(),18,0.566812515,0.681809902],[new defaultSet(),18,0.566812515,0.227266073],[new defaultSet(),18,0.566812515,0.136357546],[new defaultSet(),12,0.766781211,0.136357546],[new defaultSet(),12,0.766781211,0.863627672],[new defaultSet(),16,0.166875005,0.590901136],[new propertiesSet(),5,0.500156224,0.227266073],[new defaultSet(),28,0.566812515,0.499992609]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),37,0.5,0.5],[new defaultSet(),10,0.366687506,0.3181777]];
            }
            if(param2 == 2 && param3 == 5)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),10,0.499687672,0.863616467],[new defaultSet(),21,0.499687672,0.772707462],[new defaultSet(),2,0.166406155,0.499981403],[new defaultSet(),2,0.166406155,0.681798935],[new defaultSet(),2,0.832968712,0.499981403],[new defaultSet(),2,0.832968712,0.681798935],[new defaultSet(),2,0.766312361,0.863616467],[new defaultSet(),2,0.699656248,0.863616467],[new defaultSet(),2,0.233062506,0.863616467],[new defaultSet(),2,0.299718618,0.863616467],[new defaultSet(),2,0.433031321,0.409072399],[new defaultSet(),2,0.566343784,0.409072399],[new defaultSet(),2,0.899625063,0.590889931],[new defaultSet(),2,0.099750042,0.590889931],[new propertiesSet(),4,0.499687672,0.227255344],[new defaultSet(),13,0.499687672,0.590889931],[new propertiesSet(),5,0.499687672,0.590886593]];
            }
            if(param2 == 1 && param3 == 4)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),25,0.166562557,0.863619804],[new defaultSet(),17,0.499843836,0.681802273],[new defaultSet(),17,0.499843836,0.772711277],[new defaultSet(),17,0.433187485,0.681802273],[new defaultSet(),17,0.433187485,0.772711277],[new defaultSet(),17,0.433187485,0.954528809],[new defaultSet(),17,0.433187485,0.863619804],[new defaultSet(),17,0.499843836,0.863619804],[new defaultSet(),17,0.499843836,0.954528809]];
            }
            if(param2 == 3 && param3 == 4)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),6,0.499531269,0.499985218],[new defaultSet(),2,0.89946866,0.863619804],[new defaultSet(),2,0.89946866,0.136350155],[new defaultSet(),2,0.366218805,0.863619804],[new defaultSet(),2,0.366218805,0.136350155],[new defaultSet(),15,0.766156435,0.227255344],[new defaultSet(),15,0.766156435,0.772711277]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),33,0.5,0.5],[new defaultSet(),14,0.832968712,0.136350155],[new defaultSet(),14,0.166406155,0.863619804],[new defaultSet(),12,0.899625063,0.499985218],[new defaultSet(),12,0.099750042,0.499985218],[new defaultSet(),4,0.499687672,0.863619804],[new defaultSet(),4,0.233062506,0.499985218],[new defaultSet(),4,0.766312361,0.499985218],[new defaultSet(),4,0.699656248,0.499985218],[new defaultSet(),4,0.299718618,0.499985218]];
            }
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),17,0.366531253,0.499992609],[new defaultSet(),17,0.63315618,0.499992609],[new defaultSet(),17,0.366531253,0.409083843],[new defaultSet(),17,0.366531253,0.590901136],[new defaultSet(),17,0.63315618,0.590901136],[new defaultSet(),17,0.63315618,0.409083843],[new defaultSet(),15,0.233218789,0.136357546],[new defaultSet(),15,0.233218789,0.863627672],[new defaultSet(),12,0.766468763,0.136357546],[new defaultSet(),12,0.766468763,0.863627672],[new defaultSet(),4,0.499843836,0.499992609],[new defaultSet(),4,0.233218789,0.499992609],[new defaultSet(),4,0.499843836,0.318175077],[new defaultSet(),4,0.499843836,0.681809902]];
            }
            if(param2 == 5 && param3 == 2)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),21,0.565875053,0.3181777],[new defaultSet(),21,0.632531166,0.772716284],[new defaultSet(),5,0.499218941,0.499992609],[new defaultSet(),13,0.299250126,0.0454525948],[new defaultSet(),13,0.299250126,0.136360407],[new defaultSet(),13,0.365906239,0.86362505],[new defaultSet(),13,0.432562828,0.681809902],[new defaultSet(),13,0.299250126,0.227266073],[new defaultSet(),13,0.232594013,0.227268934],[new defaultSet(),13,0.232594013,0.681809902],[new defaultSet(),13,0.299250126,0.772718906],[new defaultSet(),2,0.899156094,0.227266073],[new defaultSet(),2,0.899156094,0.772718906],[new defaultSet(),2,0.632531166,0.136357546],[new defaultSet(),2,0.632531166,0.863627672]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),34,0.5,0.5],[new defaultSet(),7,0.832655907,0.318175077],[new defaultSet(),7,0.832655907,0.681809902],[new defaultSet(),15,0.832655907,0.499992609],[new defaultSet(),15,0.499375343,0.499992609],[new defaultSet(),18,0.299406052,0.409083843],[new defaultSet(),18,0.299406052,0.590901136],[new defaultSet(),18,0.699343681,0.318175077],[new defaultSet(),18,0.699343681,0.681809902],[new defaultSet(),10,0.899312496,0.772718906],[new defaultSet(),28,0.232749939,0.409083843],[new propertiesSet(),5,0.499375343,0.499992609]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),32,0.5,0.5],[new defaultSet(),17,0.299562454,0.409083843],[new defaultSet(),17,0.299562454,0.590901136],[new defaultSet(),25,0.89946866,0.590901136],[new propertiesSet(),6,0.499531269,0.499992609]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),33,0.5,0.5],[new defaultSet(),14,0.832968712,0.863627672],[new defaultSet(),14,0.166406155,0.136357546],[new defaultSet(),15,0.433031321,0.499993086],[new defaultSet(),12,0.966281414,0.499992609]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),31,0.5,0.5],[new propertiesSet(),0,0.499687672,0.227262259],[new defaultSet(),20,0.832968712,0.227262259],[new defaultSet(),19,0.166406155,0.227262259],[new defaultSet(),18,0.166406155,0.772715092],[new defaultSet(),28,0.499687672,0.499988794],[new defaultSet(),39,0.832968712,0.681808949],[new defaultSet(),40,0.832968712,0.681806087]];
            }
         }
         if(missionNum == 3)
         {
            if(param2 == 0 && param3 == -5)
            {
               return [[new decalSet(),103,0.5,0.5],[new propertiesSet(),1,0.5,0.227292538],[new defaultSet(),15,0.833281279,0.500018597],[new defaultSet(),15,0.166718751,0.500018597],[new defaultSet(),15,0.233374998,0.772744656],[new defaultSet(),15,0.766624987,0.772744656],[new propertiesSet(),3,0.5,0.590927601]];
            }
            if(param2 == 3 && param3 == 0)
            {
               return [[new decalSet(),100,0.5,0.5],[new defaultSet(),27,0.499531269,0.136364996],[new defaultSet(),27,0.566187382,0.227273747],[new defaultSet(),27,0.499531269,0.863635004],[new defaultSet(),27,0.566187382,0.772726238],[new defaultSet(),27,0.16624999,0.318182498],[new defaultSet(),27,0.16624999,0.681817472],[new defaultSet(),27,0.16624999,0.772726238],[new defaultSet(),27,0.16624999,0.227273747],[new defaultSet(),2,0.432875156,0.5],[new defaultSet(),28,0.832812548,0.5],[new propertiesSet(),5,0.499531269,0.318182498]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),101,0.5,0.5],[new defaultSet(),12,0.366687506,0.5],[new defaultSet(),12,0.633312523,0.5],[new defaultSet(),13,0.433343738,0.409091264],[new defaultSet(),13,0.433343738,0.318182498],[new defaultSet(),13,0.433343738,0.227273747],[new defaultSet(),13,0.566656232,0.227273747],[new defaultSet(),13,0.566656232,0.318182498],[new defaultSet(),13,0.566656232,0.409091264],[new defaultSet(),13,0.5,0.681817472]];
            }
            if(param2 == 5 && param3 == 2)
            {
               return [[new decalSet(),100,0.5,0.5],[new defaultSet(),27,0.432562828,0.409083843],[new defaultSet(),27,0.432562828,0.590901136],[new defaultSet(),27,0.632531166,0.227266073],[new defaultSet(),27,0.499218941,0.772718906],[new defaultSet(),27,0.499218941,0.227266073],[new defaultSet(),27,0.632531166,0.772718906],[new defaultSet(),27,0.699187279,0.863627672],[new defaultSet(),27,0.699187279,0.136357546]];
            }
            if(param2 == 4 && param3 == -4)
            {
               return [[new decalSet(),100,0.5,0.5],[new defaultSet(),27,0.432718754,0.409106255],[new defaultSet(),27,0.432718754,0.50001502],[new defaultSet(),27,0.432718754,0.590923786],[new defaultSet(),27,0.499375343,0.590923786],[new defaultSet(),27,0.566031456,0.590923786],[new defaultSet(),27,0.566031456,0.50001502],[new defaultSet(),27,0.566031456,0.409106255],[new defaultSet(),27,0.499375343,0.409106255],[new defaultSet(),27,0.366062641,0.409106255],[new defaultSet(),27,0.366062641,0.50001502],[new defaultSet(),27,0.366062641,0.590923786],[new defaultSet(),25,0.499375343,0.590923786]];
            }
            if(param2 == 4 && param3 == 0)
            {
               return [[new decalSet(),100,0.5,0.5],[new defaultSet(),27,0.166093826,0.227273747],[new defaultSet(),27,0.432718754,0.227273747],[new defaultSet(),27,0.566031456,0.227273747],[new defaultSet(),27,0.832655907,0.227273747],[new defaultSet(),4,0.432718754,0.318182498],[new defaultSet(),4,0.566031456,0.318182498]];
            }
            if(param2 == 7 && param3 == -4)
            {
               return [[new decalSet(),102,0.5,0.5],[new defaultSet(),18,0.298937321,0.409104824],[new defaultSet(),14,0.765531063,0.136379957],[new defaultSet(),17,0.232281685,0.409106255],[new defaultSet(),27,0.898843288,0.50001502],[new defaultSet(),27,0.832187653,0.50001502],[new defaultSet(),27,0.832187653,0.590923786],[new defaultSet(),27,0.832187653,0.318197727],[new defaultSet(),27,0.765531063,0.318197727],[new defaultSet(),27,0.698874474,0.318197727],[new defaultSet(),27,0.698874474,0.681832314],[new defaultSet(),27,0.765531063,0.681832314],[new defaultSet(),27,0.832187653,0.681832314]];
            }
            if(param2 == 5 && param3 == 4)
            {
               return [[new decalSet(),101,0.5,0.5],[new defaultSet(),26,0.499218941,0.954528332],[new defaultSet(),17,0.365906239,0.863624096],[new defaultSet(),17,0.632531166,0.863624096],[new defaultSet(),17,0.565875053,0.772712231],[new defaultSet(),17,0.432562828,0.772712231]];
            }
            if(param2 == 2 && param3 == -5)
            {
               return [[new decalSet(),52,0.5,0.5],[new defaultSet(),27,0.699656248,0.227292538],[new defaultSet(),27,0.699656248,0.318201065],[new defaultSet(),27,0.699656248,0.409110069],[new defaultSet(),27,0.766312361,0.409110069],[new defaultSet(),27,0.832968712,0.227292538],[new defaultSet(),27,0.832968712,0.318201065],[new defaultSet(),27,0.832968712,0.409110069],[new defaultSet(),27,0.299718618,0.409110069],[new defaultSet(),27,0.299718618,0.318201065],[new defaultSet(),27,0.299718618,0.227292538],[new defaultSet(),27,0.233062506,0.227292538],[new defaultSet(),27,0.233062506,0.409110069],[new defaultSet(),27,0.166406155,0.409110069],[new defaultSet(),27,0.166406155,0.318201065],[new defaultSet(),27,0.166406155,0.227292538],[new defaultSet(),16,0.166406155,0.681836605],[new defaultSet(),16,0.832968712,0.954562187],[new defaultSet(),16,0.499687672,0.318201065],[new propertiesSet(),6,0.499687672,0.681836605],[new defaultSet(),17,0.299718618,0.500018597],[new defaultSet(),17,0.699656248,0.500018597]];
            }
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),47,0.5,0.5],[new defaultSet(),18,0.166562557,0.318175077],[new defaultSet(),18,0.166562557,0.409083843],[new defaultSet(),18,0.166562557,0.681809902],[new defaultSet(),27,0.233218789,0.318175077],[new defaultSet(),27,0.233218789,0.409083843],[new defaultSet(),27,0.233218789,0.499992609],[new defaultSet(),27,0.233218789,0.590901136],[new defaultSet(),27,0.233218789,0.681809902],[new defaultSet(),27,0.233218789,0.227266073],[new defaultSet(),27,0.299875021,0.227266073],[new defaultSet(),27,0.233218789,0.772718906],[new defaultSet(),27,0.299875021,0.772718906]];
            }
            if(param2 == 6 && param3 == -3)
            {
               return [[new decalSet(),52,0.5,0.5],[new propertiesSet(),1,0.499062538,0.863646269],[new defaultSet(),18,0.0991249084,0.500011206],[new defaultSet(),18,0.0991249084,0.40910244],[new defaultSet(),18,0.0991249084,0.590919971],[new defaultSet(),18,0.898999691,0.590919971],[new defaultSet(),18,0.898999691,0.500011206],[new defaultSet(),18,0.898999691,0.40910244],[new defaultSet(),5,0.299093723,0.500011206],[new defaultSet(),5,0.699030876,0.500011206],[new defaultSet(),13,0.699030876,0.40910244],[new defaultSet(),13,0.632374763,0.40910244],[new defaultSet(),13,0.632374763,0.500011206],[new defaultSet(),13,0.632374763,0.590919971],[new defaultSet(),13,0.699030876,0.590919971],[new defaultSet(),13,0.765687466,0.590919971],[new defaultSet(),13,0.765687466,0.500011206],[new defaultSet(),13,0.765687466,0.40910244],[new defaultSet(),13,0.299093723,0.40910244],[new defaultSet(),13,0.232437611,0.40910244],[new defaultSet(),13,0.232437611,0.500011206],[new defaultSet(),13,0.232437611,0.590919971],[new defaultSet()
               ,13,0.299093723,0.590919971],[new defaultSet(),13,0.365750313,0.590919971],[new defaultSet(),13,0.365750313,0.500011206],[new defaultSet(),13,0.365750313,0.40910244],[new defaultSet(),13,0.432406425,0.681828737],[new defaultSet(),13,0.499062538,0.681828737],[new defaultSet(),13,0.565718651,0.681828737],[new defaultSet(),13,0.765687466,0.681828737],[new defaultSet(),13,0.832343578,0.681828737],[new defaultSet(),13,0.898999691,0.772737741],[new defaultSet(),13,0.232437611,0.681828737],[new defaultSet(),13,0.165781498,0.681828737],[new defaultSet(),13,0.0991249084,0.772737741],[new defaultSet(),13,0.0324687958,0.590919971],[new defaultSet(),13,0.0324687958,0.500011206],[new defaultSet(),13,0.0324687958,0.40910244],[new defaultSet(),13,0.965656281,0.40910244],[new defaultSet(),13,0.965656281,0.500011206],[new defaultSet(),13,0.965656281,0.590919971],[new defaultSet(),13,0.832343578,0.227284908],[new defaultSet(),13,0.765687466,0.227284908],[new defaultSet(),13,0.165781498,0.227284908],[new defaultSet()
               ,13,0.232437611,0.227284908],[new defaultSet(),13,0.499062538,0.318193913],[new defaultSet(),27,0.499062538,0.500011206]];
            }
            if(param2 == 6 && param3 == -5)
            {
               return [[new decalSet(),52,0.5,0.5],[new defaultSet(),25,0.499062538,0.4091115],[new defaultSet(),4,0.0991249084,0.86365366],[new defaultSet(),4,0.898999691,0.86365366],[new defaultSet(),27,0.898999691,0.136383533],[new defaultSet(),27,0.0991249084,0.136383533],[new defaultSet(),18,0.499062538,0.590927601],[new defaultSet(),18,0.565718651,0.590927601],[new defaultSet(),18,0.432406425,0.590927601],[new defaultSet(),18,0.0991249084,0.227292538],[new defaultSet(),18,0.165781498,0.227292538],[new defaultSet(),18,0.232437611,0.227292538],[new defaultSet(),18,0.898999691,0.227292538],[new defaultSet(),18,0.832343578,0.227292538],[new defaultSet(),18,0.765687466,0.227292538],[new defaultSet(),16,0.232437611,0.590927601],[new defaultSet(),16,0.765687466,0.772744656]];
            }
            if(param2 == 5 && param3 == -4)
            {
               return [[new decalSet(),49,0.5,0.5],[new defaultSet(),27,0.565875053,0.409106016],[new defaultSet(),27,0.565875053,0.500013828],[new defaultSet(),27,0.565875053,0.59092164],[new defaultSet(),2,0.699187279,0.318199635],[new defaultSet(),2,0.699187279,0.681833506],[new defaultSet(),2,0.832499981,0.318199635],[new defaultSet(),2,0.832499981,0.681828737],[new defaultSet(),4,0.632531166,0.409106016],[new defaultSet(),4,0.632531166,0.500013828],[new defaultSet(),4,0.632531166,0.59092164],[new defaultSet(),4,0.499218941,0.409106255],[new defaultSet(),4,0.499218941,0.50001502],[new defaultSet(),4,0.499218941,0.590923786],[new defaultSet(),11,0.699187279,0.409107208],[new defaultSet(),11,0.699187279,0.59092021],[new propertiesSet(),6,0.499218941,0.50001502]];
            }
            if(param2 == 6 && param3 == -4)
            {
               return [[new decalSet(),43,0.5,0.5],[new defaultSet(),26,0.165781498,0.227288723],[new defaultSet(),26,0.165781498,0.772741079],[new defaultSet(),26,0.832343578,0.772741079],[new defaultSet(),26,0.832343578,0.227288723],[new propertiesSet(),5,0.499062538,0.227288723],[new defaultSet(),28,0.499062538,0.681832314]];
            }
            if(param2 == 8 && param3 == -4)
            {
               return [[new decalSet(),53,0.5,0.5],[new defaultSet(),27,0.898687363,0.409106255],[new defaultSet(),27,0.898687363,0.50001502],[new defaultSet(),27,0.898687363,0.590923786],[new defaultSet(),27,0.83203125,0.409106255],[new defaultSet(),27,0.83203125,0.50001502],[new defaultSet(),27,0.83203125,0.590923786],[new defaultSet(),26,0.698719025,0.318197727],[new defaultSet(),26,0.698719025,0.681832314],[new defaultSet(),10,0.632062912,0.590923786],[new propertiesSet(),5,0.498750687,0.227288723],[new defaultSet(),28,0.298781395,0.50001502]];
            }
            if(param2 == 5 && param3 == 3)
            {
               return [[new decalSet(),50,0.5,0.5],[new defaultSet(),15,0.432562828,0.863623619],[new defaultSet(),15,0.565875053,0.863620281],[new defaultSet(),18,0.365906239,0.863623857],[new defaultSet(),18,0.632531166,0.863623857],[new defaultSet(),18,0.632531166,0.499988794],[new defaultSet(),18,0.365906239,0.499988794],[new defaultSet(),18,0.365906239,0.0454449654],[new defaultSet(),18,0.365906239,0.136353731],[new defaultSet(),18,0.632531166,0.136353731],[new defaultSet(),18,0.632531166,0.0454449654],[new defaultSet(),28,0.499218941,0.681806087],[new propertiesSet(),5,0.499218941,0.409080029]];
            }
            if(param2 == 1 && param3 == -2)
            {
               return [[new decalSet(),53,0.5,0.5],[new defaultSet(),26,0.233218789,0.681823254],[new defaultSet(),26,0.233218789,0.409098864],[new defaultSet(),27,0.699812531,0.227281213],[new defaultSet(),27,0.699812531,0.136372328],[new defaultSet(),27,0.766468763,0.136372328],[new defaultSet(),27,0.766468763,0.227281213],[new defaultSet(),27,0.699812531,0.681825042],[new defaultSet(),27,0.699812531,0.772733808],[new defaultSet(),27,0.766468763,0.772733808],[new defaultSet(),27,0.766468763,0.681825042],[new defaultSet(),17,0.63315618,0.50000751],[new defaultSet(),17,0.63315618,0.590916157],[new defaultSet(),19,0.699812531,0.409098864]];
            }
            if(param2 == 0 && param3 == -4)
            {
               return [[new decalSet(),50,0.5,0.5],[new defaultSet(),17,0.366687506,0.136379957],[new defaultSet(),17,0.433343738,0.136379957],[new defaultSet(),17,0.5,0.136379957],[new defaultSet(),17,0.566656232,0.136379957],[new defaultSet(),17,0.633312523,0.136379957],[new defaultSet(),17,0.566656232,0.227288723],[new defaultSet(),17,0.5,0.227288723],[new defaultSet(),17,0.433343738,0.227288723],[new defaultSet(),27,0.566656232,0.318197727],[new defaultSet(),27,0.433343738,0.318197727],[new defaultSet(),27,0.5,0.318197727],[new defaultSet(),27,0.366687506,0.409106255],[new defaultSet(),27,0.433343738,0.409106255],[new defaultSet(),27,0.5,0.409106255],[new defaultSet(),27,0.566656232,0.409106255],[new defaultSet(),27,0.633312523,0.409106255],[new defaultSet(),14,0.233374998,0.227288723],[new defaultSet(),14,0.766624987,0.227288723],[new defaultSet(),14,0.766624987,0.863650084],[new defaultSet(),14,0.233374998,0.863650084]];
            }
            if(param2 == 9 && param3 == -4)
            {
               return [[new decalSet(),46,0.5,0.5],[new defaultSet(),5,0.698562622,0.227288723],[new defaultSet(),15,0.431937218,0.136379957],[new defaultSet(),15,0.431937218,0.863650084],[new defaultSet(),15,0.831874847,0.50001502],[new defaultSet(),18,0.498594284,0.409106255],[new defaultSet(),18,0.498594284,0.50001502],[new defaultSet(),18,0.498594284,0.590923786],[new defaultSet(),18,0.565249443,0.590923786],[new defaultSet(),18,0.565249443,0.50001502],[new defaultSet(),18,0.565249443,0.409106255],[new propertiesSet(),6,0.565249443,0.50001502]];
            }
            if(param2 == 4 && param3 == -5)
            {
               return [[new decalSet(),48,0.5,0.5],[new defaultSet(),16,0.699343681,0.409110069],[new defaultSet(),16,0.232749939,0.681836605],[new defaultSet(),21,0.232749939,0.318201065],[new defaultSet(),21,0.765999794,0.590927601],[new defaultSet(),18,0.566031456,0.681836605],[new defaultSet(),18,0.432718754,0.681836605],[new defaultSet(),18,0.566031456,0.772744656],[new defaultSet(),18,0.432718754,0.772744656],[new defaultSet(),18,0.832655907,0.227292538],[new defaultSet(),18,0.832655907,0.318201065],[new defaultSet(),18,0.166093826,0.409110069],[new defaultSet(),18,0.699343681,0.409110069]];
            }
            if(param2 == 2 && param3 == -4)
            {
               return [[new decalSet(),43,0.5,0.5],[new defaultSet(),2,0.433031321,0.50001502],[new defaultSet(),2,0.299718618,0.50001502],[new defaultSet(),2,0.166406155,0.500013828],[new defaultSet(),27,0.366374969,0.227288723],[new defaultSet(),27,0.366374969,0.772741079],[new defaultSet(),27,0.233062506,0.227288723],[new defaultSet(),27,0.233062506,0.772741079],[new defaultSet(),18,0.766312361,0.136379957],[new defaultSet(),18,0.766312361,0.863650084],[new defaultSet(),26,0.499687672,0.318197727],[new defaultSet(),26,0.499687672,0.681832314]];
            }
            if(param2 == 3 && param3 == -4)
            {
               return [[new decalSet(),44,0.5,0.5],[new defaultSet(),2,0.499531269,0.318197012],[new defaultSet(),2,0.366218805,0.136376858],[new defaultSet(),2,0.632843733,0.136382103],[new defaultSet(),4,0.232906103,0.227288723],[new defaultSet(),4,0.766156435,0.227288723],[new defaultSet(),4,0.766156435,0.318197727],[new defaultSet(),4,0.232906103,0.318197727],[new defaultSet(),27,0.366218805,0.50001502],[new defaultSet(),27,0.699499846,0.50001502],[new defaultSet(),28,0.499531269,0.681832314],[new propertiesSet(),5,0.499531269,0.50001502]];
            }
            if(param2 == 3 && param3 == -3)
            {
               return [[new decalSet(),50,0.5,0.5],[new defaultSet(),18,0.632843733,0.136376143],[new defaultSet(),18,0.366218805,0.136376143],[new defaultSet(),18,0.632843733,0.863646269],[new defaultSet(),18,0.366218805,0.863646269],[new defaultSet(),27,0.432875156,0.136376143],[new defaultSet(),27,0.499531269,0.136376143],[new defaultSet(),27,0.566187382,0.136376143],[new defaultSet(),27,0.566187382,0.227284908],[new defaultSet(),27,0.499531269,0.227284908],[new defaultSet(),27,0.432875156,0.227284908],[new defaultSet(),27,0.432875156,0.318193913],[new defaultSet(),27,0.499531269,0.318193913],[new defaultSet(),27,0.566187382,0.318193913],[new defaultSet(),27,0.632843733,0.40910244],[new defaultSet(),27,0.566187382,0.40910244],[new defaultSet(),27,0.499531269,0.40910244],[new defaultSet(),27,0.432875156,0.40910244],[new defaultSet(),27,0.366218805,0.40910244]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),45,0.5,0.5],[new defaultSet(),5,0.5,0.590904951],[new defaultSet(),14,0.766624987,0.227270007],[new defaultSet(),14,0.233374998,0.227270007],[new defaultSet(),15,0.5,0.499996305],[new defaultSet(),13,0.166718751,0.681813836],[new defaultSet(),13,0.233374998,0.772722483],[new defaultSet(),13,0.766624987,0.681813836],[new defaultSet(),13,0.766624987,0.772722483],[new defaultSet(),13,0.833281279,0.681813836],[new defaultSet(),13,0.233374998,0.681813836],[new defaultSet(),27,0.766624987,0.499996305],[new defaultSet(),27,0.699968755,0.499996305],[new defaultSet(),27,0.300031245,0.499996305],[new defaultSet(),27,0.233374998,0.499996305],[new defaultSet(),27,0.5,0.227270007],[new defaultSet(),18,0.833281279,0.409087539],[new defaultSet(),18,0.166718751,0.409087539],[new defaultSet(),10,0.433343738,0.681813836],[new propertiesSet(),6,0.5,0.590904951]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),43,0.5,0.5],[new defaultSet(),27,0.366687506,0.590912461],[new defaultSet(),27,0.300031245,0.590912461],[new defaultSet(),27,0.699968755,0.590912461],[new defaultSet(),27,0.766624987,0.590912461],[new defaultSet(),27,0.833281279,0.590912461],[new defaultSet(),27,0.233374998,0.590912461],[new defaultSet(),27,0.366687506,0.409094989],[new defaultSet(),27,0.300031245,0.409094989],[new defaultSet(),27,0.233374998,0.409094989],[new defaultSet(),27,0.699968755,0.409094989],[new defaultSet(),27,0.766624987,0.409094989],[new defaultSet(),27,0.833281279,0.409094989],[new defaultSet(),4,0.233374998,0.500003755],[new defaultSet(),4,0.300031245,0.500003755],[new defaultSet(),4,0.366687506,0.500003755],[new defaultSet(),4,0.699968755,0.500003755],[new defaultSet(),4,0.766624987,0.500003755],[new defaultSet(),4,0.833281279,0.500003755],[new defaultSet(),18,0.0334062576,0.500003755],[new defaultSet(),18,0.966593742,0.500003755],[new defaultSet(),18,0.966593742,0.409094989],[new defaultSet()
               ,18,0.966593742,0.590912461],[new defaultSet(),18,0.0334062576,0.409094989],[new defaultSet(),18,0.0334062576,0.590912461],[new defaultSet(),12,0.5,0.772729993]];
            }
            if(param2 == 0 && param3 == -3)
            {
               return [[new decalSet(),42,0.5,0.5],[new defaultSet(),27,0.166718751,0.318193913],[new defaultSet(),27,0.233374998,0.227284908],[new defaultSet(),27,0.833281279,0.318193913],[new defaultSet(),27,0.766624987,0.227284908],[new defaultSet(),27,0.833281279,0.772737741],[new defaultSet(),27,0.89993751,0.681828737],[new defaultSet(),27,0.166718751,0.772737741],[new defaultSet(),27,0.100062512,0.681828737],[new defaultSet(),26,0.300031245,0.136376143],[new defaultSet(),26,0.699968755,0.136376143],[new defaultSet(),13,0.366687506,0.136376143],[new defaultSet(),13,0.433343738,0.136376143],[new defaultSet(),13,0.5,0.136376143],[new defaultSet(),13,0.566656232,0.136376143],[new defaultSet(),13,0.633312523,0.136376143],[new defaultSet(),12,0.366687506,0.40910244],[new defaultSet(),12,0.633312523,0.40910244]];
            }
            if(param2 == -1 && param3 == -2)
            {
               return [[new decalSet(),51,0.5,0.5],[new defaultSet(),18,0.566812515,0.227281213],[new defaultSet(),18,0.566812515,0.0454638004],[new defaultSet(),18,0.566812515,0.136372328],[new defaultSet(),18,0.633468747,0.318189979],[new defaultSet(),18,0.633468747,0.227281213],[new defaultSet(),18,0.633468747,0.0454638004],[new defaultSet(),18,0.500156224,0.0454638004],[new defaultSet(),26,0.100218773,0.863642454],[new defaultSet(),12,0.766781211,0.136372328],[new defaultSet(),15,0.100218773,0.136372328],[new defaultSet(),4,0.500156224,0.863642454],[new defaultSet(),4,0.566812515,0.863642454],[new defaultSet(),27,0.566812515,0.50000751],[new defaultSet(),27,0.566812515,0.590916157],[new defaultSet(),27,0.766781211,0.863642454]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),45,0.5,0.5],[new defaultSet(),18,0.366374969,0.59089756],[new defaultSet(),18,0.433031321,0.59089756],[new defaultSet(),18,0.632999897,0.59089756],[new defaultSet(),18,0.566343784,0.59089756],[new defaultSet(),15,0.832968712,0.499988794],[new defaultSet(),15,0.166406155,0.499988794],[new defaultSet(),2,0.299718618,0.681806087],[new defaultSet(),2,0.699656248,0.681806087],[new defaultSet(),10,0.499687672,0.681806087]];
            }
            if(param2 == 6 && param3 == 0)
            {
               return [[new decalSet(),46,0.5,0.5],[new defaultSet(),14,0.299093723,0.136364996],[new defaultSet(),14,0.299093723,0.863635004],[new defaultSet(),27,0.632374763,0.318182498],[new defaultSet(),27,0.832343578,0.136364996],[new defaultSet(),27,0.832343578,0.863635004],[new defaultSet(),27,0.632374763,0.681817472],[new defaultSet(),27,0.699030876,0.409091264],[new defaultSet(),27,0.699030876,0.5],[new defaultSet(),27,0.699030876,0.590908766],[new defaultSet(),10,0.832343578,0.5],[new defaultSet(),18,0.499062538,0.5],[new defaultSet(),18,0.432406425,0.5]];
            }
            if(param2 == 5 && param3 == 0)
            {
               return [[new decalSet(),42,0.5,0.5],[new defaultSet(),27,0.832499981,0.136364996],[new defaultSet(),27,0.765843391,0.136364996],[new defaultSet(),27,0.832499981,0.863635004],[new defaultSet(),27,0.765843391,0.863635004],[new defaultSet(),27,0.765843391,0.772726238],[new defaultSet(),27,0.832499981,0.772726238],[new defaultSet(),27,0.832499981,0.227273747],[new defaultSet(),27,0.765843391,0.227273747],[new defaultSet(),27,0.632531166,0.409091264],[new defaultSet(),27,0.632531166,0.590908766],[new defaultSet(),27,0.765843391,0.5],[new defaultSet(),27,0.832499981,0.5],[new defaultSet(),27,0.832499981,0.409091264],[new defaultSet(),27,0.832499981,0.590908766],[new defaultSet(),18,0.499218941,0.409091264],[new defaultSet(),18,0.499218941,0.590908766],[new defaultSet(),18,0.565875053,0.318182498],[new defaultSet(),18,0.565875053,0.681817472],[new defaultSet(),4,0.632531166,0.5],[new defaultSet(),4,0.565875053,0.5],[new defaultSet(),4,0.365906239,0.863635004],[new defaultSet(),4,0.365906239,0.772726238]
               ,[new defaultSet(),4,0.365906239,0.136364996],[new defaultSet(),4,0.365906239,0.227273747],[new propertiesSet(),5,0.499218941,0.227273747],[new defaultSet(),28,0.365906239,0.5]];
            }
            if(param2 == 0 && param3 == -2)
            {
               return [[new decalSet(),44,0.5,0.5],[new defaultSet(),13,0.233374998,0.95455122],[new defaultSet(),13,0.766624987,0.954547167],[new defaultSet(),13,0.5,0.0454604626],[new defaultSet(),13,0.233374998,0.0454638004],[new defaultSet(),4,0.433343738,0.409098029],[new defaultSet(),4,0.433343738,0.500007987],[new defaultSet(),4,0.433343738,0.590914369],[new defaultSet(),27,0.300031245,0.227282763],[new defaultSet(),27,0.300031245,0.772729993],[new defaultSet(),27,0.233374998,0.318189979],[new defaultSet(),27,0.233374998,0.409098864],[new defaultSet(),27,0.233374998,0.50000751],[new defaultSet(),27,0.233374998,0.590916157],[new defaultSet(),27,0.233374998,0.681825042],[new defaultSet(),14,0.100062512,0.136372328],[new defaultSet(),14,0.100062512,0.863642454],[new defaultSet(),28,0.766624987,0.50000751],[new propertiesSet(),5,0.5,0.590916157]];
            }
            if(param2 == 2 && param3 == -2)
            {
               return [[new decalSet(),49,0.5,0.5],[new defaultSet(),27,0.166406155,0.318189979],[new defaultSet(),27,0.166406155,0.409098864],[new defaultSet(),27,0.166406155,0.590916157],[new defaultSet(),27,0.166406155,0.681825042],[new defaultSet(),27,0.233062506,0.318189979],[new defaultSet(),27,0.233062506,0.409098864],[new defaultSet(),27,0.233062506,0.590916157],[new defaultSet(),27,0.233062506,0.681825042],[new defaultSet(),15,0.099750042,0.50000751],[new defaultSet(),4,0.166406155,0.50000751],[new defaultSet(),4,0.233062506,0.50000751],[new defaultSet(),14,0.766312361,0.136372328],[new defaultSet(),14,0.766312361,0.863642454],[new defaultSet(),28,0.632999897,0.50000751],[new propertiesSet(),5,0.566343784,0.318189979],[new propertiesSet(),1,0.499687672,0.50000751]];
            }
            if(param2 == 6 && param3 == 2)
            {
               return [[new decalSet(),46,0.5,0.5],[new defaultSet(),10,0.432406425,0.863627672],[new defaultSet(),25,0.765687466,0.590901136],[new defaultSet(),13,0.765687466,0.136357546],[new defaultSet(),13,0.832343578,0.136357546],[new defaultSet(),13,0.832343578,0.227266073],[new defaultSet(),13,0.765687466,0.227266073],[new defaultSet(),13,0.765687466,0.772718906],[new defaultSet(),13,0.765687466,0.863627672],[new defaultSet(),13,0.832343578,0.863627672],[new defaultSet(),13,0.832343578,0.772718906],[new defaultSet(),18,0.565718651,0.318175077],[new defaultSet(),18,0.565718651,0.590901136],[new propertiesSet(),6,0.499062538,0.499992609]];
            }
            if(param2 == 5 && param3 == 5)
            {
               return [[new decalSet(),45,0.5,0.5],[new propertiesSet(),1,0.499218941,0.863616467],[new defaultSet(),5,0.499218941,0.590889931],[new defaultSet(),15,0.365906239,0.772707462],[new defaultSet(),15,0.632531166,0.772707462],[new defaultSet(),27,0.765843391,0.499981403],[new defaultSet(),27,0.765843391,0.590889931],[new defaultSet(),27,0.232594013,0.499981403],[new defaultSet(),27,0.232594013,0.590889931],[new defaultSet(),27,0.299250126,0.499981403],[new defaultSet(),27,0.699187279,0.499981403]];
            }
            if(param2 == 4 && param3 == -2)
            {
               return [[new decalSet(),46,0.5,0.5],[new defaultSet(),13,0.432718754,0.136372328],[new defaultSet(),13,0.499375343,0.136372328],[new defaultSet(),13,0.566031456,0.136372328],[new defaultSet(),13,0.632687569,0.136372328],[new defaultSet(),13,0.632687569,0.863642454],[new defaultSet(),13,0.566031456,0.863642454],[new defaultSet(),13,0.499375343,0.863642454],[new defaultSet(),13,0.432718754,0.863642454],[new defaultSet(),13,0.699343681,0.863642454],[new defaultSet(),13,0.765999794,0.863642454],[new defaultSet(),13,0.832655907,0.863642454],[new defaultSet(),13,0.899312496,0.863642454],[new defaultSet(),11,0.566031456,0.50000751],[new defaultSet(),11,0.899312496,0.681825042],[new defaultSet(),11,0.899312496,0.318189979],[new defaultSet(),10,0.899312496,0.136372328]];
            }
            if(param2 == 3 && param3 == -2)
            {
               return [[new decalSet(),44,0.5,0.5],[new defaultSet(),25,0.499531269,0.409098864],[new propertiesSet(),6,0.499531269,0.50000751]];
            }
            if(param2 == 3 && param3 == -1)
            {
               return [[new decalSet(),50,0.5,0.5],[new propertiesSet(),1,0.499531269,0.863638759],[new defaultSet(),18,0.632843733,0.500003755],[new defaultSet(),18,0.366218805,0.500003755],[new defaultSet(),13,0.366218805,0.0454599857],[new defaultSet(),13,0.632843733,0.0454599857],[new defaultSet(),13,0.366218805,0.136368811],[new defaultSet(),13,0.632843733,0.136368811],[new defaultSet(),27,0.432875156,0.136368811],[new defaultSet(),27,0.566187382,0.136368811],[new defaultSet(),4,0.499531269,0.227277517],[new defaultSet(),4,0.499531269,0.136368811],[new defaultSet(),4,0.499531269,0.0454599857]];
            }
            if(param2 == 4 && param3 == 1)
            {
               return [[new decalSet(),44,0.5,0.5],[new defaultSet(),25,0.499375343,0.227270007],[new defaultSet(),18,0.832655907,0.409087539],[new defaultSet(),18,0.899312496,0.499996305],[new defaultSet(),18,0.899312496,0.409087539],[new defaultSet(),18,0.832655907,0.499996305],[new defaultSet(),18,0.0994372368,0.409087539],[new defaultSet(),18,0.166093826,0.409087539],[new defaultSet(),18,0.166093826,0.499996305],[new defaultSet(),18,0.0994372368,0.499996305],[new defaultSet(),13,0.299406052,0.499996305],[new defaultSet(),13,0.699343681,0.499996305]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),43,0.5,0.5],[new defaultSet(),26,0.765999794,0.227266073],[new defaultSet(),26,0.765999794,0.772718906],[new defaultSet(),13,0.499375343,0.227266073],[new defaultSet(),13,0.499375343,0.772718906],[new defaultSet(),18,0.499375343,0.409083843],[new defaultSet(),18,0.499375343,0.590901136],[new defaultSet(),18,0.632687569,0.409083843],[new defaultSet(),18,0.632687569,0.499992609],[new defaultSet(),18,0.632687569,0.590901136],[new propertiesSet(),5,0.499375343,0.499992609],[new defaultSet(),28,0.166093826,0.772718906]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),49,0.5,0.5],[new defaultSet(),25,0.832812548,0.590901136],[new defaultSet(),18,0.566187382,0.409083843],[new defaultSet(),18,0.566187382,0.499992609],[new defaultSet(),18,0.566187382,0.590901136],[new defaultSet(),18,0.499531269,0.590901136],[new defaultSet(),18,0.499531269,0.499992609],[new defaultSet(),18,0.499531269,0.409083843],[new defaultSet(),18,0.432875156,0.409083843],[new defaultSet(),18,0.432875156,0.499992609],[new defaultSet(),18,0.432875156,0.590901136],[new propertiesSet(),6,0.566187382,0.499992609],[new propertiesSet(),1,0.499531269,0.318175077]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),48,0.5,0.5],[new defaultSet(),18,0.299718618,0.409087539],[new defaultSet(),18,0.233062506,0.409087539],[new defaultSet(),18,0.699656248,0.318178773],[new defaultSet(),18,0.766312361,0.318178773],[new defaultSet(),18,0.233062506,0.318178773],[new defaultSet(),18,0.299718618,0.318178773],[new defaultSet(),18,0.699656248,0.409087539],[new defaultSet(),18,0.766312361,0.409087539],[new defaultSet(),27,0.166406155,0.409087539],[new defaultSet(),27,0.233062506,0.499996305],[new defaultSet(),27,0.766312361,0.499996305],[new defaultSet(),27,0.832968712,0.409087539],[new defaultSet(),27,0.832968712,0.499996305],[new defaultSet(),27,0.166406155,0.499996305],[new defaultSet(),27,0.166406155,0.318178773],[new defaultSet(),27,0.832968712,0.318178773],[new defaultSet(),16,0.499687672,0.409087539]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),42,0.5,0.5],[new propertiesSet(),0,0.499687672,0.318175077],[new defaultSet(),18,0.233062506,0.136357546],[new defaultSet(),18,0.233062506,0.227266073],[new defaultSet(),28,0.499687672,0.499992609],[new defaultSet(),39,0.766312361,0.227266073],[new defaultSet(),40,0.766312361,0.227266073]];
            }
         }
         if(missionNum == 4)
         {
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),18,0.233218789,0.227266073],[new defaultSet(),18,0.233218789,0.318175077],[new defaultSet(),18,0.233218789,0.772718906],[new defaultSet(),18,0.233218789,0.681809902],[new defaultSet(),0,0.0999062061,0.227266073],[new defaultSet(),0,0.0999062061,0.772718906],[new defaultSet(),30,0.433187485,0.227266073],[new defaultSet(),30,0.433187485,0.772718906]];
            }
            if(param2 == -5 && param3 == -1)
            {
               return [[new decalSet(),66,0.5,0.5],[new defaultSet(),28,0.234156609,0.227277517],[new propertiesSet(),5,0.500781059,0.136368811],[new defaultSet(),17,0.234156609,0.772729993],[new defaultSet(),17,0.300812721,0.772729993],[new defaultSet(),17,0.700749874,0.772729993],[new defaultSet(),17,0.767405987,0.772729993],[new defaultSet(),13,0.100843906,0.590912461],[new defaultSet(),13,0.167500019,0.681821227],[new defaultSet(),13,0.367468834,0.681821227],[new defaultSet(),13,0.500781059,0.863638759],[new defaultSet(),13,0.167500019,0.863638759],[new defaultSet(),13,0.634093761,0.590912461],[new defaultSet(),13,0.834062576,0.681821227],[new defaultSet(),13,0.834062576,0.863638759],[new defaultSet(),13,0.767405987,0.409094989],[new defaultSet(),13,0.700749874,0.318186164],[new defaultSet(),13,0.767405987,0.136368811],[new defaultSet(),13,0.567437172,0.318186164],[new defaultSet(),13,0.367468834,0.136368811],[new defaultSet(),13,0.367468834,0.227277517],[new defaultSet(),13,0.167500019,0.409094989]
               ,[new defaultSet(),13,0.100843906,0.318186164],[new defaultSet(),13,0.100843906,0.136368811],[new defaultSet(),13,0.834062576,0.136368811],[new defaultSet(),13,0.367468834,0.318186164],[new defaultSet(),13,0.567437172,0.681821227],[new defaultSet(),13,0.234156609,0.590912461]];
            }
            if(param2 == -2 && param3 == -1)
            {
               return [[new decalSet(),60,0.5,0.5],[new defaultSet(),22,0.700281382,0.409091711],[new defaultSet(),21,0.766937494,0.681822836],[new defaultSet(),11,0.500312448,0.227277517],[new defaultSet(),11,0.500312448,0.772729993],[new defaultSet(),13,0.500312448,0.500003755],[new defaultSet(),13,0.900250077,0.318186164],[new defaultSet(),13,0.900250077,0.409094989],[new defaultSet(),13,0.966906309,0.409094989],[new defaultSet(),13,0.966906309,0.318186164],[new defaultSet(),13,0.900250077,0.590912461],[new defaultSet(),13,0.900250077,0.681821227],[new defaultSet(),13,0.966906309,0.681821227],[new defaultSet(),13,0.966906309,0.590912461],[new defaultSet(),13,0.833593726,0.500003755]];
            }
            if(param2 == 6 && param3 == -6)
            {
               return [[new decalSet(),60,0.5,0.5],[new defaultSet(),10,0.299093723,0.500022411],[new defaultSet(),16,0.165781498,0.500022411],[new defaultSet(),16,0.165781498,0.772748947],[new defaultSet(),12,0.499062538,0.227296352],[new defaultSet(),12,0.499062538,0.772748947],[new defaultSet(),12,0.432406425,0.590931416],[new defaultSet(),12,0.432406425,0.409113407],[new propertiesSet(),6,0.499062538,0.500022411]];
            }
            if(param2 == 9 && param3 == -8)
            {
               return [[new decalSet(),65,0.5,0.5],[new defaultSet(),5,0.498594284,0.50002861],[new defaultSet(),20,0.23196888,0.227303505],[new defaultSet(),19,0.765218735,0.227303505],[new defaultSet(),18,0.23196888,0.318212509],[new defaultSet(),18,0.765218735,0.318212509],[new defaultSet(),0,0.298624992,0.409121037],[new defaultSet(),0,0.431937218,0.227303505],[new defaultSet(),0,0.631906509,0.227303505],[new defaultSet(),0,0.765218735,0.409121037],[new defaultSet(),27,0.298624992,0.136395454],[new defaultSet(),27,0.0986566544,0.409121037],[new defaultSet(),27,0.89853096,0.409121037],[new defaultSet(),27,0.698562622,0.136395454],[new propertiesSet(),6,0.498594284,0.409121037]];
            }
            if(param2 == 5 && param3 == -3)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),8,0.499218941,0.863646269],[new defaultSet(),8,0.499218941,0.590919971],[new defaultSet(),19,0.765843391,0.500011206],[new defaultSet(),20,0.232594013,0.500011206]];
            }
            if(param2 == 9 && param3 == -5)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),21,0.498594284,0.318197727],[new defaultSet(),21,0.498594284,0.500021458],[new defaultSet(),29,0.298624992,0.409110069],[new defaultSet(),29,0.698562622,0.409110069]];
            }
            if(param2 == 6 && param3 == 4)
            {
               return [[new decalSet(),60,0.5,0.5],[new defaultSet(),16,0.432406425,0.681802273],[new defaultSet(),16,0.632374763,0.499985218],[new defaultSet(),16,0.832343578,0.681802273],[new defaultSet(),13,0.832343578,0.318167686],[new defaultSet(),13,0.832343578,0.409076214],[new defaultSet(),13,0.765687466,0.409076214],[new defaultSet(),13,0.765687466,0.318167686],[new defaultSet(),13,0.832343578,0.590893745],[new defaultSet(),13,0.832343578,0.681802273],[new defaultSet(),13,0.898999691,0.318167686],[new defaultSet(),13,0.898999691,0.409076214],[new defaultSet(),13,0.965656281,0.318167686],[new defaultSet(),13,0.965656281,0.409076214],[new defaultSet(),13,0.965656281,0.499985218],[new defaultSet(),13,0.965656281,0.590893745],[new defaultSet(),13,0.965656281,0.681802273],[new defaultSet(),13,0.898999691,0.681802273],[new defaultSet(),13,0.765687466,0.681802273],[new defaultSet(),13,0.765687466,0.499985218],[new defaultSet(),4,0.499062538,0.318167686],[new defaultSet(),4,0.499062538,0.409076214],[new defaultSet()
               ,4,0.499062538,0.681802273],[new defaultSet(),4,0.565718651,0.590893745],[new defaultSet(),14,0.832343578,0.136350155],[new defaultSet(),14,0.832343578,0.863619804]];
            }
            if(param2 == 4 && param3 == 4)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),10,0.166093826,0.499985218],[new defaultSet(),18,0.299406052,0.409076214],[new defaultSet(),18,0.299406052,0.499985218],[new defaultSet(),18,0.299406052,0.590893745],[new defaultSet(),18,0.366062641,0.590893745],[new defaultSet(),18,0.366062641,0.499985218],[new defaultSet(),18,0.366062641,0.409076214],[new defaultSet(),30,0.432718754,0.318167686],[new defaultSet(),30,0.432718754,0.681802273],[new propertiesSet(),6,0.432718754,0.499985218]];
            }
            if(param2 == 0 && param3 == -3)
            {
               return [[new decalSet(),56,0.5,0.5],[new defaultSet(),29,0.366687506,0.136376143],[new defaultSet(),29,0.366687506,0.863646269],[new defaultSet(),30,0.100062512,0.136376143],[new defaultSet(),30,0.100062512,0.863646269],[new defaultSet(),10,0.433343738,0.318193913]];
            }
            if(param2 == 1 && param3 == -3)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),29,0.299875021,0.136376143],[new defaultSet(),29,0.299875021,0.863646269],[new defaultSet(),30,0.166562557,0.318193913],[new defaultSet(),30,0.166562557,0.681828737],[new defaultSet(),30,0.233218789,0.590919971],[new defaultSet(),30,0.233218789,0.40910244],[new defaultSet(),15,0.166562557,0.500011206]];
            }
            if(param2 == 2 && param3 == -3)
            {
               return [[new decalSet(),66,0.5,0.5],[new defaultSet(),15,0.233062506,0.772737741],[new defaultSet(),15,0.766312361,0.772737741],[new defaultSet(),27,0.699656248,0.681828737],[new defaultSet(),27,0.299718618,0.681828737],[new defaultSet(),27,0.499687672,0.590919971],[new defaultSet(),26,0.499687672,0.863646269]];
            }
            if(param2 == 5 && param3 == 4)
            {
               return [[new decalSet(),66,0.5,0.5],[new defaultSet(),11,0.499218941,0.499985218],[new defaultSet(),27,0.832499981,0.409076214],[new defaultSet(),27,0.765843391,0.409076214],[new defaultSet(),27,0.232594013,0.409076214],[new defaultSet(),27,0.165937424,0.409076214],[new defaultSet(),30,0.165937424,0.863619804],[new defaultSet(),30,0.832499981,0.863619804],[new defaultSet(),28,0.499218941,0.681802273],[new propertiesSet(),5,0.499218941,0.499985218]];
            }
            if(param2 == 5 && param3 == 3)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),21,0.499218941,0.409080029],[new defaultSet(),14,0.232594013,0.772715092],[new defaultSet(),14,0.832499981,0.772715092],[new defaultSet(),14,0.832499981,0.227262259],[new defaultSet(),14,0.165937424,0.227262259]];
            }
            if(param2 == 5 && param3 == 2)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),13,0.499218941,0.227266073],[new defaultSet(),13,0.432562828,0.318175077],[new defaultSet(),13,0.432562828,0.681809902],[new defaultSet(),13,0.499218941,0.772718906],[new defaultSet(),13,0.365906239,0.499992609],[new defaultSet(),27,0.765843391,0.318175077],[new defaultSet(),27,0.765843391,0.227266073],[new defaultSet(),27,0.765843391,0.681809902],[new defaultSet(),27,0.765843391,0.772718906],[new defaultSet(),11,0.899156094,0.227266073],[new defaultSet(),11,0.899156094,0.772718906],[new defaultSet(),30,0.632531166,0.499992609],[new propertiesSet(),5,0.499218941,0.681809902],[new defaultSet(),28,0.232594013,0.499992609]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),18,0.499375343,0.318175077],[new defaultSet(),18,0.499375343,0.681809902],[new defaultSet(),26,0.832655907,0.499992609],[new defaultSet(),13,0.566031456,0.318175077],[new defaultSet(),13,0.632687569,0.318175077],[new defaultSet(),13,0.699343681,0.318175077],[new defaultSet(),13,0.699343681,0.590901136],[new defaultSet(),13,0.632687569,0.590901136],[new defaultSet(),13,0.566031456,0.590901136],[new defaultSet(),13,0.699343681,0.409083843],[new defaultSet(),13,0.699343681,0.499992609],[new defaultSet(),13,0.432718754,0.499992609],[new defaultSet(),13,0.432718754,0.409083843],[new defaultSet(),13,0.432718754,0.590901136],[new defaultSet(),13,0.566031456,0.681809902],[new defaultSet(),13,0.632687569,0.681809902],[new defaultSet(),13,0.699343681,0.681809902],[new defaultSet(),13,0.632687569,0.409083843],[new defaultSet(),13,0.566031456,0.409083843]];
            }
            if(param2 == 7 && param3 == 1)
            {
               return [[new decalSet(),54,0.5,0.5],[new defaultSet(),4,0.298937321,0.409087539],[new defaultSet(),4,0.232281685,0.499996305],[new defaultSet(),4,0.698874474,0.409087539],[new defaultSet(),4,0.765531063,0.499996305],[new defaultSet(),4,0.632218838,0.409087539],[new defaultSet(),4,0.36559391,0.409087539],[new defaultSet(),4,0.498906136,0.409087539],[new defaultSet(),13,0.36559391,0.318178773],[new defaultSet(),13,0.698874474,0.318178773],[new defaultSet(),13,0.165625095,0.318178773],[new defaultSet(),13,0.165625095,0.227270007],[new defaultSet(),13,0.632218838,0.590904951],[new defaultSet(),13,0.832187653,0.409087539],[new defaultSet(),13,0.36559391,0.590904951],[new defaultSet(),16,0.498906136,0.681813836],[new defaultSet(),30,0.232281685,0.590904951]];
            }
            if(param2 == 7 && param3 == 0)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),28,0.498906136,0.318181366],[new defaultSet(),30,0.498906136,0.772726238],[new defaultSet(),15,0.432250023,0.590908766],[new defaultSet(),15,0.232281685,0.5],[new defaultSet(),15,0.765531063,0.5],[new defaultSet(),15,0.565562248,0.590908766]];
            }
            if(param2 == 9 && param3 == -2)
            {
               return [[new decalSet(),64,0.5,0.5],[new defaultSet(),26,0.698562622,0.863642454],[new defaultSet(),26,0.298624992,0.863642454],[new defaultSet(),29,0.498594284,0.50000751],[new defaultSet(),13,0.0986566544,0.227281213],[new defaultSet(),13,0.89853096,0.227281213],[new defaultSet(),13,0.89853096,0.318189979],[new defaultSet(),13,0.0986566544,0.318189979]];
            }
            if(param2 == 9 && param3 == -3)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),18,0.365281105,0.500011206],[new defaultSet(),18,0.631906509,0.500011206],[new defaultSet(),18,0.365281105,0.772737741],[new defaultSet(),18,0.431937218,0.772737741],[new defaultSet(),18,0.498594284,0.772737741],[new defaultSet(),18,0.565249443,0.772737741],[new defaultSet(),18,0.631906509,0.772737741],[new defaultSet(),15,0.431937218,0.590919971],[new defaultSet(),15,0.565249443,0.590919971],[new defaultSet(),29,0.498594284,0.40910244],[new defaultSet(),28,0.498594284,0.227284908],[new propertiesSet(),5,0.498594284,0.318193913]];
            }
            if(param2 == 9 && param3 == -4)
            {
               return [[new decalSet(),56,0.5,0.5],[new defaultSet(),26,0.831874847,0.136379957],[new defaultSet(),26,0.831874847,0.863650084],[new defaultSet(),29,0.565249443,0.50001502]];
            }
            if(param2 == 3 && param3 == -6)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),10,0.499531269,0.227296352],[new defaultSet(),29,0.299562454,0.863657475],[new defaultSet(),14,0.632843733,0.136387825],[new defaultSet(),14,0.366218805,0.136387825],[new defaultSet(),13,0.89946866,0.31820488],[new defaultSet(),13,0.89946866,0.409113407],[new defaultSet(),13,0.89946866,0.681839943],[new defaultSet(),13,0.89946866,0.590931416],[new defaultSet(),17,0.699499846,0.31820488],[new defaultSet(),17,0.699499846,0.681839943],[new defaultSet(),28,0.366218805,0.500022411],[new propertiesSet(),5,0.499531269,0.409113407]];
            }
            if(param2 == 2 && param3 == -4)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),28,0.166406155,0.772741079],[new propertiesSet(),5,0.433031321,0.863650084],[new defaultSet(),25,0.233062506,0.50001502],[new defaultSet(),25,0.233062506,0.681832314],[new defaultSet(),16,0.566343784,0.590923786]];
            }
            if(param2 == 2 && param3 == -5)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),30,0.366374969,0.227292538],[new defaultSet(),30,0.433031321,0.136383533],[new defaultSet(),30,0.566343784,0.136383533],[new defaultSet(),30,0.632999897,0.227292538],[new propertiesSet(),1,0.499687672,0.681836605],[new propertiesSet(),6,0.499687672,0.409110069]];
            }
            if(param2 == 2 && param3 == -6)
            {
               return [[new decalSet(),66,0.5,0.5],[new defaultSet(),12,0.233062506,0.227296352],[new defaultSet(),12,0.766312361,0.227296352],[new defaultSet(),11,0.499687672,0.500022411],[new defaultSet(),11,0.299718618,0.500022411],[new defaultSet(),11,0.699656248,0.500022411],[new defaultSet(),13,0.166406155,0.227296352],[new defaultSet(),13,0.299718618,0.136387825],[new defaultSet(),13,0.366374969,0.227296352],[new defaultSet(),13,0.632999897,0.227296352],[new defaultSet(),13,0.766312361,0.136387825],[new defaultSet(),13,0.832968712,0.227296352],[new defaultSet(),13,0.499687672,0.31820488],[new defaultSet(),13,0.632999897,0.31820488],[new defaultSet(),17,0.166406155,0.590931416],[new defaultSet(),17,0.832968712,0.590931416]];
            }
            if(param2 == 4 && param3 == -6)
            {
               return [[new decalSet(),59,0.5,0.5],[new propertiesSet(),1,0.499375343,0.863661766],[new defaultSet(),31,0.499375343,0.500022411],[new defaultSet(),29,0.899312496,0.136387825],[new defaultSet(),29,0.899312496,0.863657475],[new defaultSet(),20,0.765999794,0.136387825],[new defaultSet(),19,0.699343681,0.136387825],[new propertiesSet(),4,0.432718754,0.409113407]];
            }
            if(param2 == 3 && param3 == -4)
            {
               return [[new decalSet(),60,0.5,0.5],[new defaultSet(),2,0.499531269,0.227288723],[new defaultSet(),2,0.499531269,0.772741079],[new defaultSet(),2,0.232906103,0.318197727],[new defaultSet(),2,0.232906103,0.681832314],[new defaultSet(),18,0.299562454,0.318197727],[new defaultSet(),18,0.299562454,0.681832314],[new defaultSet(),18,0.566187382,0.681832314],[new defaultSet(),18,0.632843733,0.681832314],[new defaultSet(),18,0.699499846,0.681832314],[new defaultSet(),18,0.566187382,0.318197727],[new defaultSet(),18,0.632843733,0.318197727],[new defaultSet(),18,0.699499846,0.318197727],[new defaultSet(),27,0.16624999,0.409106255],[new defaultSet(),27,0.16624999,0.590923786],[new defaultSet(),27,0.366218805,0.409106255],[new defaultSet(),27,0.366218805,0.590923786]];
            }
            if(param2 == 4 && param3 == -4)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),14,0.632687569,0.136379957],[new defaultSet(),14,0.232749939,0.136379957],[new defaultSet(),14,0.366062641,0.0454711914],[new defaultSet(),14,0.899312496,0.0454711914],[new defaultSet(),17,0.232749939,0.409106255],[new defaultSet(),17,0.299406052,0.409106255],[new defaultSet(),17,0.366062641,0.409106255],[new defaultSet(),17,0.632687569,0.409106255],[new defaultSet(),17,0.699343681,0.409106255],[new defaultSet(),17,0.765999794,0.409106255],[new defaultSet(),17,0.699343681,0.318197727],[new defaultSet(),17,0.765999794,0.318197727],[new defaultSet(),17,0.632687569,0.318197727],[new defaultSet(),17,0.366062641,0.318197727],[new defaultSet(),17,0.299406052,0.318197727],[new defaultSet(),17,0.232749939,0.318197727],[new defaultSet(),17,0.499375343,0.318197727],[new defaultSet(),17,0.499375343,0.409106255],[new defaultSet(),10,0.499375343,0.227288723],[new propertiesSet(),5,0.499375343,0.318197727],[new defaultSet(),28,0.499375343,0.50001502]];
            }
            if(param2 == 9 && param3 == -7)
            {
               return [[new decalSet(),65,0.5,0.5],[new defaultSet(),5,0.498594284,0.500024319],[new propertiesSet(),1,0.498594284,0.681843281],[new defaultSet(),30,0.698562622,0.318208694],[new defaultSet(),30,0.698562622,0.500026226],[new defaultSet(),30,0.698562622,0.681843758],[new defaultSet(),30,0.831874847,0.59093523],[new defaultSet(),16,0.831874847,0.318208694],[new defaultSet(),27,0.498594284,0.318208694],[new defaultSet(),27,0.565249443,0.772752285],[new defaultSet(),27,0.765218735,0.409117699],[new defaultSet(),27,0.89853096,0.772752285],[new defaultSet(),18,0.298624992,0.318208694],[new defaultSet(),18,0.298624992,0.772752285]];
            }
            if(param2 == 8 && param3 == -7)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),14,0.698719025,0.0454821587],[new defaultSet(),14,0.698719025,0.954569817],[new defaultSet(),15,0.83203125,0.409117699],[new defaultSet(),15,0.83203125,0.59093523],[new defaultSet(),29,0.698719025,0.500026226],[new defaultSet(),17,0.43209362,0.681843758],[new defaultSet(),17,0.565405846,0.681843758],[new defaultSet(),17,0.43209362,0.318208694],[new defaultSet(),17,0.565405846,0.318208694]];
            }
            if(param2 == 2 && param3 == 5)
            {
               return [[new decalSet(),54,0.5,0.5],[new defaultSet(),5,0.499687672,0.409072399],[new propertiesSet(),1,0.499687672,0.13634634],[new defaultSet(),27,0.299718618,0.590889931],[new defaultSet(),27,0.166406155,0.499981403],[new defaultSet(),27,0.099750042,0.409072399],[new defaultSet(),27,0.099750042,0.318163395],[new defaultSet(),27,0.099750042,0.590889931],[new defaultSet(),27,0.166406155,0.590889931],[new defaultSet(),27,0.233062506,0.590889931],[new defaultSet(),27,0.099750042,0.499981403],[new defaultSet(),12,0.832968712,0.499981403],[new defaultSet(),12,0.632999897,0.681798935],[new defaultSet(),0,0.433031321,0.590889931],[new propertiesSet(),6,0.499687672,0.409072399]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),14,0.166406155,0.227258682],[new defaultSet(),14,0.166406155,0.772711277],[new defaultSet(),18,0.499687672,0.227258682],[new defaultSet(),18,0.499687672,0.318167686],[new defaultSet(),18,0.433031321,0.318167686],[new defaultSet(),18,0.433031321,0.227258682],[new defaultSet(),18,0.433031321,0.772711277],[new defaultSet(),18,0.433031321,0.681802273],[new defaultSet(),18,0.499687672,0.681802273],[new defaultSet(),18,0.499687672,0.772711277],[new defaultSet(),4,0.566343784,0.863619804],[new defaultSet(),4,0.632999897,0.863619804],[new defaultSet(),4,0.632999897,0.772711277],[new defaultSet(),4,0.566343784,0.772711277],[new defaultSet(),4,0.566343784,0.681802273],[new defaultSet(),4,0.632999897,0.681802273]];
            }
            if(param2 == -4 && param3 == -3)
            {
               return [[new decalSet(),65,0.5,0.5],[new defaultSet(),5,0.500624895,0.500011206],[new defaultSet(),25,0.500624895,0.318193913],[new defaultSet(),29,0.233999968,0.227284908],[new defaultSet(),29,0.767250061,0.227284908],[new propertiesSet(),6,0.500624895,0.500011206]];
            }
            if(param2 == -4 && param3 == -2)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),22,0.500624895,0.318189979],[new defaultSet(),15,0.433968782,0.409098864],[new defaultSet(),15,0.567281246,0.409098864]];
            }
            if(param2 == -5 && param3 == 0)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),10,0.767405987,0.5],[new defaultSet(),26,0.500781059,0.772726238],[new defaultSet(),17,0.700749874,0.5],[new defaultSet(),17,0.634093761,0.5],[new defaultSet(),17,0.300812721,0.5],[new defaultSet(),17,0.367468834,0.5],[new defaultSet(),17,0.434124947,0.5],[new defaultSet(),17,0.567437172,0.5],[new defaultSet(),13,0.367468834,0.772726238],[new defaultSet(),13,0.434124947,0.772726238],[new defaultSet(),13,0.434124947,0.681817472],[new defaultSet(),13,0.367468834,0.681817472],[new defaultSet(),13,0.567437172,0.681817472],[new defaultSet(),13,0.567437172,0.772726238],[new defaultSet(),13,0.634093761,0.772726238],[new defaultSet(),13,0.634093761,0.681817472],[new defaultSet(),13,0.434124947,0.590908766],[new defaultSet(),13,0.567437172,0.590908766],[new propertiesSet(),6,0.500781059,0.318182498]];
            }
            if(param2 == -5 && param3 == 1)
            {
               return [[new decalSet(),58,0.5,0.5],[new propertiesSet(),1,0.500781059,0.318176627],[new defaultSet(),29,0.167500019,0.863631129],[new defaultSet(),29,0.500781059,0.863631129],[new defaultSet(),29,0.834062576,0.863631129],[new defaultSet(),31,0.500781059,0.499996305],[new propertiesSet(),4,0.500781059,0.772724748]];
            }
            if(param2 == -4 && param3 == -1)
            {
               return [[new decalSet(),54,0.5,0.5],[new defaultSet(),26,0.233999968,0.590912461],[new defaultSet(),26,0.233999968,0.409094989],[new defaultSet(),17,0.700593948,0.318186164],[new defaultSet(),17,0.700593948,0.409094989],[new defaultSet(),17,0.700593948,0.500003755],[new defaultSet(),17,0.700593948,0.590912461]];
            }
            if(param2 == -3 && param3 == -1)
            {
               return [[new decalSet(),55,0.5,0.5],[new defaultSet(),4,0.233843565,0.227277517],[new defaultSet(),4,0.367156267,0.227277517],[new defaultSet(),4,0.300500154,0.227277517],[new defaultSet(),4,0.633781195,0.227277517],[new defaultSet(),4,0.700437546,0.227277517],[new defaultSet(),4,0.767093897,0.227277517],[new defaultSet(),11,0.500468731,0.227277517],[new defaultSet(),12,0.300500154,0.409094989],[new defaultSet(),15,0.767093897,0.409094989],[new defaultSet(),17,0.633781195,0.590912461],[new defaultSet(),17,0.367156267,0.590912461],[new defaultSet(),13,0.500468731,0.590912461],[new defaultSet(),13,0.500468731,0.500003755],[new defaultSet(),13,0.500468731,0.409094989],[new defaultSet(),13,0.83375001,0.136368811],[new defaultSet(),13,0.167187452,0.136368811]];
            }
            if(param2 == -3 && param3 == 0)
            {
               return [[new decalSet(),66,0.5,0.5],[new defaultSet(),28,0.767093897,0.227273747],[new propertiesSet(),5,0.500468731,0.5],[new defaultSet(),20,0.233843565,0.227273747],[new defaultSet(),18,0.300500154,0.772726238],[new defaultSet(),18,0.767093897,0.772726238],[new defaultSet(),19,0.233843565,0.772726238],[new defaultSet(),19,0.700437546,0.227273747],[new defaultSet(),17,0.700437546,0.772726238],[new defaultSet(),17,0.300500154,0.227273747],[new defaultSet(),29,0.167187452,0.318182498],[new defaultSet(),29,0.83375001,0.318182498],[new defaultSet(),11,0.233843565,0.681817472],[new defaultSet(),11,0.767093897,0.681817472],[new defaultSet(),11,0.500468731,0.227273747],[new defaultSet(),13,0.367156267,0.136364996],[new defaultSet(),13,0.633781195,0.136364996],[new defaultSet(),13,0.167187452,0.5],[new defaultSet(),13,0.83375001,0.5],[new defaultSet(),13,0.83375001,0.772726238],[new defaultSet(),13,0.83375001,0.863635004],[new defaultSet(),13,0.167187452,0.863635004],[new defaultSet(),13,0.167187452
               ,0.772726238]];
            }
            if(param2 == -3 && param3 == 1)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),2,0.167187452,0.318178773],[new defaultSet(),2,0.167187452,0.681813836],[new defaultSet(),2,0.167187452,0.499996305],[new defaultSet(),13,0.367156267,0.318178773],[new defaultSet(),13,0.433812618,0.318178773],[new defaultSet(),13,0.367156267,0.681813836],[new defaultSet(),13,0.433812618,0.681813836],[new defaultSet(),13,0.300500154,0.499996305],[new defaultSet(),13,0.233843565,0.499996305],[new defaultSet(),27,0.167187452,0.227270007],[new defaultSet(),27,0.233843565,0.227270007],[new defaultSet(),27,0.167187452,0.772722483],[new defaultSet(),27,0.233843565,0.772722483],[new defaultSet(),27,0.567124844,0.772722483],[new defaultSet(),27,0.567124844,0.227270007],[new defaultSet(),15,0.500468731,0.409087539],[new defaultSet(),15,0.500468731,0.590904951]];
            }
            if(param2 == -2 && param3 == 1)
            {
               return [[new decalSet(),60,0.5,0.5],[new defaultSet(),29,0.366999984,0.136361241],[new defaultSet(),29,0.366999984,0.863631129],[new defaultSet(),30,0.167031288,0.318178773],[new defaultSet(),30,0.167031288,0.681813836],[new defaultSet(),15,0.300343752,0.499996305],[new defaultSet(),17,0.500312448,0.409087539],[new defaultSet(),17,0.500312448,0.590904951]];
            }
            if(param2 == -1 && param3 == 1)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),29,0.500156224,0.499996305],[new defaultSet(),29,0.36684382,0.136361241],[new defaultSet(),29,0.36684382,0.863631129],[new defaultSet(),19,0.500156224,0.227270007],[new defaultSet(),20,0.500156224,0.772722483],[new defaultSet(),13,0.36684382,0.409087539],[new defaultSet(),13,0.36684382,0.590904951],[new defaultSet(),13,0.300187469,0.499996305]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),66,0.5,0.5],[new defaultSet(),28,0.766624987,0.772722483],[new propertiesSet(),5,0.5,0.499996305],[new defaultSet(),25,0.300031245,0.863631129],[new defaultSet(),25,0.633312523,0.863631129],[new defaultSet(),17,0.233374998,0.409087539],[new defaultSet(),17,0.766624987,0.409087539]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),13,0.233374998,0.5],[new defaultSet(),13,0.699968755,0.5],[new defaultSet(),13,0.766624987,0.5],[new defaultSet(),13,0.300031245,0.5],[new defaultSet(),13,0.366687506,0.590908766],[new defaultSet(),13,0.366687506,0.681817472],[new defaultSet(),13,0.366687506,0.772726238],[new defaultSet(),13,0.366687506,0.863635004],[new defaultSet(),13,0.5,0.863635004],[new defaultSet(),13,0.433343738,0.863635004],[new defaultSet(),13,0.566656232,0.863635004],[new defaultSet(),13,0.633312523,0.863635004],[new defaultSet(),13,0.633312523,0.772726238],[new defaultSet(),13,0.633312523,0.681817472],[new defaultSet(),13,0.633312523,0.590908766],[new defaultSet(),13,0.633312523,0.5],[new defaultSet(),30,0.5,0.772726238]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),10,0.100062512,0.227281332],[new defaultSet(),30,0.300031245,0.227277517],[new defaultSet(),30,0.300031245,0.772729993],[new defaultSet(),12,0.166718751,0.227277517],[new defaultSet(),12,0.166718751,0.772729993],[new defaultSet(),13,0.433343738,0.318186164],[new defaultSet(),13,0.366687506,0.409094989],[new defaultSet(),13,0.366687506,0.500003755],[new defaultSet(),13,0.366687506,0.590912461],[new defaultSet(),13,0.433343738,0.681821227],[new defaultSet(),13,0.100062512,0.318186164],[new defaultSet(),13,0.100062512,0.681821227],[new defaultSet(),18,0.566656232,0.227277517],[new defaultSet(),18,0.5,0.227277517],[new defaultSet(),18,0.5,0.772729993],[new defaultSet(),18,0.300031245,0.500003755]];
            }
            if(param2 == 7 && param3 == -7)
            {
               return [[new decalSet(),66,0.5,0.5],[new propertiesSet(),5,0.498906136,0.136391163],[new defaultSet(),28,0.165625095,0.227300167],[new defaultSet(),30,0.298937321,0.318208694],[new defaultSet(),30,0.698874474,0.318208694],[new defaultSet(),29,0.498906136,0.409117699],[new defaultSet(),17,0.232281685,0.59093523],[new defaultSet(),17,0.765531063,0.59093523]];
            }
            if(param2 == 7 && param3 == -4)
            {
               return [[new decalSet(),66,0.5,0.5],[new defaultSet(),28,0.232281685,0.772741079],[new propertiesSet(),5,0.498906136,0.50001502],[new defaultSet(),29,0.165625095,0.136379957],[new defaultSet(),29,0.165625095,0.863650084],[new defaultSet(),29,0.832187653,0.863650084],[new defaultSet(),29,0.832187653,0.136379957],[new defaultSet(),29,0.36559391,0.318197727],[new defaultSet(),29,0.632218838,0.318197727],[new defaultSet(),17,0.165625095,0.227288723],[new defaultSet(),17,0.232281685,0.227288723],[new defaultSet(),17,0.765531063,0.227288723],[new defaultSet(),17,0.832187653,0.227288723]];
            }
            if(param2 == 5 && param3 == -4)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),2,0.565875053,0.318197727],[new defaultSet(),2,0.565875053,0.772741079],[new defaultSet(),2,0.565875053,0.681832314],[new defaultSet(),2,0.565875053,0.227288723],[new defaultSet(),2,0.365906239,0.50001502],[new defaultSet(),13,0.432562828,0.318197727],[new defaultSet(),13,0.432562828,0.227288723],[new defaultSet(),13,0.432562828,0.681832314],[new defaultSet(),13,0.432562828,0.772741079],[new defaultSet(),13,0.165937424,0.50001502],[new defaultSet(),15,0.232594013,0.318197727],[new defaultSet(),0,0.232594013,0.681832314],[new defaultSet(),18,0.165937424,0.136379957],[new defaultSet(),18,0.165937424,0.863650084]];
            }
            if(param2 == 7 && param3 == -6)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),27,0.698874474,0.590931416],[new defaultSet(),27,0.432250023,0.681839943],[new defaultSet(),27,0.232281685,0.590931416],[new defaultSet(),27,0.232281685,0.409113407],[new defaultSet(),27,0.765531063,0.409113407],[new defaultSet(),27,0.832187653,0.590931416],[new defaultSet(),30,0.232281685,0.772748947],[new defaultSet(),30,0.765531063,0.772748947],[new defaultSet(),29,0.565562248,0.500022411]];
            }
            if(param2 == 7 && param3 == -5)
            {
               return [[new decalSet(),64,0.5,0.5]];
            }
            if(param2 == 8 && param3 == -4)
            {
               return [[new decalSet(),55,0.5,0.5],[new defaultSet(),18,0.498750687,0.409106255],[new defaultSet(),18,0.43209362,0.500013828],[new defaultSet(),18,0.498750687,0.681832314],[new defaultSet(),18,0.498750687,0.590923786],[new defaultSet(),18,0.498750687,0.318197727],[new defaultSet(),15,0.83203125,0.136379957],[new defaultSet(),15,0.83203125,0.227288723],[new defaultSet(),15,0.83203125,0.681832314],[new defaultSet(),15,0.83203125,0.772741079]];
            }
            if(param2 == 6 && param3 == -4)
            {
               return [[new decalSet(),55,0.5,0.5],[new defaultSet(),2,0.632374763,0.318197727],[new defaultSet(),2,0.632374763,0.681832314],[new defaultSet(),2,0.232437611,0.318197727],[new defaultSet(),2,0.232437611,0.681832314],[new defaultSet(),27,0.432406425,0.227288723],[new defaultSet(),27,0.432406425,0.772741079],[new defaultSet(),27,0.299093723,0.50001502],[new defaultSet(),13,0.432406425,0.409106255],[new defaultSet(),13,0.432406425,0.590923786],[new defaultSet(),13,0.565718651,0.136379957],[new defaultSet(),13,0.565718651,0.863650084],[new defaultSet(),13,0.165781498,0.50001502],[new defaultSet(),17,0.299093723,0.227288723],[new defaultSet(),17,0.299093723,0.772741079]];
            }
            if(param2 == 7 && param3 == -3)
            {
               return [[new decalSet(),64,0.5,0.5],[new defaultSet(),13,0.0989685059,0.227284908],[new defaultSet(),13,0.165625095,0.227284908],[new defaultSet(),13,0.165625095,0.136376619],[new defaultSet(),13,0.0989685059,0.136376143],[new defaultSet(),13,0.03231287,0.136376143],[new defaultSet(),13,0.36559391,0.136376143],[new defaultSet(),13,0.498906136,0.136376143],[new defaultSet(),13,0.565562248,0.136376143],[new defaultSet(),13,0.565562248,0.227284908],[new defaultSet(),13,0.432250023,0.227284908],[new defaultSet(),13,0.36559391,0.227284908],[new defaultSet(),13,0.632218838,0.136376143],[new defaultSet(),13,0.832187653,0.136376143],[new defaultSet(),13,0.965499878,0.136376143],[new defaultSet(),13,0.898843288,0.227284908],[new defaultSet(),13,0.898843288,0.772737741],[new defaultSet(),13,0.965499878,0.863646269],[new defaultSet(),13,0.765531063,0.772737741],[new defaultSet(),13,0.832187653,0.863646269],[new defaultSet(),13,0.0989685059,0.772737741],[new defaultSet(),13,0.03231287,0.863646269],[new defaultSet()
               ,13,0.03231287,0.681828737]];
            }
            if(param2 == 7 && param3 == -2)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),29,0.232281685,0.227281213],[new defaultSet(),29,0.498906136,0.136372328],[new defaultSet(),29,0.765531063,0.227281213],[new defaultSet(),30,0.432250023,0.136372328],[new defaultSet(),30,0.565562248,0.136372328],[new defaultSet(),30,0.498906136,0.318189979],[new propertiesSet(),6,0.498906136,0.409098864]];
            }
            if(param2 == 7 && param3 == -1)
            {
               return [[new decalSet(),57,0.5,0.5],[new propertiesSet(),5,0.565562248,0.772727787],[new propertiesSet(),1,0.565562248,0.318183899],[new defaultSet(),31,0.498906136,0.500003755],[new defaultSet(),15,0.698874474,0.136368811],[new defaultSet(),15,0.698874474,0.863638759],[new propertiesSet(),4,0.498906136,0.500003755]];
            }
            if(param2 == 6 && param3 == -1)
            {
               return [[new decalSet(),60,0.5,0.5],[new defaultSet(),10,0.499062538,0.772729993],[new defaultSet(),14,0.565718651,0.136368811],[new defaultSet(),14,0.632374763,0.954547524],[new defaultSet(),0,0.832343578,0.318186164],[new defaultSet(),0,0.832343578,0.681821227],[new defaultSet(),27,0.765687466,0.409094989],[new defaultSet(),27,0.765687466,0.500003755],[new defaultSet(),27,0.765687466,0.590912461]];
            }
            if(param2 == 5 && param3 == -1)
            {
               return [[new decalSet(),62,0.5,0.5],[new defaultSet(),29,0.432562828,0.500003755],[new defaultSet(),29,0.632531166,0.136368811],[new defaultSet(),29,0.632531166,0.863638759],[new defaultSet(),11,0.699187279,0.318186164],[new defaultSet(),11,0.699187279,0.681821227],[new defaultSet(),17,0.499218941,0.227277517],[new defaultSet(),17,0.499218941,0.772729993],[new propertiesSet(),5,0.499218941,0.318186164],[new defaultSet(),28,0.232594013,0.500003755]];
            }
            if(param2 == 4 && param3 == -1)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),0,0.699343681,0.227277517],[new defaultSet(),0,0.699343681,0.772729993],[new defaultSet(),0,0.699343681,0.681821227],[new defaultSet(),0,0.699343681,0.318186164],[new defaultSet(),13,0.566031456,0.227277517],[new defaultSet(),13,0.566031456,0.318186164],[new defaultSet(),13,0.566031456,0.772729993],[new defaultSet(),13,0.566031456,0.681821227],[new defaultSet(),13,0.432718754,0.409094989],[new defaultSet(),13,0.432718754,0.318186164],[new defaultSet(),13,0.432718754,0.590912461],[new defaultSet(),13,0.432718754,0.681821227]];
            }
            if(param2 == 3 && param3 == -1)
            {
               return [[new decalSet(),62,0.5,0.5],[new propertiesSet(),1,0.499531269,0.136372626],[new defaultSet(),12,0.832812548,0.681821227],[new defaultSet(),12,0.832812548,0.590912461],[new defaultSet(),12,0.832812548,0.500003755],[new defaultSet(),12,0.832812548,0.409094989],[new defaultSet(),12,0.832812548,0.318186164]];
            }
            if(param2 == 1 && param3 == -1)
            {
               return [[new decalSet(),55,0.5,0.5],[new defaultSet(),25,0.233218789,0.318186164],[new defaultSet(),25,0.233218789,0.863638759],[new defaultSet(),13,0.433187485,0.318186164],[new defaultSet(),13,0.499843836,0.318186164],[new defaultSet(),13,0.566499949,0.318186164],[new defaultSet(),13,0.566499949,0.681821227],[new defaultSet(),13,0.499843836,0.681821227],[new defaultSet(),13,0.433187485,0.681821227],[new defaultSet(),17,0.63315618,0.409094989],[new defaultSet(),17,0.63315618,0.590912461],[new defaultSet(),17,0.63315618,0.227277517],[new defaultSet(),17,0.63315618,0.772729993],[new propertiesSet(),6,0.433187485,0.500003755]];
            }
            if(param2 == 2 && param3 == -1)
            {
               return [[new decalSet(),63,0.5,0.5],[new defaultSet(),28,0.233062506,0.227275193],[new propertiesSet(),5,0.499687672,0.0454599857],[new defaultSet(),13,0.433031321,0.318186164],[new defaultSet(),13,0.566343784,0.409094989],[new defaultSet(),13,0.699656248,0.227277517],[new defaultSet(),15,0.766312361,0.500003755],[new defaultSet(),15,0.366374969,0.227277517]];
            }
            if(param2 == 2 && param3 == 0)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),27,0.366374969,0.318182498],[new defaultSet(),27,0.632999897,0.318182498],[new defaultSet(),27,0.566343784,0.318182498],[new defaultSet(),27,0.499687672,0.318182498],[new defaultSet(),27,0.433031321,0.318182498],[new defaultSet(),17,0.766312361,0.5],[new defaultSet(),17,0.233062506,0.5],[new defaultSet(),30,0.499687672,0.227273747]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),61,0.5,0.5],[new defaultSet(),21,0.499687672,0.318176031],[new defaultSet(),27,0.433031321,0.136361241],[new defaultSet(),27,0.499687672,0.136361241],[new defaultSet(),27,0.566343784,0.136361241],[new defaultSet(),27,0.632999897,0.227270007],[new defaultSet(),27,0.632999897,0.318178773],[new defaultSet(),27,0.366374969,0.227270007],[new defaultSet(),27,0.366374969,0.318178773],[new defaultSet(),14,0.766312361,0.409087539],[new defaultSet(),14,0.166406155,0.318178773],[new defaultSet(),0,0.499687672,0.772722483]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),64,0.5,0.5],[new defaultSet(),10,0.832968712,0.681806087],[new defaultSet(),14,0.699656248,0.499988794],[new defaultSet(),14,0.299718618,0.499988794],[new defaultSet(),0,0.166406155,0.863623857],[new defaultSet(),0,0.899625063,0.863623857]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),56,0.5,0.5],[new defaultSet(),27,0.499531269,0.136357546],[new defaultSet(),27,0.499531269,0.863627672],[new defaultSet(),20,0.232906103,0.863627672],[new defaultSet(),17,0.299562454,0.863627672],[new defaultSet(),29,0.366218805,0.136357546],[new defaultSet(),29,0.366218805,0.772718906],[new defaultSet(),29,0.89946866,0.499992609],[new defaultSet(),30,0.89946866,0.863627672],[new defaultSet(),30,0.89946866,0.136357546]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),55,0.5,0.5],[new propertiesSet(),0,0.499687672,0.318175077],[new defaultSet(),28,0.499687672,0.499992609],[new defaultSet(),17,0.166406155,0.863627672],[new defaultSet(),17,0.832968712,0.863627672],[new defaultSet(),17,0.832968712,0.136357546],[new defaultSet(),19,0.166406155,0.772718906],[new defaultSet(),20,0.832968712,0.227266073],[new defaultSet(),39,0.166406155,0.227266073],[new defaultSet(),40,0.166406155,0.227266073]];
            }
         }
         if(missionNum == 5)
         {
            if(param2 == 6 && param3 == -5)
            {
               return [[new decalSet(),98,0.5,0.5],[new defaultSet(),32,0.232437611,0.590927601],[new defaultSet(),32,0.765687466,0.590929031],[new defaultSet(),13,0.232437611,0.409110069],[new defaultSet(),13,0.299093723,0.318201065],[new defaultSet(),13,0.699030876,0.318201065],[new defaultSet(),13,0.765687466,0.409110069],[new defaultSet(),13,0.832343578,0.681836605],[new defaultSet(),13,0.165781498,0.772744656],[new defaultSet(),13,0.365750313,0.500018597],[new defaultSet(),18,0.165781498,0.409106255],[new defaultSet(),18,0.832343578,0.409106255],[new propertiesSet(),3,0.499062538,0.409110069],[new propertiesSet(),1,0.499062538,0.590927601]];
            }
            if(param2 == -2 && param3 == 3)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),0,0.100374937,0.863623857],[new defaultSet(),0,0.700281382,0.136353731],[new defaultSet(),11,0.233687639,0.499988794],[new defaultSet(),11,0.700281382,0.499988794],[new defaultSet(),20,0.500312448,0.136353731],[new defaultSet(),19,0.500312448,0.772715092],[new defaultSet(),33,0.433656335,0.409080029],[new defaultSet(),33,0.566968679,0.59089756],[new defaultSet(),10,0.500312448,0.499988794],[new propertiesSet(),6,0.433656335,0.409080029]];
            }
            if(param2 == -4 && param3 == 5)
            {
               return [[new decalSet(),75,0.5,0.5],[new propertiesSet(),0,0.500624895,0.13634634],[new defaultSet(),28,0.500624895,0.499981403],[new defaultSet(),17,0.833906174,0.318163395],[new defaultSet(),17,0.833906174,0.499981403],[new defaultSet(),17,0.833906174,0.409072399],[new defaultSet(),17,0.833906174,0.590889931],[new defaultSet(),17,0.833906174,0.681798935],[new defaultSet(),39,0.167343855,0.227255344],[new defaultSet(),40,0.167343855,0.227255344]];
            }
            if(param2 == -3 && param3 == 5)
            {
               return [[new decalSet(),71,0.5,0.5],[new defaultSet(),33,0.83375001,0.409072399],[new defaultSet(),33,0.83375001,0.590889931],[new defaultSet(),13,0.700437546,0.409072399],[new defaultSet(),13,0.633781195,0.409072399],[new defaultSet(),13,0.700437546,0.590889931],[new defaultSet(),13,0.633781195,0.590889931],[new defaultSet(),2,0.500468731,0.318163395],[new defaultSet(),2,0.500468731,0.681798935],[new defaultSet(),17,0.433812618,0.681798935],[new defaultSet(),17,0.433812618,0.318163395]];
            }
            if(param2 == -2 && param3 == 5)
            {
               return [[new decalSet(),74,0.5,0.5],[new defaultSet(),27,0.833593726,0.863616467],[new defaultSet(),27,0.833593726,0.772707462],[new defaultSet(),27,0.833593726,0.13634634],[new defaultSet(),27,0.766937494,0.227255344],[new defaultSet(),4,0.566968679,0.227255344],[new defaultSet(),4,0.833593726,0.318163395],[new defaultSet(),13,0.566968679,0.318163395],[new defaultSet(),32,0.633625031,0.681798935],[new defaultSet(),17,0.100374937,0.13634634],[new defaultSet(),17,0.167031288,0.13634634],[new defaultSet(),17,0.100374937,0.863616467],[new defaultSet(),17,0.167031288,0.863616467]];
            }
            if(param2 == -2 && param3 == 4)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),3,0.233687639,0.499985218],[new defaultSet(),18,0.233687639,0.772711277],[new defaultSet(),18,0.100374937,0.772711277],[new defaultSet(),18,0.366999984,0.772711277],[new defaultSet(),18,0.300343752,0.772711277],[new defaultSet(),18,0.167031288,0.772711277],[new defaultSet(),27,0.300343752,0.318167686],[new defaultSet(),27,0.300343752,0.681802273],[new defaultSet(),27,0.633625031,0.318167686],[new defaultSet(),27,0.566968679,0.409076214],[new defaultSet(),27,0.633625031,0.499985218],[new defaultSet(),27,0.566968679,0.590893745],[new defaultSet(),27,0.633625031,0.681802273],[new defaultSet(),28,0.766937494,0.499985218],[new propertiesSet(),5,0.500312448,0.318167686]];
            }
            if(param2 == -1 && param3 == 3)
            {
               return [[new decalSet(),71,0.5,0.5],[new defaultSet(),29,0.166875005,0.318171263],[new defaultSet(),29,0.166875005,0.681806087],[new defaultSet(),0,0.833437502,0.681806087],[new defaultSet(),0,0.833437502,0.318171263],[new defaultSet(),17,0.500156224,0.318171263]];
            }
            if(param2 == -1 && param3 == 5)
            {
               return [[new decalSet(),71,0.5,0.5],[new defaultSet(),29,0.36684382,0.772707462],[new defaultSet(),15,0.166875005,0.318163395],[new defaultSet(),15,0.833437502,0.681798935]];
            }
            if(param2 == -1 && param3 == -4)
            {
               return [[new decalSet(),71,0.5,0.5],[new defaultSet(),26,0.833437502,0.68183136],[new defaultSet(),10,0.833437502,0.318197727],[new defaultSet(),17,0.500156224,0.318197727],[new defaultSet(),17,0.433499992,0.318197727],[new defaultSet(),17,0.566812515,0.318197727],[new defaultSet(),26,0.166875005,0.318196058]];
            }
            if(param2 == 3 && param3 == -3)
            {
               return [[new decalSet(),74,0.5,0.5],[new defaultSet(),12,0.432875156,0.681828737],[new defaultSet(),12,0.566187382,0.681828737],[new defaultSet(),26,0.832812548,0.772737741],[new defaultSet(),26,0.16624999,0.227284908],[new defaultSet(),17,0.16624999,0.500011206],[new defaultSet(),17,0.832812548,0.500011206],[new defaultSet(),33,0.566187382,0.500011206]];
            }
            if(param2 == 3 && param3 == -4)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),11,0.432875156,0.409106255],[new defaultSet(),11,0.432875156,0.590923786],[new defaultSet(),8,0.699499846,0.318197727],[new defaultSet(),8,0.699499846,0.681832314],[new defaultSet(),29,0.632843733,0.50001502],[new defaultSet(),17,0.232906103,0.409106255],[new defaultSet(),17,0.232906103,0.50001502],[new defaultSet(),17,0.232906103,0.590923786],[new propertiesSet(),5,0.499531269,0.318197727],[new defaultSet(),28,0.232906103,0.772741079]];
            }
            if(param2 == 3 && param3 == -5)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),25,0.499531269,0.681836605],[new defaultSet(),33,0.699499846,0.500018597],[new defaultSet(),19,0.832812548,0.590927601]];
            }
            if(param2 == 0 && param3 == -5)
            {
               return [[new decalSet(),75,0.5,0.5],[new propertiesSet(),1,0.5,0.227292538],[new defaultSet(),5,0.300031245,0.500021458],[new defaultSet(),5,0.699968755,0.500021458],[new defaultSet(),25,0.5,0.409110069],[new defaultSet(),32,0.366687506,0.681836605]];
            }
            if(param2 == 2 && param3 == -5)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),8,0.233062506,0.227292538],[new defaultSet(),8,0.766312361,0.227292538],[new defaultSet(),11,0.499687672,0.500018597],[new defaultSet(),29,0.499687672,0.227292538],[new defaultSet(),18,0.299718618,0.590927601],[new defaultSet(),18,0.699656248,0.590927601],[new defaultSet(),18,0.766312361,0.590927601],[new defaultSet(),18,0.233062506,0.590927601],[new defaultSet(),19,0.233062506,0.681836605]];
            }
            if(param2 == 1 && param3 == -5)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),10,0.566499949,0.318201065],[new defaultSet(),30,0.699812531,0.500018597],[new defaultSet(),30,0.233218789,0.500018597],[new defaultSet(),32,0.299875021,0.318201065],[new defaultSet(),17,0.566499949,0.681836605],[new defaultSet(),17,0.63315618,0.681836605]];
            }
            if(param2 == -3 && param3 == -1)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),10,0.167187452,0.318186164],[new defaultSet(),32,0.233843565,0.500003755],[new defaultSet(),33,0.633781195,0.227277517],[new defaultSet(),33,0.633781195,0.772729993],[new defaultSet(),17,0.700437546,0.318186164],[new defaultSet(),17,0.700437546,0.681821227],[new propertiesSet(),6,0.500468731,0.681821227]];
            }
            if(param2 == -3 && param3 == 1)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),5,0.500468731,0.409087539],[new defaultSet(),25,0.10053134,0.863631129],[new defaultSet(),15,0.10053134,0.227270007],[new defaultSet(),19,0.233843565,0.136361241],[new defaultSet(),18,0.233843565,0.863631129],[new propertiesSet(),6,0.500468731,0.590904951],[new defaultSet(),33,0.500468731,0.136361241],[new defaultSet(),33,0.500468731,0.863631129]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),69,0.5,0.5],[new defaultSet(),32,0.766312361,0.772715092],[new defaultSet(),32,0.233062506,0.772715092],[new defaultSet(),13,0.233062506,0.499988794],[new defaultSet(),13,0.299718618,0.409080029],[new defaultSet(),13,0.832968712,0.499988794],[new defaultSet(),13,0.699656248,0.409080029],[new defaultSet(),13,0.699656248,0.59089756],[new defaultSet(),13,0.366374969,0.681806087],[new defaultSet(),20,0.166406155,0.227262259],[new defaultSet(),19,0.832968712,0.227262259],[new defaultSet(),18,0.832968712,0.318171263],[new defaultSet(),17,0.166406155,0.318171263]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),69,0.5,0.5],[new defaultSet(),33,0.832812548,0.227266073],[new defaultSet(),33,0.832812548,0.772718906],[new defaultSet(),13,0.432875156,0.227266073],[new defaultSet(),13,0.432875156,0.772718906],[new defaultSet(),13,0.632843733,0.681809902],[new defaultSet(),13,0.632843733,0.318175077],[new defaultSet(),4,0.699499846,0.409083843],[new defaultSet(),4,0.699499846,0.590901136],[new defaultSet(),32,0.566187382,0.772718906],[new defaultSet(),19,0.832812548,0.409083843],[new defaultSet(),20,0.832812548,0.499992609]];
            }
            if(param2 == 0 && param3 == 3)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),16,0.366687506,0.59089756],[new defaultSet(),16,0.833281279,0.318171263],[new defaultSet(),16,0.5,0.772715092],[new defaultSet(),30,0.366687506,0.227262259],[new defaultSet(),33,0.766624987,0.499988794],[new defaultSet(),32,0.300031245,0.681806087],[new propertiesSet(),1,0.5,0.136353731]];
            }
            if(param2 == 0 && param3 == 5)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),32,0.5,0.863616467],[new defaultSet(),33,0.766624987,0.499981403],[new defaultSet(),30,0.166718751,0.499981403],[new defaultSet(),29,0.366687506,0.590889931]];
            }
            if(param2 == 4 && param3 == 5)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),33,0.166093826,0.863616467],[new defaultSet(),33,0.832655907,0.863616467],[new defaultSet(),12,0.299406052,0.499981403],[new defaultSet(),12,0.832655907,0.499981403],[new defaultSet(),13,0.366062641,0.681798935],[new defaultSet(),13,0.699343681,0.409070015],[new defaultSet(),13,0.699343681,0.590889931],[new defaultSet(),13,0.432718754,0.318163395],[new defaultSet(),13,0.0994372368,0.13634634],[new defaultSet(),13,0.899312496,0.13634634],[new defaultSet(),13,0.899312496,0.863616467],[new defaultSet(),13,0.0994372368,0.863616467],[new defaultSet(),16,0.499375343,0.863616467],[new defaultSet(),17,0.899312496,0.681798935],[new defaultSet(),17,0.0994372368,0.681798935],[new defaultSet(),5,0.499375343,0.499981403],[new propertiesSet(),6,0.499375343,0.590889931]];
            }
            if(param2 == 0 && param3 == 4)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),32,0.233374998,0.499985218],[new defaultSet(),28,0.699968755,0.499985218],[new propertiesSet(),5,0.5,0.590893745],[new defaultSet(),2,0.633312523,0.318167686],[new defaultSet(),2,0.633312523,0.681802273]];
            }
            if(param2 == 4 && param3 == 4)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),33,0.832655907,0.227258682],[new defaultSet(),33,0.832655907,0.772711277],[new defaultSet(),8,0.632687569,0.318167686],[new defaultSet(),8,0.632687569,0.681802273],[new defaultSet(),30,0.832655907,0.499985218],[new defaultSet(),29,0.765999794,0.136350155],[new defaultSet(),18,0.432718754,0.136350155],[new defaultSet(),18,0.432718754,0.227258682],[new defaultSet(),18,0.432718754,0.863619804],[new defaultSet(),18,0.432718754,0.772711277],[new defaultSet(),19,0.366062641,0.681802273],[new defaultSet(),20,0.366062641,0.318167686],[new defaultSet(),28,0.299406052,0.499985218],[new propertiesSet(),5,0.566031456,0.590893745]];
            }
            if(param2 == 1 && param3 == 4)
            {
               return [[new decalSet(),71,0.5,0.5],[new defaultSet(),8,0.766468763,0.499986172],[new defaultSet(),2,0.499843836,0.318170071],[new defaultSet(),14,0.699812531,0.136347294],[new defaultSet(),14,0.699812531,0.863616943],[new defaultSet(),17,0.166562557,0.318167686],[new defaultSet(),17,0.433187485,0.318167686],[new defaultSet(),17,0.433187485,0.681802273],[new defaultSet(),17,0.166562557,0.681802273],[new defaultSet(),2,0.499843836,0.681802273]];
            }
            if(param2 == 3 && param3 == 4)
            {
               return [[new decalSet(),71,0.5,0.5],[new defaultSet(),12,0.832812548,0.318167686],[new defaultSet(),12,0.766156435,0.409076214],[new defaultSet(),12,0.766156435,0.590893745],[new defaultSet(),12,0.832812548,0.681802273],[new defaultSet(),14,0.632843733,0.136350155],[new defaultSet(),14,0.632843733,0.863619804]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),73,0.5,0.5],[new defaultSet(),32,0.632999897,0.499986172],[new defaultSet(),32,0.366374969,0.499986172],[new propertiesSet(),5,0.499687672,0.136350155],[new defaultSet(),28,0.499687672,0.681802273],[new defaultSet(),17,0.832968712,0.681802273],[new defaultSet(),17,0.166406155,0.681802273]];
            }
            if(param2 == -2 && param3 == -4)
            {
               return [[new decalSet(),68,0.5,0.5],[new propertiesSet(),5,0.500312448,0.227288723],[new defaultSet(),28,0.500312448,0.50001502],[new defaultSet(),17,0.500312448,0.409106255],[new defaultSet(),17,0.500312448,0.590923786],[new defaultSet(),18,0.566968679,0.50001502],[new defaultSet(),18,0.433656335,0.50001502],[new defaultSet(),17,0.433656335,0.409106255],[new defaultSet(),17,0.566968679,0.590923786],[new defaultSet(),19,0.566968679,0.409106255],[new defaultSet(),20,0.433656335,0.590923786],[new defaultSet(),12,0.167031288,0.50001502],[new defaultSet(),12,0.500312448,0.136379957],[new defaultSet(),12,0.500312448,0.863650084],[new defaultSet(),27,0.500312448,0.772741079],[new defaultSet(),27,0.433656335,0.772741079],[new defaultSet(),27,0.300343752,0.863650084],[new defaultSet(),27,0.100374937,0.318197727],[new defaultSet(),27,0.167031288,0.136379957]];
            }
            if(param2 == -2 && param3 == -3)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),6,0.500312448,0.500011206],[new defaultSet(),15,0.833593726,0.227284908],[new defaultSet(),15,0.167031288,0.772737741],[new defaultSet(),29,0.167031288,0.227284908],[new defaultSet(),29,0.833593726,0.772737741],[new defaultSet(),30,0.366999984,0.227284908],[new defaultSet(),30,0.700281382,0.681828737],[new defaultSet(),18,0.833593726,0.500011206],[new defaultSet(),18,0.167031288,0.500011206]];
            }
            if(param2 == -2 && param3 == -2)
            {
               return [[new decalSet(),72,0.5,0.5],[new defaultSet(),17,0.633625031,0.136372328],[new defaultSet(),17,0.566968679,0.136372328],[new defaultSet(),17,0.433656335,0.136372328],[new defaultSet(),17,0.366999984,0.136372328],[new defaultSet(),17,0.433656335,0.227281213],[new defaultSet(),17,0.566968679,0.227281213],[new propertiesSet(),1,0.500312448,0.681825042],[new defaultSet(),32,0.366999984,0.50000751]];
            }
            if(param2 == 2 && param3 == -4)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),2,0.166406155,0.136379957],[new defaultSet(),2,0.832968712,0.136379957],[new defaultSet(),13,0.166406155,0.227288723],[new defaultSet(),13,0.233062506,0.136379957],[new defaultSet(),13,0.766312361,0.136379957],[new defaultSet(),13,0.832968712,0.227288723],[new defaultSet(),11,0.233062506,0.50001502],[new defaultSet(),11,0.699656248,0.409106255],[new defaultSet(),11,0.699656248,0.590923786],[new defaultSet(),19,0.499687672,0.50001502],[new defaultSet(),18,0.433031321,0.50001502],[new defaultSet(),17,0.566343784,0.50001502]];
            }
            if(param2 == 1 && param3 == -4)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),28,0.499843836,0.50001502],[new propertiesSet(),5,0.499843836,0.590923786],[new defaultSet(),29,0.299875021,0.318197727],[new defaultSet(),29,0.766468763,0.318197727],[new defaultSet(),33,0.299875021,0.681832314],[new defaultSet(),33,0.766468763,0.681832314],[new defaultSet(),30,0.499843836,0.318197727],[new defaultSet(),17,0.566499949,0.50001502],[new defaultSet(),17,0.433187485,0.50001502],[new defaultSet(),17,0.63315618,0.50001502],[new defaultSet(),17,0.366531253,0.50001502]];
            }
            if(param2 == 0 && param3 == -4)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),2,0.366687506,0.50001502],[new defaultSet(),2,0.633312523,0.50001502],[new defaultSet(),2,0.633312523,0.318197727],[new defaultSet(),2,0.633312523,0.681832314],[new defaultSet(),2,0.366687506,0.318197727],[new defaultSet(),2,0.366687506,0.681832314],[new defaultSet(),13,0.433343738,0.409106255],[new defaultSet(),13,0.433343738,0.590923786],[new defaultSet(),13,0.566656232,0.590923786],[new defaultSet(),13,0.566656232,0.409106255],[new defaultSet(),8,0.766624987,0.50001502],[new defaultSet(),8,0.233374998,0.50001502],[new defaultSet(),29,0.699968755,0.227288723]];
            }
            if(param2 == 0 && param3 == -3)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),2,0.699968755,0.40910244],[new defaultSet(),2,0.699968755,0.500011206],[new defaultSet(),2,0.699968755,0.590919971],[new defaultSet(),2,0.166718751,0.681828737],[new defaultSet(),8,0.566656232,0.500011206],[new defaultSet(),15,0.300031245,0.681828737],[new defaultSet(),15,0.300031245,0.318193913],[new defaultSet(),15,0.833281279,0.500011206],[new defaultSet(),17,0.233374998,0.500011206]];
            }
            if(param2 == 2 && param3 == -3)
            {
               return [[new decalSet(),74,0.5,0.5],[new defaultSet(),2,0.366374969,0.500011206],[new defaultSet(),2,0.433031321,0.500011206],[new defaultSet(),2,0.566343784,0.500011206],[new defaultSet(),2,0.632999897,0.500011206],[new defaultSet(),15,0.233062506,0.681828737],[new defaultSet(),15,0.433031321,0.681828737],[new defaultSet(),15,0.566343784,0.681828737],[new defaultSet(),15,0.766312361,0.681828737],[new defaultSet(),29,0.499687672,0.318193913],[new defaultSet(),17,0.699656248,0.318193913],[new defaultSet(),17,0.699656248,0.227284908]];
            }
            if(param2 == 1 && param3 == -3)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),32,0.299875021,0.500011206],[new defaultSet(),32,0.699812531,0.500011206],[new defaultSet(),30,0.499843836,0.227284908],[new defaultSet(),20,0.233218789,0.318193913],[new defaultSet(),19,0.766468763,0.772737741],[new defaultSet(),33,0.499843836,0.40910244]];
            }
            if(param2 == 1 && param3 == -2)
            {
               return [[new decalSet(),72,0.5,0.5],[new defaultSet(),26,0.499843836,0.136372328],[new defaultSet(),15,0.366531253,0.136372328],[new defaultSet(),15,0.63315618,0.136372328],[new propertiesSet(),1,0.499843836,0.681825042],[new defaultSet(),11,0.366531253,0.863642454],[new defaultSet(),11,0.63315618,0.863642454]];
            }
            if(param2 == 7 && param3 == -4)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),15,0.565562248,0.136379957],[new defaultSet(),15,0.565562248,0.863650084],[new defaultSet(),15,0.36559391,0.50001502],[new defaultSet(),0,0.432250023,0.318197727],[new defaultSet(),0,0.432250023,0.772741079],[new defaultSet(),12,0.565562248,0.50001502],[new defaultSet(),13,0.698874474,0.50001502],[new defaultSet(),13,0.698874474,0.136379957],[new defaultSet(),13,0.698874474,0.863650084],[new defaultSet(),13,0.832187653,0.50001502],[new defaultSet(),13,0.832187653,0.136379957],[new defaultSet(),13,0.832187653,0.863650084],[new defaultSet(),13,0.832187653,0.318197727],[new defaultSet(),13,0.832187653,0.681832314],[new defaultSet(),18,0.36559391,0.227288723],[new defaultSet(),18,0.36559391,0.772741079],[new defaultSet(),18,0.36559391,0.136379957]];
            }
            if(param2 == 5 && param3 == -4)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),30,0.699187279,0.227288723],[new defaultSet(),30,0.699187279,0.772741079],[new defaultSet(),30,0.299250126,0.863650084],[new defaultSet(),30,0.299250126,0.136379957],[new defaultSet(),30,0.232594013,0.227288723],[new defaultSet(),30,0.232594013,0.772741079],[new defaultSet(),32,0.299250126,0.50001502],[new defaultSet(),16,0.632531166,0.50001502],[new defaultSet(),16,0.165937424,0.772741079],[new defaultSet(),16,0.699187279,0.681832314],[new propertiesSet(),6,0.432562828,0.409106255]];
            }
            if(param2 == 6 && param3 == -4)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),28,0.499062538,0.50001502],[new propertiesSet(),5,0.499062538,0.590923786],[new defaultSet(),32,0.232437611,0.227288723],[new defaultSet(),32,0.765687466,0.227288723],[new defaultSet(),33,0.499062538,0.318197727],[new defaultSet(),30,0.232437611,0.681832314],[new defaultSet(),29,0.832343578,0.681832314],[new defaultSet(),19,0.765687466,0.409106255],[new defaultSet(),18,0.299093723,0.409106255]];
            }
            if(param2 == 6 && param3 == -3)
            {
               return [[new decalSet(),72,0.5,0.5],[new defaultSet(),29,0.299093723,0.318193913],[new defaultSet(),29,0.699030876,0.318193913],[new defaultSet(),29,0.699030876,0.681828737],[new defaultSet(),29,0.299093723,0.681828737]];
            }
            if(param2 == 6 && param3 == -2)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),22,0.499062538,0.590916157],[new defaultSet(),33,0.165781498,0.318189979],[new defaultSet(),32,0.832343578,0.318189979],[new defaultSet(),30,0.165781498,0.681825042],[new defaultSet(),29,0.832343578,0.681825042]];
            }
            if(param2 == 7 && param3 == -1)
            {
               return [[new decalSet(),74,0.5,0.5],[new defaultSet(),32,0.565562248,0.227277517],[new defaultSet(),32,0.565562248,0.772729993],[new defaultSet(),4,0.432250023,0.227277517],[new defaultSet(),4,0.432250023,0.318186164],[new defaultSet(),4,0.432250023,0.681821227],[new defaultSet(),4,0.432250023,0.772729993],[new defaultSet(),4,0.765531063,0.227277517],[new defaultSet(),4,0.765531063,0.318186164],[new defaultSet(),4,0.765531063,0.681821227],[new defaultSet(),4,0.765531063,0.772729993],[new defaultSet(),4,0.165625095,0.86363709],[new defaultSet(),4,0.165625095,0.136369824],[new defaultSet(),13,0.298937321,0.227277517],[new defaultSet(),13,0.298937321,0.772729993]];
            }
            if(param2 == 6 && param3 == -1)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),28,0.699030876,0.863638759],[new propertiesSet(),5,0.499062538,0.863638759],[new defaultSet(),33,0.499062538,0.136368811],[new defaultSet(),33,0.832343578,0.136368811],[new defaultSet(),33,0.832343578,0.500003755],[new defaultSet(),33,0.499062538,0.500003755],[new defaultSet(),32,0.632374763,0.500003755]];
            }
            if(param2 == 5 && param3 == -1)
            {
               return [[new decalSet(),70,0.5,0.5],[new defaultSet(),12,0.099281311,0.409094989],[new defaultSet(),12,0.099281311,0.500003755],[new defaultSet(),12,0.099281311,0.590912461],[new defaultSet(),33,0.765843391,0.500003755],[new defaultSet(),10,0.499218941,0.318186164]];
            }
            if(param2 == 5 && param3 == 0)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),29,0.632531166,0.136364996],[new defaultSet(),29,0.632531166,0.863635004],[new defaultSet(),29,0.365906239,0.5],[new defaultSet(),33,0.699187279,0.5],[new defaultSet(),12,0.365906239,0.227273747],[new defaultSet(),28,0.365906239,0.681817472],[new propertiesSet(),5,0.499218941,0.409091264]];
            }
            if(param2 == -2 && param3 == -1)
            {
               return [[new decalSet(),69,0.5,0.5],[new defaultSet(),12,0.366999984,0.500003755],[new defaultSet(),12,0.300343752,0.500003755],[new defaultSet(),12,0.633625031,0.500003755],[new defaultSet(),12,0.700281382,0.500003755],[new defaultSet(),33,0.233687639,0.681821227],[new defaultSet(),33,0.766937494,0.681821227],[new defaultSet(),30,0.500312448,0.772729993],[new defaultSet(),17,0.233687639,0.318186164],[new defaultSet(),17,0.766937494,0.318186164]];
            }
            if(param2 == -2 && param3 == 1)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),30,0.300343752,0.318178773],[new defaultSet(),30,0.300343752,0.681813836],[new defaultSet(),30,0.300343752,0.499996305],[new defaultSet(),30,0.167031288,0.499996305],[new defaultSet(),20,0.633625031,0.227270007],[new defaultSet(),20,0.633625031,0.772722483],[new defaultSet(),19,0.633625031,0.681813836],[new defaultSet(),17,0.633625031,0.318178773]];
            }
            if(param2 == -2 && param3 == 0)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),28,0.500312448,0.5],[new propertiesSet(),5,0.500312448,0.318182498],[new defaultSet(),7,0.233687639,0.5],[new defaultSet(),7,0.700281382,0.5],[new defaultSet(),27,0.766937494,0.590908766],[new defaultSet(),27,0.167031288,0.590908766],[new defaultSet(),27,0.300343752,0.590908766],[new defaultSet(),27,0.633625031,0.590908766],[new defaultSet(),27,0.633625031,0.409091264],[new defaultSet(),27,0.766937494,0.409091264],[new defaultSet(),27,0.300343752,0.409091264],[new defaultSet(),27,0.167031288,0.409091264],[new defaultSet(),30,0.433656335,0.681817472]];
            }
            if(param2 == -1 && param3 == 1)
            {
               return [[new decalSet(),71,0.5,0.5],[new defaultSet(),11,0.500156224,0.318178773],[new defaultSet(),11,0.500156224,0.681813836],[new defaultSet(),13,0.500156224,0.409087539],[new defaultSet(),13,0.500156224,0.590904951],[new defaultSet(),13,0.433499992,0.590904951],[new defaultSet(),13,0.433499992,0.409087539],[new defaultSet(),13,0.36684382,0.409087539],[new defaultSet(),13,0.36684382,0.499996305],[new defaultSet(),13,0.36684382,0.590904951],[new defaultSet(),8,0.233531296,0.499996305],[new defaultSet(),28,0.633468747,0.499996305],[new propertiesSet(),5,0.566812515,0.409087539]];
            }
            if(param2 == 1 && param3 == 1)
            {
               return [[new decalSet(),73,0.5,0.5],[new defaultSet(),12,0.299875021,0.499996305],[new defaultSet(),11,0.433187485,0.499996305],[new defaultSet(),11,0.566499949,0.499996305],[new defaultSet(),13,0.433187485,0.590904951],[new defaultSet(),13,0.366531253,0.590904951],[new defaultSet(),13,0.566499949,0.590904951],[new defaultSet(),13,0.63315618,0.590904951],[new defaultSet(),15,0.433187485,0.409087539],[new defaultSet(),20,0.899781227,0.590904951],[new defaultSet(),19,0.899781227,0.499996305],[new defaultSet(),17,0.899781227,0.409087539],[new defaultSet(),18,0.966437578,0.409087539],[new defaultSet(),18,0.966437578,0.499996305],[new defaultSet(),18,0.966437578,0.590904951]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),73,0.5,0.5],[new defaultSet(),11,0.5,0.681813836],[new defaultSet(),13,0.433343738,0.590904951],[new defaultSet(),13,0.566656232,0.590904951],[new defaultSet(),13,0.633312523,0.590904951],[new defaultSet(),13,0.366687506,0.590904951],[new defaultSet(),15,0.366687506,0.499996305],[new defaultSet(),19,0.433343738,0.227270007],[new defaultSet(),20,0.566656232,0.227270007]];
            }
            if(param2 == 1 && param3 == 0)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),28,0.499843836,0.5],[new propertiesSet(),5,0.499843836,0.590908766],[new defaultSet(),29,0.166562557,0.409091264],[new defaultSet(),29,0.299875021,0.227273747],[new defaultSet(),29,0.699812531,0.227273747],[new defaultSet(),29,0.833124995,0.409091264],[new defaultSet(),29,0.833124995,0.772726238],[new defaultSet(),29,0.166562557,0.772726238],[new defaultSet(),18,0.299875021,0.409091264],[new defaultSet(),18,0.299875021,0.5],[new defaultSet(),18,0.299875021,0.590908766],[new defaultSet(),18,0.299875021,0.681817472],[new defaultSet(),18,0.699812531,0.409091264],[new defaultSet(),18,0.699812531,0.5],[new defaultSet(),18,0.699812531,0.590908766],[new defaultSet(),18,0.699812531,0.681817472],[new defaultSet(),12,0.366531253,0.318182498],[new defaultSet(),12,0.63315618,0.318182498]];
            }
            if(param2 == 1 && param3 == -1)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),13,0.366531253,0.318186164],[new defaultSet(),13,0.299875021,0.409094989],[new defaultSet(),13,0.63315618,0.318186164],[new defaultSet(),13,0.699812531,0.409094989],[new defaultSet(),13,0.833124995,0.318186164],[new defaultSet(),13,0.233218789,0.500003755],[new defaultSet(),13,0.233218789,0.772729993],[new defaultSet(),13,0.766468763,0.681821227],[new defaultSet(),13,0.833124995,0.590912461],[new defaultSet(),13,0.233218789,0.318186164],[new defaultSet(),12,0.233218789,0.590912461],[new defaultSet(),33,0.699812531,0.500003755],[new propertiesSet(),6,0.499843836,0.500003755]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),68,0.5,0.5],[new defaultSet(),32,0.300031245,0.318186164],[new defaultSet(),32,0.300031245,0.681821227],[new defaultSet(),29,0.5,0.500003755],[new defaultSet(),15,0.433343738,0.227277517],[new defaultSet(),19,0.166718751,0.590912461]];
            }
            if(param2 == 2 && param3 == -1)
            {
               return [[new decalSet(),74,0.5,0.5],[new defaultSet(),15,0.366374969,0.227277517],[new defaultSet(),15,0.566343784,0.227277517],[new defaultSet(),15,0.766312361,0.227277517],[new defaultSet(),8,0.166406155,0.590912461],[new defaultSet(),8,0.832968712,0.590912461],[new defaultSet(),20,0.366374969,0.590912461],[new defaultSet(),19,0.433031321,0.590912461],[new defaultSet(),17,0.566343784,0.590912461],[new defaultSet(),18,0.632999897,0.590912461]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),10,0.433343738,0.409091264],[new defaultSet(),32,0.300031245,0.5],[new defaultSet(),32,0.699968755,0.5],[new defaultSet(),29,0.166718751,0.681817472],[new defaultSet(),15,0.766624987,0.681817472],[new defaultSet(),19,0.633312523,0.681817472],[new defaultSet(),20,0.699968755,0.318182498]];
            }
            if(param2 == 2 && param3 == 0)
            {
               return [[new decalSet(),67,0.5,0.5],[new defaultSet(),8,0.699656248,0.318182498],[new defaultSet(),8,0.699656248,0.681817472],[new defaultSet(),8,0.233062506,0.681817472],[new defaultSet(),8,0.233062506,0.318182498],[new defaultSet(),29,0.433031321,0.5],[new defaultSet(),29,0.566343784,0.5]];
            }
            if(param2 == 4 && param3 == 0)
            {
               return [[new decalSet(),74,0.5,0.5],[new defaultSet(),32,0.432718754,0.5],[new defaultSet(),27,0.765999794,0.227273747],[new defaultSet(),27,0.765999794,0.772726238],[new defaultSet(),27,0.765999794,0.5],[new defaultSet(),2,0.632687569,0.5],[new defaultSet(),2,0.566031456,0.5],[new defaultSet(),20,0.0994372368,0.136364996],[new defaultSet(),19,0.166093826,0.136364996],[new defaultSet(),18,0.0994372368,0.863635004],[new defaultSet(),17,0.166093826,0.863635004],[new defaultSet(),17,0.632687569,0.227273747],[new defaultSet(),17,0.632687569,0.772726238]];
            }
            if(param2 == 3 && param3 == 0)
            {
               return [[new decalSet(),70,0.5,0.5],[new defaultSet(),28,0.499531269,0.318182498],[new propertiesSet(),5,0.499531269,0.681817472],[new defaultSet(),32,0.299562454,0.5],[new defaultSet(),32,0.699499846,0.5]];
            }
            if(param2 == 3 && param3 == 1)
            {
               return [[new decalSet(),72,0.5,0.5],[new defaultSet(),29,0.299562454,0.499996305],[new defaultSet(),29,0.699499846,0.499996305],[new defaultSet(),17,0.366218805,0.136361241],[new defaultSet(),11,0.632843733,0.136361241]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),75,0.5,0.5],[new defaultSet(),28,0.499687672,0.499992609],[new defaultSet(),21,0.233062506,0.318175077],[new defaultSet(),23,0.233062506,0.772718906],[new defaultSet(),21,0.766312361,0.772718906],[new defaultSet(),23,0.766312361,0.318175077],[new defaultSet(),10,0.166406155,0.863627672],[new propertiesSet(),5,0.499687672,0.590901136],[new defaultSet(),12,0.366374969,0.318175077],[new defaultSet(),12,0.632999897,0.318175077],[new defaultSet(),12,0.499687672,0.227266073],[new propertiesSet(),6,0.499687672,0.409083843]];
            }
         }
         if(missionNum == 6)
         {
            if(param2 == -6 && param3 == 12)
            {
               return [[new decalSet(),14,0.5,0.5],[new defaultSet(),5,0.500937462,0.499955177],[new defaultSet(),34,0.434281349,0.409046173],[new defaultSet(),34,0.434281349,0.772681236],[new defaultSet(),0,0.367625237,0.227229118],[new defaultSet(),0,0.367625237,0.772681236],[new defaultSet(),12,0.234312534,0.318137169],[new defaultSet(),12,0.234312534,0.681773186]];
            }
            if(param2 == -10 && param3 == 12)
            {
               return [[new decalSet(),77,0.5,0.5],[new defaultSet(),32,0.568219185,0.772681236],[new defaultSet(),32,0.568219185,0.409044266],[new defaultSet(),32,0.568219185,0.590864182],[new defaultSet(),35,0.70153141,0.499955177],[new defaultSet(),35,0.70153141,0.86359024],[new defaultSet(),35,0.768187523,0.590864182],[new defaultSet(),35,0.768187523,0.772681236],[new propertiesSet(),3,0.568219185,0.590864182]];
            }
            if(param2 == -10 && param3 == 11)
            {
               return [[new decalSet(),13,0.5,0.5],[new defaultSet(),27,0.501562119,0.590867043],[new defaultSet(),27,0.434906006,0.590867043],[new defaultSet(),27,0.568219185,0.590867043],[new defaultSet(),35,0.434906006,0.772685051],[new defaultSet(),35,0.501562119,0.772685051],[new defaultSet(),35,0.568219185,0.772685051],[new defaultSet(),35,0.834843636,0.772685051],[new defaultSet(),35,0.168281555,0.772685051],[new defaultSet(),33,0.501562119,0.863593102],[new propertiesSet(),1,0.501562119,0.681776047]];
            }
            if(param2 == -10 && param3 == 10)
            {
               return [[new decalSet(),4,0.5,0.5],[new defaultSet(),35,0.234937668,0.590870857],[new defaultSet(),35,0.168281555,0.86359787],[new defaultSet(),35,0.434906006,0.772688866],[new defaultSet(),35,0.501562119,0.590870857],[new defaultSet(),35,0.70153141,0.681779861],[new defaultSet(),35,0.834843636,0.681779861],[new defaultSet(),35,0.834843636,0.772688866],[new defaultSet(),35,0.568219185,0.954506874],[new defaultSet(),35,0.301593781,0.86359787],[new defaultSet(),35,0.301593781,0.681779861],[new defaultSet(),35,0.634874344,0.499962807],[new defaultSet(),35,0.70153141,0.86359787],[new defaultSet(),30,0.368249893,0.86359787],[new defaultSet(),30,0.70153141,0.86359787],[new defaultSet(),10,0.101625443,0.227235794],[new propertiesSet(),6,0.501562119,0.499962807]];
            }
            if(param2 == -10 && param3 == 9)
            {
               return [[new decalSet(),7,0.5,0.5],[new propertiesSet(),5,0.501562119,0.318148613],[new defaultSet(),28,0.501562119,0.499966621],[new defaultSet(),0,0.234937668,0.681783676],[new defaultSet(),0,0.101625443,0.227239609],[new defaultSet(),0,0.501562119,0.227239609],[new defaultSet(),0,0.501562119,0.77269268],[new defaultSet(),34,0.368249893,0.681783676],[new defaultSet(),34,0.568219185,0.409057617]];
            }
            if(param2 == -9 && param3 == 9)
            {
               return [[new decalSet(),5,0.5,0.5],[new defaultSet(),34,0.368093491,0.227239609],[new defaultSet(),34,0.301437378,0.863601685],[new defaultSet(),35,0.234781265,0.409057617],[new defaultSet(),35,0.501405716,0.227239609],[new defaultSet(),35,0.501405716,0.954510689],[new defaultSet(),35,0.168125153,0.681783676],[new defaultSet(),35,0.168125153,0.227239609]];
            }
            if(param2 == -8 && param3 == 9)
            {
               return [[new decalSet(),12,0.5,0.5],[new defaultSet(),33,0.301280975,0.499966621],[new propertiesSet(),1,0.50124979,0.409057617],[new defaultSet(),28,0.434594154,0.318148613],[new propertiesSet(),5,0.50124979,0.590875626]];
            }
            if(param2 == -7 && param3 == 9)
            {
               return [[new decalSet(),6,0.5,0.5],[new defaultSet(),34,0.234468937,0.590875626],[new defaultSet(),34,0.234468937,0.954510689],[new defaultSet(),34,0.501093864,0.227239609]];
            }
            if(param2 == -6 && param3 == 8)
            {
               return [[new decalSet(),2,0.5,0.5],[new defaultSet(),28,0.500937462,0.499970436],[new propertiesSet(),5,0.500937462,0.409061432],[new defaultSet(),35,0.167656422,0.499970436],[new defaultSet(),35,0.300969124,0.227243423],[new defaultSet(),35,0.567593575,0.227243423],[new defaultSet(),35,0.767562389,0.227243423],[new defaultSet(),35,0.834218502,0.318152428],[new defaultSet(),35,0.900875092,0.499970436],[new defaultSet(),34,0.300969124,0.409061432],[new defaultSet(),34,0.767562389,0.409061432],[new defaultSet(),34,0.500937462,0.318152428],[new defaultSet(),32,0.167656422,0.681787491],[new defaultSet(),10,0.234312534,0.136335373]];
            }
            if(param2 == -6 && param3 == 10)
            {
               return [[new decalSet(),1,0.5,0.5],[new defaultSet(),8,0.167656422,0.590870857],[new defaultSet(),8,0.767562389,0.590870857],[new defaultSet(),8,0.500937462,0.772688866],[new defaultSet(),30,0.367625237,0.681779861],[new defaultSet(),30,0.634249687,0.681779861]];
            }
            if(param2 == -6 && param3 == 9)
            {
               return [[new decalSet(),9,0.5,0.5],[new defaultSet(),15,0.101000309,0.499966621],[new defaultSet(),15,0.500937462,0.136331558],[new defaultSet(),15,0.500937462,0.863601685],[new propertiesSet(),6,0.500937462,0.499966621]];
            }
            if(param2 == -5 && param3 == 9)
            {
               return [[new decalSet(),5,0.5,0.5],[new defaultSet(),3,0.234156609,0.499966621],[new defaultSet(),27,0.367468834,0.227239609],[new defaultSet(),27,0.367468834,0.77269268],[new defaultSet(),27,0.500781059,0.227239609],[new defaultSet(),27,0.500781059,0.77269268],[new defaultSet(),27,0.300812721,0.409057617],[new defaultSet(),27,0.300812721,0.590875626],[new defaultSet(),27,0.634093761,0.77269268],[new defaultSet(),27,0.634093761,0.318148613],[new defaultSet(),28,0.700749874,0.499966621],[new propertiesSet(),5,0.500781059,0.681783676]];
            }
            if(param2 == -4 && param3 == 9)
            {
               return [[new decalSet(),4,0.5,0.5],[new defaultSet(),34,0.167343855,0.227239609],[new defaultSet(),34,0.900562763,0.227239609],[new defaultSet(),34,0.36731267,0.227239609],[new defaultSet(),34,0.700593948,0.227239609],[new defaultSet(),34,0.433968782,0.409057617],[new defaultSet(),34,0.633937359,0.409057617]];
            }
            if(param2 == -4 && param3 == 10)
            {
               return [[new decalSet(),13,0.5,0.5],[new defaultSet(),35,0.233999968,0.318144798],[new defaultSet(),35,0.30065608,0.227235794],[new defaultSet(),35,0.567281246,0.227235794],[new defaultSet(),35,0.700593948,0.318144798],[new defaultSet(),35,0.833906174,0.409053802],[new defaultSet(),35,0.700593948,0.409053802],[new defaultSet(),35,0.500624895,0.409053802],[new defaultSet(),35,0.30065608,0.499962807],[new defaultSet(),35,0.233999968,0.681779861],[new defaultSet(),35,0.36731267,0.318144798],[new defaultSet(),35,0.767250061,0.590870857]];
            }
            if(param2 == -5 && param3 == 11)
            {
               return [[new decalSet(),3,0.5,0.5],[new defaultSet(),13,0.100843906,0.227232933],[new defaultSet(),13,0.234156609,0.318141937],[new defaultSet(),13,0.100843906,0.499958038],[new defaultSet(),13,0.100843906,0.409049034],[new defaultSet(),13,0.234156609,0.499958038],[new defaultSet(),13,0.167500019,0.681776047],[new defaultSet(),13,0.100843906,0.772685051],[new defaultSet(),13,0.234156609,0.772685051],[new defaultSet(),35,0.434124947,0.499958038],[new defaultSet(),35,0.634093761,0.227232933],[new defaultSet(),35,0.500781059,0.499958038],[new defaultSet(),35,0.634093761,0.681776047],[new defaultSet(),35,0.434124947,0.772685051],[new defaultSet(),35,0.634093761,0.499958038],[new defaultSet(),35,0.234156609,0.227232933]];
            }
            if(param2 == -5 && param3 == 12)
            {
               return [[new decalSet(),2,0.5,0.5],[new defaultSet(),35,0.167500019,0.590864182],[new defaultSet(),35,0.367468834,0.409046173],[new defaultSet(),35,0.367468834,0.590864182],[new defaultSet(),35,0.234156609,0.772681236],[new defaultSet(),35,0.434124947,0.86359024],[new defaultSet(),35,0.634093761,0.409046173],[new defaultSet(),35,0.700749874,0.318137169],[new defaultSet(),35,0.767405987,0.590864182],[new defaultSet(),35,0.567437172,0.772681236],[new defaultSet(),35,0.834062576,0.681773186],[new defaultSet(),35,0.834062576,0.318137169],[new defaultSet(),35,0.500781059,0.227229118],[new defaultSet(),35,0.634093761,0.86359024],[new defaultSet(),13,0.567437172,0.499955177],[new defaultSet(),13,0.700749874,0.318137169],[new defaultSet(),13,0.167500019,0.318137169],[new defaultSet(),13,0.367468834,0.590864182],[new defaultSet(),13,0.100843906,0.772681236],[new defaultSet(),10,0.834062576,0.772681236],[new defaultSet(),28,0.500781059,0.499955177],[new propertiesSet(),5,0.500781059,0.590864182]];
            }
            if(param2 == -4 && param3 == 12)
            {
               return [[new decalSet(),5,0.5,0.5],[new defaultSet(),32,0.30065608,0.499955177],[new defaultSet(),32,0.700593948,0.499955177],[new defaultSet(),26,0.167343855,0.227229118]];
            }
            if(param2 == -4 && param3 == 11)
            {
               return [[new decalSet(),7,0.5,0.5],[new propertiesSet(),5,0.500624895,0.590867043],[new defaultSet(),28,0.500624895,0.499958038],[new defaultSet(),34,0.233999968,0.772685051],[new defaultSet(),34,0.167343855,0.499958038],[new defaultSet(),35,0.36731267,0.409049034],[new defaultSet(),35,0.633937359,0.590867043],[new defaultSet(),35,0.30065608,0.863593102],[new defaultSet(),35,0.36731267,0.590867043]];
            }
            if(param2 == -3 && param3 == 11)
            {
               return [[new decalSet(),12,0.5,0.5],[new defaultSet(),30,0.167187452,0.499958038],[new defaultSet(),30,0.367156267,0.318141937]];
            }
            if(param2 == -2 && param3 == 11)
            {
               return [[new decalSet(),12,0.5,0.5],[new defaultSet(),15,0.433656335,0.318141937],[new defaultSet(),15,0.500312448,0.499958038],[new defaultSet(),15,0.300343752,0.499958038],[new propertiesSet(),1,0.500312448,0.590867043],[new defaultSet(),28,0.500312448,0.318141937],[new propertiesSet(),5,0.500312448,0.318141937]];
            }
            if(param2 == 1 && param3 == 12)
            {
               return [[new decalSet(),14,0.5,0.5],[new defaultSet(),2,0.299875021,0.772681236],[new defaultSet(),2,0.699812531,0.772681236],[new defaultSet(),2,0.499843836,0.772681236],[new defaultSet(),17,0.299875021,0.681773186],[new defaultSet(),17,0.499843836,0.681773186],[new defaultSet(),17,0.699812531,0.681773186],[new defaultSet(),17,0.699812531,0.590864182],[new defaultSet(),17,0.499843836,0.590864182],[new defaultSet(),17,0.299875021,0.590864182],[new defaultSet(),17,0.366531253,0.681773186],[new defaultSet(),17,0.63315618,0.681773186],[new defaultSet(),13,0.366531253,0.590864182],[new defaultSet(),13,0.566499949,0.409046173],[new defaultSet(),13,0.766468763,0.499955177],[new defaultSet(),13,0.166562557,0.318137169],[new defaultSet(),13,0.833124995,0.227229118],[new defaultSet(),30,0.766468763,0.681773186],[new defaultSet(),30,0.233218789,0.681773186],[new defaultSet(),16,0.366531253,0.409046173],[new defaultSet(),16,0.699812531,0.409046173],[new defaultSet(),16,0.766468763,0.590864182],[new propertiesSet()
               ,6,0.499843836,0.499955177]];
            }
            if(param2 == -1 && param3 == 12)
            {
               return [[new decalSet(),2,0.5,0.5],[new defaultSet(),32,0.233531296,0.681773186],[new defaultSet(),32,0.833437502,0.227229118],[new defaultSet(),32,0.633468747,0.681773186]];
            }
            if(param2 == 0 && param3 == 12)
            {
               return [[new decalSet(),3,0.5,0.5],[new defaultSet(),25,0.766624987,0.86359024],[new defaultSet(),25,0.166718751,0.409046173],[new defaultSet(),18,0.699968755,0.499955177],[new defaultSet(),18,0.300031245,0.499955177],[new defaultSet(),18,0.300031245,0.590864182],[new defaultSet(),18,0.300031245,0.409046173],[new defaultSet(),18,0.699968755,0.409046173],[new defaultSet(),18,0.699968755,0.590864182],[new defaultSet(),17,0.433343738,0.227229118],[new defaultSet(),17,0.566656232,0.227229118],[new defaultSet(),17,0.5,0.227229118],[new defaultSet(),17,0.5,0.772681236],[new defaultSet(),17,0.566656232,0.772681236],[new defaultSet(),17,0.433343738,0.772681236]];
            }
            if(param2 == 1 && param3 == 11)
            {
               return [[new decalSet(),4,0.5,0.5],[new defaultSet(),15,0.833124995,0.227232933],[new defaultSet(),15,0.833124995,0.863593102],[new defaultSet(),27,0.699812531,0.318141937],[new defaultSet(),27,0.699812531,0.409049034],[new defaultSet(),27,0.699812531,0.863593102],[new defaultSet(),27,0.699812531,0.772685051],[new defaultSet(),27,0.566499949,0.772685051],[new defaultSet(),27,0.566499949,0.863593102],[new defaultSet(),27,0.566499949,0.409049034],[new defaultSet(),27,0.566499949,0.318141937],[new defaultSet(),27,0.366531253,0.227232933],[new defaultSet(),27,0.299875021,0.863593102],[new defaultSet(),2,0.233218789,0.227232933],[new defaultSet(),2,0.833124995,0.409049034]];
            }
            if(param2 == -1 && param3 == 11)
            {
               return [[new decalSet(),5,0.5,0.5],[new defaultSet(),30,0.233531296,0.227232933],[new defaultSet(),30,0.233531296,0.863593102],[new defaultSet(),30,0.166875005,0.499958038],[new defaultSet(),30,0.433499992,0.136323929],[new defaultSet(),30,0.36684382,0.772685051],[new defaultSet(),10,0.433499992,0.590867043]];
            }
            if(param2 == 0 && param3 == 11)
            {
               return [[new decalSet(),7,0.5,0.5],[new defaultSet(),28,0.5,0.499958038],[new propertiesSet(),5,0.5,0.590867043],[new defaultSet(),15,0.699968755,0.772685051],[new defaultSet(),15,0.233374998,0.772685051],[new defaultSet(),15,0.166718751,0.227232933],[new defaultSet(),15,0.833281279,0.227232933],[new defaultSet(),11,0.433343738,0.499958038],[new defaultSet(),11,0.566656232,0.499958038]];
            }
            if(param2 == 0 && param3 == 10)
            {
               return [[new decalSet(),11,0.5,0.5],[new defaultSet(),8,0.5,0.772688866],[new defaultSet(),8,0.89993751,0.681779861],[new defaultSet(),8,0.100062512,0.681779861],[new defaultSet(),12,0.566656232,0.86359787],[new defaultSet(),12,0.966593742,0.318144798],[new defaultSet(),12,0.100062512,0.318144798]];
            }
            if(param2 == 0 && param3 == 9)
            {
               return [[new decalSet(),7,0.5,0.5],[new defaultSet(),15,0.233374998,0.681783676],[new defaultSet(),15,0.699968755,0.681783676],[new defaultSet(),30,0.300031245,0.77269268],[new defaultSet(),32,0.566656232,0.77269268],[new defaultSet(),16,0.166718751,0.681783676],[new defaultSet(),16,0.166718751,0.954510689],[new propertiesSet(),1,0.5,0.499966621]];
            }
            if(param2 == 1 && param3 == 8)
            {
               return [[new decalSet(),9,0.5,0.5],[new defaultSet(),18,0.499843836,0.136335373],[new defaultSet(),17,0.499843836,0.863604546],[new defaultSet(),17,0.499843836,0.227243423],[new defaultSet(),17,0.499843836,0.772696495],[new defaultSet(),34,0.499843836,0.409061432],[new defaultSet(),34,0.499843836,0.772696495],[new defaultSet(),10,0.433187485,0.863604546]];
            }
            if(param2 == 0 && param3 == 8)
            {
               return [[new decalSet(),6,0.5,0.5],[new defaultSet(),26,0.100062512,0.499970436],[new defaultSet(),15,0.833281279,0.681787491],[new defaultSet(),28,0.833281279,0.772696495],[new propertiesSet(),5,0.433343738,0.499970436]];
            }
            if(param2 == 2 && param3 == 8)
            {
               return [[new decalSet(),10,0.5,0.5],[new defaultSet(),26,0.499687672,0.863604546],[new defaultSet(),15,0.832968712,0.409061432],[new defaultSet(),18,0.566343784,0.318152428],[new defaultSet(),18,0.499687672,0.318152428],[new defaultSet(),18,0.433031321,0.318152428],[new defaultSet(),34,0.099750042,0.136335373],[new defaultSet(),34,0.233062506,0.227243423],[new defaultSet(),34,0.832968712,0.95451355],[new defaultSet(),28,0.899625063,0.136335373],[new propertiesSet(),5,0.499687672,0.499970436]];
            }
            if(param2 == 0 && param3 == 7)
            {
               return [[new decalSet(),13,0.5,0.5],[new defaultSet(),18,0.566656232,0.499973774],[new defaultSet(),18,0.433343738,0.499973774],[new defaultSet(),18,0.433343738,0.40906477],[new defaultSet(),18,0.566656232,0.40906477],[new defaultSet(),18,0.566656232,0.318156242],[new defaultSet(),18,0.433343738,0.318156242],[new defaultSet(),0,0.433343738,0.772699833],[new defaultSet(),0,0.566656232,0.772699833],[new defaultSet(),11,0.766624987,0.863608837],[new defaultSet(),11,0.233374998,0.863608837],[new defaultSet(),29,0.233374998,0.499973774]];
            }
            if(param2 == 0 && param3 == 6)
            {
               return [[new decalSet(),11,0.5,0.5],[new propertiesSet(),5,0.5,0.136342525],[new defaultSet(),28,0.166718751,0.499977589],[new defaultSet(),11,0.89993751,0.318160057],[new defaultSet(),11,0.166718751,0.318160057],[new defaultSet(),11,0.89993751,0.68179512],[new defaultSet(),11,0.166718751,0.68179512],[new defaultSet(),30,0.5,0.863612175]];
            }
            if(param2 == 0 && param3 == 5)
            {
               return [[new decalSet(),6,0.5,0.5],[new defaultSet(),33,0.5,0.318163395]];
            }
            if(param2 == 2 && param3 == 7)
            {
               return [[new decalSet(),13,0.5,0.5],[new defaultSet(),12,0.433031321,0.772699833],[new defaultSet(),12,0.499687672,0.772699833],[new defaultSet(),12,0.566343784,0.772699833],[new defaultSet(),13,0.499687672,0.590882301],[new defaultSet(),13,0.433031321,0.681791306],[new defaultSet(),13,0.566343784,0.681791306],[new defaultSet(),13,0.499687672,0.681791306],[new defaultSet(),13,0.433031321,0.590882301],[new defaultSet(),13,0.566343784,0.590882301],[new defaultSet(),18,0.433031321,0.499973774],[new defaultSet(),29,0.832968712,0.499973774],[new propertiesSet(),6,0.499687672,0.40906477]];
            }
            if(param2 == 2 && param3 == 6)
            {
               return [[new decalSet(),5,0.5,0.5],[new defaultSet(),32,0.233062506,0.772703648],[new defaultSet(),32,0.832968712,0.772703648],[new defaultSet(),34,0.299718618,0.68179512],[new defaultSet(),34,0.699656248,0.68179512],[new defaultSet(),34,0.832968712,0.590886593],[new defaultSet(),34,0.166406155,0.590886593]];
            }
            if(param2 == 3 && param3 == 5)
            {
               return [[new decalSet(),1,0.5,0.5],[new defaultSet(),33,0.299562454,0.227255344],[new defaultSet(),33,0.299562454,0.681798935],[new defaultSet(),32,0.699499846,0.409072399],[new defaultSet(),32,0.699499846,0.590889931],[new defaultSet(),16,0.832812548,0.590889931],[new defaultSet(),16,0.832812548,0.772707462]];
            }
            if(param2 == 1 && param3 == 5)
            {
               return [[new decalSet(),2,0.5,0.5],[new defaultSet(),29,0.433187485,0.227255344],[new defaultSet(),29,0.433187485,0.772707462],[new defaultSet(),35,0.299875021,0.409072399],[new defaultSet(),35,0.166562557,0.409072399],[new defaultSet(),35,0.299875021,0.590889931],[new defaultSet(),35,0.233218789,0.681798935],[new defaultSet(),35,0.233218789,0.863616467],[new defaultSet(),35,0.299875021,0.772707462],[new defaultSet(),35,0.166562557,0.499981403],[new defaultSet(),35,0.366531253,0.499981403],[new defaultSet(),35,0.366531253,0.227255344]];
            }
            if(param2 == 2 && param3 == 5)
            {
               return [[new decalSet(),9,0.5,0.5],[new defaultSet(),2,0.433031321,0.863618851],[new defaultSet(),2,0.166406155,0.590889931],[new defaultSet(),2,0.832968712,0.590889931],[new defaultSet(),18,0.166406155,0.409072399],[new defaultSet(),18,0.099750042,0.409072399],[new defaultSet(),18,0.832968712,0.409072399],[new defaultSet(),18,0.899625063,0.409072399],[new defaultSet(),17,0.433031321,0.772707462],[new defaultSet(),17,0.566343784,0.772707462],[new defaultSet(),27,0.499687672,0.499981403],[new defaultSet(),27,0.766312361,0.499981403],[new defaultSet(),27,0.233062506,0.499981403],[new defaultSet(),27,0.499687672,0.772707462]];
            }
            if(param2 == 0 && param3 == 3)
            {
               return [[new decalSet(),14,0.5,0.5],[new defaultSet(),5,0.5,0.499988794],[new defaultSet(),17,0.366687506,0.681806087],[new defaultSet(),17,0.366687506,0.318171263],[new defaultSet(),17,0.633312523,0.318171263],[new defaultSet(),17,0.633312523,0.681806087],[new propertiesSet(),1,0.5,0.318171263],[new defaultSet(),34,0.233374998,0.863623857],[new defaultSet(),34,0.766624987,0.863623857],[new defaultSet(),34,0.766624987,0.318171263],[new defaultSet(),34,0.233374998,0.318171263],[new defaultSet(),34,0.433343738,0.318171263],[new defaultSet(),34,0.433343738,0.863623857],[new propertiesSet(),6,0.433343738,0.499988794]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),3,0.5,0.5],[new defaultSet(),23,0.832968712,0.499985218],[new defaultSet(),23,0.166406155,0.499985218],[new defaultSet(),32,0.166406155,0.772711277],[new defaultSet(),32,0.832968712,0.772711277],[new defaultSet(),35,0.366374969,0.681802273],[new defaultSet(),35,0.433031321,0.499985218],[new defaultSet(),35,0.499687672,0.499985218],[new defaultSet(),35,0.566343784,0.590893745],[new defaultSet(),35,0.632999897,0.681802273],[new defaultSet(),28,0.499687672,0.863619804],[new propertiesSet(),5,0.499687672,0.681802273]];
            }
            if(param2 == 3 && param3 == 3)
            {
               return [[new decalSet(),2,0.5,0.5],[new defaultSet(),30,0.832812548,0.227262259],[new defaultSet(),30,0.832812548,0.681806087],[new defaultSet(),30,0.832812548,0.409080029],[new defaultSet(),11,0.16624999,0.136353731],[new defaultSet(),11,0.16624999,0.863623857],[new defaultSet(),15,0.499531269,0.499988794],[new defaultSet(),28,0.499531269,0.772715092],[new propertiesSet(),5,0.499531269,0.59089756]];
            }
            if(param2 == 1 && param3 == 3)
            {
               return [[new decalSet(),1,0.5,0.5],[new defaultSet(),28,0.499843836,0.499988794],[new propertiesSet(),5,0.499843836,0.59089756],[new defaultSet(),10,0.233218789,0.136353731],[new defaultSet(),8,0.433187485,0.318171263],[new defaultSet(),8,0.433187485,0.681806087],[new defaultSet(),2,0.233218789,0.409080029],[new defaultSet(),2,0.233218789,0.59089756],[new defaultSet(),18,0.299875021,0.409080029],[new defaultSet(),18,0.299875021,0.59089756],[new defaultSet(),29,0.299875021,0.227262259]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),11,0.5,0.5],[new defaultSet(),2,0.166406155,0.318171263],[new defaultSet(),2,0.899625063,0.681806087],[new defaultSet(),15,0.166406155,0.59089756],[new defaultSet(),15,0.899625063,0.409080029],[new defaultSet(),18,0.632999897,0.59089756],[new defaultSet(),18,0.433031321,0.59089756],[new defaultSet(),35,0.299718618,0.954532385],[new defaultSet(),35,0.433031321,0.863623857],[new defaultSet(),35,0.566343784,0.863623857],[new defaultSet(),35,0.632999897,0.954532385],[new defaultSet(),35,0.699656248,0.863623857],[new defaultSet(),35,0.499687672,0.954532385],[new defaultSet(),35,0.699656248,0.681806087]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),13,0.5,0.5],[new defaultSet(),35,0.233062506,0.772718906],[new defaultSet(),35,0.299718618,0.863627672],[new defaultSet(),35,0.433031321,0.863627672],[new defaultSet(),35,0.499687672,0.772718906],[new defaultSet(),35,0.632999897,0.863627672],[new defaultSet(),35,0.766312361,0.772718906],[new defaultSet(),35,0.832968712,0.863627672],[new defaultSet(),35,0.899625063,0.772718906],[new defaultSet(),35,0.366374969,0.681809902],[new defaultSet(),35,0.166406155,0.590901136]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),76,0.5,0.5],[new propertiesSet(),0,0.499687672,0.136361241],[new defaultSet(),28,0.499687672,0.499996305],[new defaultSet(),21,0.233062506,0.772722483],[new defaultSet(),39,0.233062506,0.499998569],[new defaultSet(),40,0.233062506,0.499996305]];
            }
         }
         if(missionNum == 7)
         {
            if(param2 == -1 && param3 == 2)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),32,0.36684382,0.318175077],[new defaultSet(),32,0.566812515,0.681809902],[new defaultSet(),35,0.300187469,0.772718906],[new defaultSet(),35,0.500156224,0.318175077],[new defaultSet(),35,0.500156224,0.499992609],[new defaultSet(),35,0.233531296,0.499992609],[new defaultSet(),35,0.766781211,0.681809902],[new defaultSet(),17,0.233531296,0.499992609],[new defaultSet(),17,0.633468747,0.499992609],[new defaultSet(),17,0.633468747,0.409083843],[new defaultSet(),17,0.633468747,0.590901136],[new propertiesSet(),5,0.500156224,0.136357546],[new defaultSet(),28,0.500156224,0.499992609]];
            }
            if(param2 == -5 && param3 == 2)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),5,0.500781059,0.499992609],[new defaultSet(),17,0.834062576,0.681809902],[new defaultSet(),17,0.834062576,0.772718906],[new defaultSet(),38,0.234156609,0.409083843],[new propertiesSet(),4,0.567437172,0.590901136]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),37,0.5,0.5],[new defaultSet(),16,0.699968755,0.590901136],[new defaultSet(),16,0.300031245,0.681809902],[new defaultSet(),16,0.433343738,0.499992609],[new defaultSet(),30,0.566656232,0.409085035]];
            }
            if(param2 == 6 && param3 == 2)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),5,0.499062538,0.499992609],[new defaultSet(),38,0.765687466,0.499993086],[new propertiesSet(),4,0.432406425,0.499992609]];
            }
            if(param2 == 1 && param3 == 10)
            {
               return [[new decalSet(),24,0.5,0.5],[new defaultSet(),5,0.499843836,0.499962807],[new propertiesSet(),1,0.499843836,0.409053802],[new defaultSet(),38,0.233218789,0.499962807],[new propertiesSet(),4,0.499843836,0.590870857]];
            }
            if(param2 == 2 && param3 == 10)
            {
               return [[new decalSet(),37,0.5,0.5],[new defaultSet(),10,0.366374969,0.318144798],[new defaultSet(),15,0.166406155,0.318144798],[new defaultSet(),15,0.166406155,0.681779861],[new propertiesSet(),5,0.499687672,0.227235794],[new defaultSet(),28,0.832968712,0.499962807]];
            }
            if(param2 == 3 && param3 == 10)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),8,0.832812548,0.499962807],[new defaultSet(),8,0.16624999,0.499962807],[new defaultSet(),8,0.299562454,0.590870857],[new defaultSet(),8,0.699499846,0.590870857],[new defaultSet(),15,0.499531269,0.590870857],[new defaultSet(),2,0.0995936394,0.86359787],[new defaultSet(),2,0.89946866,0.86359787],[new defaultSet(),19,0.89946866,0.772688866],[new defaultSet(),18,0.0995936394,0.772688866],[new defaultSet(),19,0.16624999,0.772688866],[new defaultSet(),18,0.832812548,0.772688866]];
            }
            if(param2 == 3 && param3 == 9)
            {
               return [[new decalSet(),28,0.5,0.5],[new propertiesSet(),1,0.499531269,0.136334419],[new defaultSet(),14,0.89946866,0.863601685],[new defaultSet(),14,0.16624999,0.863601685],[new defaultSet(),27,0.432875156,0.863601685],[new defaultSet(),27,0.366218805,0.863601685],[new defaultSet(),27,0.366218805,0.77269268],[new defaultSet(),27,0.432875156,0.77269268],[new defaultSet(),27,0.499531269,0.77269268],[new defaultSet(),27,0.499531269,0.863601685],[new defaultSet(),27,0.566187382,0.863601685],[new defaultSet(),27,0.566187382,0.77269268],[new defaultSet(),27,0.632843733,0.77269268],[new defaultSet(),27,0.632843733,0.863601685],[new defaultSet(),29,0.499531269,0.681783676]];
            }
            if(param2 == -5 && param3 == 4)
            {
               return [[new decalSet(),25,0.5,0.5],[new defaultSet(),5,0.500781059,0.681802273],[new defaultSet(),10,0.434124947,0.863624096],[new defaultSet(),8,0.234156609,0.499985218],[new defaultSet(),8,0.767405987,0.499985218],[new defaultSet(),12,0.900718689,0.227258682],[new defaultSet(),12,0.100843906,0.227258682],[new defaultSet(),13,0.834062576,0.681802273],[new defaultSet(),13,0.700749874,0.772711277],[new defaultSet(),13,0.300812721,0.772711277],[new defaultSet(),13,0.167500019,0.681802273],[new defaultSet(),13,0.100843906,0.590893745],[new defaultSet(),13,0.500781059,0.863619804],[new defaultSet(),34,0.767405987,0.863619804],[new defaultSet(),34,0.167500019,0.863619804],[new propertiesSet(),6,0.500781059,0.499985218]];
            }
            if(param2 == 4 && param3 == 8)
            {
               return [[new decalSet(),26,0.5,0.5],[new defaultSet(),8,0.299406052,0.136332512],[new defaultSet(),8,0.299406052,0.863604546],[new defaultSet(),12,0.366062641,0.499970436]];
            }
            if(param2 == 2 && param3 == 8)
            {
               return [[new decalSet(),26,0.5,0.5],[new defaultSet(),34,0.632999897,0.318152428],[new defaultSet(),34,0.632999897,0.863604546],[new defaultSet(),10,0.766312361,0.863604546]];
            }
            if(param2 == -5 && param3 == 3)
            {
               return [[new decalSet(),27,0.5,0.5],[new defaultSet(),13,0.234156609,0.499988794],[new defaultSet(),13,0.234156609,0.409080029],[new defaultSet(),13,0.234156609,0.59089756],[new defaultSet(),13,0.234156609,0.318171263],[new defaultSet(),13,0.234156609,0.681806087],[new defaultSet(),13,0.300812721,0.227262259],[new defaultSet(),13,0.300812721,0.772715092],[new defaultSet(),12,0.434124947,0.227262259],[new defaultSet(),12,0.434124947,0.772715092],[new defaultSet(),27,0.500781059,0.136353731],[new defaultSet(),27,0.500781059,0.863623857],[new defaultSet(),34,0.167500019,0.318171263],[new defaultSet(),34,0.167500019,0.863623857],[new defaultSet(),17,0.700749874,0.499988794],[new defaultSet(),17,0.700749874,0.409080029],[new defaultSet(),17,0.700749874,0.59089756],[new propertiesSet(),5,0.500781059,0.409080029],[new defaultSet(),28,0.767405987,0.59089756]];
            }
            if(param2 == -3 && param3 == 3)
            {
               return [[new decalSet(),37,0.5,0.5],[new propertiesSet(),1,0.500468731,0.499988794],[new defaultSet(),27,0.233843565,0.318171263],[new defaultSet(),27,0.233843565,0.681806087],[new defaultSet(),27,0.167187452,0.59089756],[new defaultSet(),27,0.167187452,0.499988794],[new defaultSet(),27,0.167187452,0.409080029],[new defaultSet(),27,0.233843565,0.409080029],[new defaultSet(),27,0.233843565,0.499988794],[new defaultSet(),27,0.233843565,0.59089756]];
            }
            if(param2 == -4 && param3 == 3)
            {
               return [[new decalSet(),34,0.5,0.5],[new defaultSet(),2,0.167343855,0.318171263],[new defaultSet(),2,0.167343855,0.681806087],[new defaultSet(),8,0.167343855,0.499988794],[new defaultSet(),27,0.30065608,0.409080029],[new defaultSet(),27,0.30065608,0.59089756],[new defaultSet(),27,0.36731267,0.499988794],[new defaultSet(),10,0.767250061,0.227262259],[new defaultSet(),17,0.767250061,0.318171263],[new defaultSet(),17,0.833906174,0.318171263],[new defaultSet(),17,0.833906174,0.227262259],[new defaultSet(),17,0.700593948,0.318171263],[new defaultSet(),17,0.700593948,0.681806087],[new defaultSet(),17,0.767250061,0.681806087],[new defaultSet(),17,0.833906174,0.681806087],[new defaultSet(),17,0.833906174,0.772715092]];
            }
            if(param2 == 3 && param3 == 8)
            {
               return [[new decalSet(),27,0.5,0.5],[new defaultSet(),2,0.432875156,0.772696495],[new defaultSet(),2,0.499531269,0.772696495],[new defaultSet(),2,0.566187382,0.772696495],[new defaultSet(),26,0.766156435,0.681787491],[new defaultSet(),26,0.232906103,0.681787491],[new defaultSet(),13,0.299562454,0.227243423],[new defaultSet(),13,0.699499846,0.227243423],[new defaultSet(),13,0.832812548,0.409061432],[new defaultSet(),13,0.232906103,0.409061432],[new defaultSet(),28,0.499531269,0.227243423],[new propertiesSet(),5,0.499531269,0.409061432]];
            }
            if(param2 == 3 && param3 == 3)
            {
               return [[new decalSet(),28,0.5,0.5],[new defaultSet(),15,0.366218805,0.499988794],[new defaultSet(),15,0.632843733,0.499988794],[new defaultSet(),12,0.566187382,0.499988794],[new defaultSet(),12,0.432875156,0.499988794],[new defaultSet(),12,0.499531269,0.499988794]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),33,0.5,0.5],[new defaultSet(),23,0.499531269,0.227263212],[new defaultSet(),34,0.766156435,0.590901136],[new defaultSet(),35,0.432875156,0.681809902],[new defaultSet(),35,0.432875156,0.499992609],[new defaultSet(),35,0.566187382,0.499992609],[new defaultSet(),35,0.566187382,0.681809902]];
            }
            if(param2 == 1 && param3 == 0)
            {
               return [[new decalSet(),22,0.5,0.5],[new defaultSet(),17,0.166562557,0.863635004],[new defaultSet(),17,0.0999062061,0.863635004],[new defaultSet(),17,0.0999062061,0.136364996],[new defaultSet(),17,0.166562557,0.136364996],[new defaultSet(),38,0.0999062061,0.5],[new propertiesSet(),4,0.433187485,0.5]];
            }
            if(param2 == 5 && param3 == 2)
            {
               return [[new decalSet(),18,0.5,0.5],[new defaultSet(),35,0.365906239,0.227266073],[new defaultSet(),35,0.365906239,0.318175077],[new defaultSet(),35,0.365906239,0.863627672],[new defaultSet(),35,0.365906239,0.9545362],[new defaultSet(),34,0.499218941,0.318175077],[new defaultSet(),30,0.499218941,0.772718906],[new defaultSet(),28,0.765843391,0.499992609],[new propertiesSet(),5,0.499218941,0.409083843]];
            }
            if(param2 == 3 && param3 == 7)
            {
               return [[new decalSet(),23,0.5,0.5],[new defaultSet(),17,0.0995936394,0.136338711],[new defaultSet(),17,0.0995936394,0.227247715],[new defaultSet(),17,0.89946866,0.863608837],[new defaultSet(),11,0.299562454,0.499973774],[new defaultSet(),11,0.699499846,0.499973774],[new defaultSet(),13,0.16624999,0.40906477],[new defaultSet(),13,0.16624999,0.499973774],[new defaultSet(),13,0.16624999,0.590882301],[new defaultSet(),13,0.0995936394,0.590882301],[new defaultSet(),13,0.0995936394,0.499973774],[new defaultSet(),13,0.0995936394,0.40906477],[new defaultSet(),13,0.832812548,0.40906477],[new defaultSet(),13,0.832812548,0.499973774],[new defaultSet(),13,0.832812548,0.590882301],[new defaultSet(),13,0.89946866,0.590882301],[new defaultSet(),13,0.89946866,0.499973774],[new defaultSet(),13,0.89946866,0.40906477],[new defaultSet(),13,0.299562454,0.863608837],[new defaultSet(),13,0.232906103,0.863608837],[new defaultSet(),13,0.699499846,0.863608837],[new defaultSet(),13,0.766156435,0.863608837],[new defaultSet()
               ,2,0.0995936394,0.863608837]];
            }
            if(param2 == 3 && param3 == 6)
            {
               return [[new decalSet(),29,0.5,0.5],[new defaultSet(),17,0.89946866,0.409068584],[new defaultSet(),17,0.89946866,0.590886593],[new defaultSet(),17,0.89946866,0.499977589],[new defaultSet(),30,0.299562454,0.590886593],[new defaultSet(),30,0.699499846,0.409068584],[new defaultSet(),30,0.499531269,0.318160057],[new defaultSet(),30,0.499531269,0.68179512],[new propertiesSet(),5,0.499531269,0.318160057],[new defaultSet(),28,0.499531269,0.136342525],[new propertiesSet(),6,0.499531269,0.499977589]];
            }
            if(param2 == 2 && param3 == 6)
            {
               return [[new decalSet(),32,0.5,0.5],[new defaultSet(),14,0.166406155,0.136342525],[new defaultSet(),14,0.832968712,0.136342525],[new defaultSet(),14,0.832968712,0.863612175],[new defaultSet(),14,0.166406155,0.863612175],[new defaultSet(),14,0.499687672,0.136342525],[new defaultSet(),14,0.499687672,0.863612175],[new defaultSet(),16,0.366374969,0.590886593]];
            }
            if(param2 == 1 && param3 == 6)
            {
               return [[new decalSet(),18,0.5,0.5],[new defaultSet(),32,0.433187485,0.227251053],[new defaultSet(),32,0.433187485,0.772703648],[new defaultSet(),34,0.0999062061,0.227251053],[new defaultSet(),34,0.0999062061,0.954521179],[new defaultSet(),28,0.766468763,0.863612175],[new propertiesSet(),5,0.499843836,0.499977589]];
            }
            if(param2 == 0 && param3 == 6)
            {
               return [[new decalSet(),20,0.5,0.5],[new defaultSet(),29,0.166718751,0.136342525],[new defaultSet(),29,0.833281279,0.954521179],[new defaultSet(),26,0.5,0.499977589],[new propertiesSet(),6,0.433343738,0.499977589]];
            }
            if(param2 == 3 && param3 == 5)
            {
               return [[new decalSet(),18,0.5,0.5],[new defaultSet(),25,0.232906103,0.590889931],[new defaultSet(),25,0.766156435,0.590889931]];
            }
            if(param2 == 2 && param3 == 0)
            {
               return [[new decalSet(),23,0.5,0.5],[new defaultSet(),34,0.499687672,0.227273747],[new defaultSet(),34,0.499687672,0.954543769],[new defaultSet(),34,0.166406155,0.590908766],[new defaultSet(),34,0.499687672,0.590908766],[new defaultSet(),4,0.233062506,0.136364996],[new defaultSet(),4,0.233062506,0.863635004],[new defaultSet(),4,0.166406155,0.318182498],[new defaultSet(),4,0.166406155,0.681817472],[new defaultSet(),28,0.499687672,0.681817472],[new propertiesSet(),5,0.566343784,0.409091264]];
            }
            if(param2 == 3 && param3 == 0)
            {
               return [[new decalSet(),37,0.5,0.5],[new defaultSet(),29,0.16624999,0.136364996],[new defaultSet(),29,0.16624999,0.863635004],[new defaultSet(),35,0.232906103,0.5],[new defaultSet(),35,0.232906103,0.681817472]];
            }
            if(param2 == 4 && param3 == 0)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),32,0.366062641,0.227273747],[new defaultSet(),32,0.632687569,0.227273747],[new defaultSet(),27,0.566031456,0.409091264],[new defaultSet(),27,0.432718754,0.409091264],[new defaultSet(),27,0.299406052,0.5],[new defaultSet(),27,0.699343681,0.5],[new defaultSet(),20,0.166093826,0.772726238],[new defaultSet(),19,0.832655907,0.772726238],[new propertiesSet(),5,0.499375343,0.5],[new defaultSet(),28,0.499375343,0.681817472]];
            }
            if(param2 == -1 && param3 == 6)
            {
               return [[new decalSet(),27,0.5,0.5],[new defaultSet(),30,0.233531296,0.318160057],[new defaultSet(),30,0.233531296,0.772703648],[new defaultSet(),35,0.700125039,0.499977589],[new defaultSet(),35,0.700125039,0.590886593],[new defaultSet(),35,0.700125039,0.68179512],[new defaultSet(),35,0.433499992,0.318160057],[new defaultSet(),35,0.500156224,0.318160057],[new defaultSet(),35,0.566812515,0.318160057],[new defaultSet(),35,0.433499992,0.863612175],[new defaultSet(),35,0.500156224,0.863612175],[new defaultSet(),35,0.566812515,0.863612175],[new defaultSet(),2,0.100218773,0.863612175],[new defaultSet(),2,0.100218773,0.136342525],[new defaultSet(),27,0.166875005,0.227251053],[new defaultSet(),27,0.166875005,0.772703648],[new defaultSet(),27,0.100218773,0.772703648],[new defaultSet(),27,0.100218773,0.227251053],[new defaultSet(),27,0.166875005,0.136342525],[new defaultSet(),27,0.166875005,0.863612175],[new propertiesSet(),5,0.500156224,0.136342525],[new defaultSet(),28,0.500156224,0.863612175]];
            }
            if(param2 == -2 && param3 == 4)
            {
               return [[new decalSet(),27,0.5,0.5],[new defaultSet(),12,0.233687639,0.227258682],[new defaultSet(),12,0.766937494,0.227258682],[new defaultSet(),12,0.766937494,0.772711277],[new defaultSet(),12,0.233687639,0.772711277],[new defaultSet(),15,0.500312448,0.136350155],[new defaultSet(),15,0.500312448,0.863619804],[new defaultSet(),19,0.167031288,0.499985218],[new defaultSet(),19,0.833593726,0.499985218],[new propertiesSet(),6,0.500312448,0.499985218]];
            }
            if(param2 == -1 && param3 == 5)
            {
               return [[new decalSet(),28,0.5,0.5],[new defaultSet(),32,0.433499992,0.499981403],[new defaultSet(),32,0.566812515,0.499981403]];
            }
            if(param2 == 4 && param3 == 4)
            {
               return [[new decalSet(),31,0.5,0.5],[new defaultSet(),6,0.499375343,0.590893745],[new defaultSet(),13,0.765999794,0.227258682],[new defaultSet(),13,0.832655907,0.227258682],[new defaultSet(),13,0.832655907,0.772711277],[new defaultSet(),13,0.765999794,0.772711277],[new defaultSet(),13,0.232749939,0.772711277],[new defaultSet(),13,0.166093826,0.772711277],[new defaultSet(),13,0.166093826,0.227258682],[new defaultSet(),13,0.232749939,0.227258682],[new defaultSet(),35,0.232749939,0.499985218],[new defaultSet(),35,0.166093826,0.590893745],[new defaultSet(),35,0.765999794,0.772711277],[new defaultSet(),35,0.832655907,0.681802273],[new defaultSet(),35,0.499375343,0.954528809],[new defaultSet(),34,0.499375343,0.590895176],[new defaultSet(),28,0.499375343,0.318167686],[new propertiesSet(),5,0.499375343,0.590893745]];
            }
            if(param2 == 3 && param3 == 4)
            {
               return [[new decalSet(),29,0.5,0.5],[new defaultSet(),15,0.499531269,0.227258682],[new defaultSet(),15,0.499531269,0.772711277],[new defaultSet(),35,0.699499846,0.227258682],[new defaultSet(),35,0.566187382,0.409076214],[new defaultSet(),35,0.566187382,0.772711277],[new defaultSet(),35,0.299562454,0.954528809],[new defaultSet(),35,0.366218805,0.499985218],[new defaultSet(),35,0.432875156,0.409076214],[new defaultSet(),35,0.632843733,0.681802273]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),25,0.5,0.5],[new defaultSet(),25,0.233062506,0.590893745],[new defaultSet(),25,0.766312361,0.590893745],[new propertiesSet(),5,0.499687672,0.227258682],[new defaultSet(),28,0.499687672,0.772711277]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),39,0.5,0.5],[new defaultSet(),15,0.433031321,0.772715092],[new defaultSet(),15,0.566343784,0.772715092],[new defaultSet(),17,0.766312361,0.499988794],[new defaultSet(),17,0.299718618,0.499988794],[new defaultSet(),17,0.699656248,0.499988794],[new defaultSet(),17,0.233062506,0.499988794]];
            }
            if(param2 == 1 && param3 == 4)
            {
               return [[new decalSet(),37,0.5,0.5],[new defaultSet(),35,0.433187485,0.409076214],[new defaultSet(),35,0.366531253,0.409076214],[new defaultSet(),35,0.366531253,0.772711277],[new defaultSet(),35,0.433187485,0.772711277],[new defaultSet(),17,0.766468763,0.318167686],[new defaultSet(),17,0.766468763,0.681802273],[new defaultSet(),17,0.233218789,0.318167686],[new defaultSet(),17,0.233218789,0.681802273]];
            }
            if(param2 == 0 && param3 == 4)
            {
               return [[new decalSet(),34,0.5,0.5],[new defaultSet(),35,0.433343738,0.409076214],[new defaultSet(),35,0.433343738,0.772711277],[new defaultSet(),35,0.633312523,0.409076214],[new defaultSet(),35,0.699968755,0.318167686],[new defaultSet(),35,0.699968755,0.772711277],[new defaultSet(),35,0.566656232,0.863619804],[new defaultSet(),35,0.300031245,0.499985218],[new defaultSet(),35,0.233374998,0.772711277],[new defaultSet(),35,0.433343738,0.590893745],[new defaultSet(),35,0.566656232,0.590893745],[new defaultSet(),35,0.5,0.318167686]];
            }
            if(param2 == -1 && param3 == 4)
            {
               return [[new decalSet(),33,0.5,0.5],[new defaultSet(),21,0.500156224,0.409079552],[new defaultSet(),21,0.500156224,0.681800365],[new defaultSet(),17,0.633468747,0.409076214],[new defaultSet(),17,0.633468747,0.499985218],[new defaultSet(),17,0.633468747,0.590893745],[new defaultSet(),17,0.700125039,0.590893745],[new defaultSet(),17,0.700125039,0.499985218],[new defaultSet(),17,0.700125039,0.409076214],[new defaultSet(),17,0.36684382,0.409076214],[new defaultSet(),17,0.36684382,0.499985218],[new defaultSet(),17,0.36684382,0.590893745],[new defaultSet(),17,0.300187469,0.590893745],[new defaultSet(),17,0.300187469,0.499985218],[new defaultSet(),17,0.300187469,0.409076214],[new defaultSet(),29,0.300187469,0.227258682],[new defaultSet(),29,0.700125039,0.772711277],[new defaultSet(),28,0.833437502,0.499985218],[new propertiesSet(),5,0.500156224,0.409076214]];
            }
            if(param2 == -2 && param3 == 3)
            {
               return [[new decalSet(),22,0.5,0.5],[new defaultSet(),35,0.366999984,0.409080029],[new defaultSet(),35,0.366999984,0.499988794],[new defaultSet(),35,0.233687639,0.681806087],[new defaultSet(),35,0.433656335,0.59089756],[new defaultSet(),35,0.566968679,0.409080029],[new defaultSet(),35,0.633625031,0.681806087],[new defaultSet(),35,0.500312448,0.681806087],[new defaultSet(),35,0.566968679,0.499988794],[new defaultSet(),35,0.700281382,0.409080029],[new defaultSet(),35,0.700281382,0.59089756],[new defaultSet(),35,0.766937494,0.681806087],[new defaultSet(),35,0.766937494,0.772715092],[new defaultSet(),35,0.300343752,0.772715092],[new defaultSet(),27,0.233687639,0.772715092],[new defaultSet(),27,0.700281382,0.227262259],[new defaultSet(),2,0.433656335,0.227262259],[new defaultSet(),2,0.566968679,0.772715092],[new defaultSet(),2,0.433656335,0.772715092],[new defaultSet(),2,0.566968679,0.227262259],[new defaultSet(),28,0.167031288,0.499988794],[new propertiesSet(),5,0.500312448,0.59089756]];
            }
            if(param2 == -2 && param3 == 2)
            {
               return [[new decalSet(),23,0.5,0.5],[new defaultSet(),15,0.500312448,0.499992609],[new defaultSet(),2,0.167031288,0.227266073],[new defaultSet(),2,0.700281382,0.136357546],[new defaultSet(),2,0.167031288,0.681809902],[new defaultSet(),13,0.100374937,0.499992609],[new defaultSet(),13,0.167031288,0.409083843],[new defaultSet(),13,0.566968679,0.136357546],[new defaultSet(),13,0.300343752,0.136357546],[new defaultSet(),13,0.766937494,0.136357546],[new defaultSet(),13,0.833593726,0.409083843],[new defaultSet(),13,0.433656335,0.681809902],[new defaultSet(),13,0.566968679,0.772718906],[new defaultSet(),13,0.100374937,0.863627672],[new defaultSet(),29,0.433656335,0.318175077]];
            }
            if(param2 == -1 && param3 == 3)
            {
               return [[new decalSet(),23,0.5,0.5],[new defaultSet(),10,0.500156224,0.499988794],[new defaultSet(),26,0.700125039,0.499988794],[new defaultSet(),26,0.300187469,0.499988794],[new defaultSet(),26,0.500156224,0.772715092]];
            }
            if(param2 == -1 && param3 == 1)
            {
               return [[new decalSet(),27,0.5,0.5],[new defaultSet(),2,0.233531296,0.227270007],[new defaultSet(),2,0.766781211,0.227270007],[new defaultSet(),2,0.433499992,0.227270007],[new defaultSet(),2,0.500156224,0.227270007],[new defaultSet(),2,0.566812515,0.227270007],[new defaultSet(),27,0.766781211,0.409087539],[new defaultSet(),27,0.900093734,0.772722483],[new defaultSet(),27,0.100218773,0.772722483],[new defaultSet(),27,0.166875005,0.409087539],[new defaultSet(),13,0.233531296,0.590904951],[new defaultSet(),13,0.100218773,0.227270007],[new defaultSet(),13,0.833437502,0.136361241],[new defaultSet(),13,0.900093734,0.590904951],[new defaultSet(),13,0.766781211,0.681813836],[new defaultSet(),13,0.766781211,0.590904951],[new defaultSet(),13,0.300187469,0.681813836],[new defaultSet(),13,0.100218773,0.590904951],[new defaultSet(),13,0.300187469,0.409087539],[new defaultSet(),13,0.900093734,0.409087539],[new defaultSet(),17,0.233531296,0.499996305],[new defaultSet(),17,0.766781211,0.499996305]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),33,0.5,0.5],[new defaultSet(),26,0.499375343,0.136357546],[new defaultSet(),13,0.765999794,0.409083843],[new defaultSet(),13,0.765999794,0.590901136],[new defaultSet(),13,0.832655907,0.499992609],[new defaultSet(),35,0.566031456,0.9545362],[new defaultSet(),35,0.499375343,0.9545362],[new defaultSet(),35,0.432718754,0.9545362],[new defaultSet(),28,0.366062641,0.499992609],[new propertiesSet(),5,0.499375343,0.318175077]];
            }
            if(param2 == 4 && param3 == 3)
            {
               return [[new decalSet(),39,0.5,0.5],[new defaultSet(),12,0.499375343,0.499988794]];
            }
            if(param2 == 4 && param3 == 1)
            {
               return [[new decalSet(),39,0.5,0.5],[new defaultSet(),35,0.299406052,0.227270007],[new defaultSet(),35,0.699343681,0.227270007],[new defaultSet(),35,0.432718754,0.227270007],[new defaultSet(),35,0.566031456,0.227270007],[new defaultSet(),17,0.765999794,0.499996305],[new defaultSet(),17,0.232749939,0.499996305]];
            }
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),30,0.5,0.5],[new defaultSet(),11,0.499843836,0.681809902],[new defaultSet(),26,0.499843836,0.31817627]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),24,0.5,0.5],[new propertiesSet(),0,0.499687672,0.772718906],[new defaultSet(),28,0.499687672,0.499992609],[new defaultSet(),23,0.832968712,0.227266073],[new defaultSet(),23,0.166406155,0.227266073],[new defaultSet(),39,0.499687672,0.227263212],[new defaultSet(),40,0.499687672,0.227266073]];
            }
         }
         if(missionNum == 8)
         {
            if(param2 == 2 && param3 == -1)
            {
               return [[new decalSet(),81,0.5,0.5],[new defaultSet(),2,0.366374969,0.318186164],[new defaultSet(),2,0.632999897,0.318186164],[new defaultSet(),13,0.499687672,0.136368811],[new defaultSet(),13,0.233062506,0.227277517],[new defaultSet(),13,0.233062506,0.409094989],[new defaultSet(),13,0.766312361,0.409094989],[new defaultSet(),13,0.766312361,0.136368811],[new defaultSet(),13,0.632999897,0.136368811],[new defaultSet(),13,0.499687672,0.318186164],[new defaultSet(),17,0.233062506,0.500003755],[new defaultSet(),17,0.766312361,0.500003755],[new defaultSet(),35,0.366374969,0.590912461],[new defaultSet(),35,0.499687672,0.500003755],[new defaultSet(),35,0.632999897,0.590912461]];
            }
            if(param2 == -5 && param3 == -2)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),16,0.367468834,0.409098864],[new defaultSet(),16,0.167500019,0.863642454],[new defaultSet(),16,0.367468834,0.95455122],[new defaultSet(),12,0.500781059,0.227281213],[new defaultSet(),12,0.500781059,0.772733808],[new defaultSet(),27,0.634093761,0.318189979],[new defaultSet(),27,0.634093761,0.681825042],[new defaultSet(),30,0.167500019,0.50000751],[new defaultSet(),30,0.167500019,0.318189979],[new defaultSet(),30,0.167500019,0.772733808]];
            }
            if(param2 == -4 && param3 == -1)
            {
               return [[new decalSet(),83,0.5,0.5],[new defaultSet(),35,0.233999968,0.409094989],[new defaultSet(),35,0.36731267,0.500003755],[new defaultSet(),35,0.233999968,0.681821227],[new defaultSet(),35,0.36731267,0.863638759],[new defaultSet(),35,0.700593948,0.772729993],[new defaultSet(),35,0.700593948,0.500003755],[new defaultSet(),35,0.767250061,0.500003755],[new defaultSet(),35,0.833906174,0.681821227],[new defaultSet(),35,0.833906174,0.863638759],[new defaultSet(),35,0.567281246,0.863638759],[new defaultSet(),35,0.167343855,0.863638759],[new defaultSet(),35,0.700593948,0.318186164],[new defaultSet(),35,0.30065608,0.227277517],[new defaultSet(),19,0.767250061,0.772729993],[new defaultSet(),20,0.233999968,0.772729993],[new defaultSet(),18,0.767250061,0.681821227],[new defaultSet(),19,0.233999968,0.681821227],[new defaultSet(),34,0.500624895,0.954547524],[new defaultSet(),34,0.700593948,0.681821227],[new defaultSet(),34,0.30065608,0.681821227]];
            }
            if(param2 == -4 && param3 == -3)
            {
               return [[new decalSet(),81,0.5,0.5],[new defaultSet(),5,0.500624895,0.500011206],[new defaultSet(),17,0.433968782,0.590919971],[new defaultSet(),17,0.500624895,0.590919971],[new defaultSet(),17,0.567281246,0.590919971],[new defaultSet(),18,0.567281246,0.500011206],[new defaultSet(),18,0.433968782,0.500011206],[new defaultSet(),17,0.433968782,0.40910244],[new defaultSet(),17,0.567281246,0.40910244],[new defaultSet(),17,0.500624895,0.40910244],[new defaultSet(),26,0.767250061,0.500011206],[new defaultSet(),26,0.233999968,0.500011206],[new defaultSet(),27,0.700593948,0.40910244],[new defaultSet(),27,0.30065608,0.40910244],[new defaultSet(),27,0.30065608,0.681828737],[new defaultSet(),27,0.633937359,0.681828737],[new defaultSet(),27,0.36731267,0.227284908],[new defaultSet(),27,0.567281246,0.227284908],[new defaultSet(),27,0.633937359,0.227284908],[new defaultSet(),27,0.433968782,0.227284908],[new defaultSet(),27,0.700593948,0.681828737],[new defaultSet(),27,0.36731267,0.681828737],[new propertiesSet()
               ,6,0.500624895,0.409106493],[new propertiesSet(),4,0.500624895,0.681829929],[new propertiesSet(),7,0.500624895,0.227283239]];
            }
            if(param2 == -4 && param3 == -2)
            {
               return [[new decalSet(),86,0.5,0.5],[new defaultSet(),25,0.30065608,0.409098864],[new defaultSet(),28,0.500624895,0.50000751]];
            }
            if(param2 == -3 && param3 == -2)
            {
               return [[new decalSet(),79,0.5,0.5],[new defaultSet(),35,0.567124844,0.409098864],[new defaultSet(),35,0.500468731,0.409098864],[new defaultSet(),35,0.433812618,0.409098864],[new defaultSet(),35,0.433812618,0.772733808],[new defaultSet(),35,0.500468731,0.772733808],[new defaultSet(),35,0.567124844,0.681825042],[new defaultSet(),35,0.567124844,0.772733808],[new defaultSet(),35,0.367156267,0.50000751],[new defaultSet(),35,0.300500154,0.590916157],[new defaultSet(),35,0.167187452,0.50000751],[new defaultSet(),35,0.233843565,0.681825042],[new defaultSet(),35,0.167187452,0.95455122],[new defaultSet(),35,0.367156267,0.95455122],[new defaultSet(),35,0.300500154,0.318189979],[new defaultSet(),35,0.167187452,0.227281213],[new defaultSet(),35,0.433812618,0.590916157],[new defaultSet(),30,0.10053134,0.50000751],[new defaultSet(),19,0.433812618,0.227281213],[new defaultSet(),18,0.433812618,0.772733808]];
            }
            if(param2 == -2 && param3 == -2)
            {
               return [[new decalSet(),85,0.5,0.5],[new defaultSet(),33,0.366999984,0.227281213],[new defaultSet(),33,0.366999984,0.772733808],[new defaultSet(),29,0.366999984,0.50000751]];
            }
            if(param2 == 0 && param3 == -2)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),26,0.833281279,0.50000751],[new defaultSet(),27,0.699968755,0.318189979],[new defaultSet(),27,0.699968755,0.772733808],[new defaultSet(),27,0.366687506,0.772733808],[new defaultSet(),27,0.366687506,0.318189979],[new defaultSet(),27,0.5,0.227281213],[new defaultSet(),27,0.5,0.136372328],[new defaultSet(),27,0.5,0.863642454],[new defaultSet(),27,0.633312523,0.863642454],[new defaultSet(),27,0.766624987,0.136372328],[new defaultSet(),27,0.633312523,0.227281213],[new defaultSet(),27,0.233374998,0.136372328],[new defaultSet(),27,0.833281279,0.863642454],[new defaultSet(),2,0.5,0.50000751],[new defaultSet(),2,0.89993751,0.50000751]];
            }
            if(param2 == -1 && param3 == -2)
            {
               return [[new decalSet(),84,0.5,0.5],[new propertiesSet(),1,0.500156224,0.772733808],[new defaultSet(),21,0.500156224,0.590916157],[new defaultSet(),17,0.433499992,0.409098864],[new defaultSet(),18,0.500156224,0.409098864],[new defaultSet(),19,0.566812515,0.409098864],[new defaultSet(),19,0.433499992,0.136372328],[new defaultSet(),18,0.500156224,0.136372328],[new defaultSet(),17,0.566812515,0.136372328],[new defaultSet(),15,0.166875005,0.500006914],[new defaultSet(),15,0.833437502,0.500006914],[new defaultSet(),28,0.100218773,0.409098864]];
            }
            if(param2 == -1 && param3 == -1)
            {
               return [[new decalSet(),80,0.5,0.5],[new defaultSet(),15,0.36684382,0.136368811],[new defaultSet(),15,0.633468747,0.136368811],[new defaultSet(),32,0.500156224,0.227277517],[new defaultSet(),17,0.700125039,0.500003755],[new defaultSet(),17,0.700125039,0.409094989],[new defaultSet(),17,0.300187469,0.409094989],[new defaultSet(),17,0.300187469,0.500003755],[new defaultSet(),17,0.300187469,0.590912461],[new defaultSet(),17,0.700125039,0.590912461]];
            }
            if(param2 == 5 && param3 == 5)
            {
               return [[new decalSet(),83,0.5,0.5],[new defaultSet(),32,0.765843391,0.227255344],[new defaultSet(),32,0.765843391,0.772707462],[new defaultSet(),34,0.499218941,0.227255344],[new defaultSet(),34,0.499218941,0.954524517],[new defaultSet(),17,0.432562828,0.13634634],[new defaultSet(),17,0.432562828,0.863616467],[new defaultSet(),35,0.632531166,0.318163395],[new defaultSet(),35,0.632531166,0.863616467],[new defaultSet(),35,0.765843391,0.590889931],[new defaultSet(),13,0.699187279,0.409072399],[new defaultSet(),13,0.499218941,0.499981403],[new defaultSet(),13,0.765843391,0.590889931],[new defaultSet(),13,0.832499981,0.13634634],[new defaultSet(),12,0.432562828,0.499981403],[new propertiesSet(),6,0.565875053,0.499981403]];
            }
            if(param2 == 4 && param3 == 5)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),17,0.232749939,0.499981403],[new defaultSet(),17,0.765999794,0.499981403],[new defaultSet(),17,0.765999794,0.863616467],[new defaultSet(),17,0.232749939,0.863616467],[new defaultSet(),15,0.499375343,0.499981403],[new defaultSet(),15,0.232749939,0.681798935],[new defaultSet(),15,0.765999794,0.681798935],[new defaultSet(),13,0.299406052,0.772707462],[new defaultSet(),13,0.366062641,0.772707462],[new defaultSet(),13,0.699343681,0.772707462],[new defaultSet(),13,0.632687569,0.772707462],[new defaultSet(),13,0.699343681,0.863616467],[new defaultSet(),13,0.299406052,0.863616467],[new defaultSet(),27,0.166093826,0.499981403],[new defaultSet(),27,0.166093826,0.590889931],[new defaultSet(),27,0.832655907,0.499981403],[new defaultSet(),27,0.832655907,0.590889931],[new defaultSet(),27,0.499375343,0.409072399]];
            }
            if(param2 == 4 && param3 == 4)
            {
               return [[new decalSet(),86,0.5,0.5],[new defaultSet(),17,0.432718754,0.227258682],[new defaultSet(),17,0.432718754,0.772711277],[new defaultSet(),17,0.432718754,0.318167686],[new defaultSet(),17,0.432718754,0.681802273],[new defaultSet(),33,0.499375343,0.227258682],[new defaultSet(),33,0.499375343,0.772711277],[new defaultSet(),32,0.632687569,0.499985218],[new defaultSet(),34,0.699343681,0.227258682],[new defaultSet(),34,0.699343681,0.954528809],[new defaultSet(),28,0.166093826,0.772707462]];
            }
            if(param2 == 3 && param3 == 4)
            {
               return [[new decalSet(),85,0.5,0.5],[new defaultSet(),34,0.766156435,0.318167686],[new defaultSet(),34,0.766156435,0.863619804],[new defaultSet(),14,0.499531269,0.499985218],[new defaultSet(),14,0.699499846,0.0454411507],[new defaultSet(),14,0.699499846,0.954528809],[new defaultSet(),18,0.232906103,0.499985218],[new defaultSet(),18,0.16624999,0.499985218]];
            }
            if(param2 == -2 && param3 == 6)
            {
               return [[new decalSet(),86,0.5,0.5],[new defaultSet(),25,0.233687639,0.318160057],[new defaultSet(),25,0.233687639,0.954521179],[new defaultSet(),18,0.433656335,0.227251053],[new defaultSet(),18,0.433656335,0.863612175],[new defaultSet(),18,0.433656335,0.318160057],[new defaultSet(),18,0.433656335,0.772703648],[new defaultSet(),16,0.500312448,0.68179512],[new defaultSet(),5,0.500312448,0.590886593],[new propertiesSet(),4,0.433656335,0.590886593],[new propertiesSet(),7,0.500312448,0.409068584],[new propertiesSet(),6,0.433656335,0.227251053]];
            }
            if(param2 == -1 && param3 == 6)
            {
               return [[new decalSet(),84,0.5,0.5],[new defaultSet(),10,0.500156224,0.499976158],[new defaultSet(),30,0.500156224,0.136342525],[new defaultSet(),30,0.500156224,0.863612175],[new defaultSet(),29,0.166875005,0.499977589],[new defaultSet(),19,0.36684382,0.499977589]];
            }
            if(param2 == 0 && param3 == 6)
            {
               return [[new decalSet(),85,0.5,0.5],[new defaultSet(),26,0.166718751,0.499977589],[new defaultSet(),35,0.100062512,0.863612175],[new defaultSet(),35,0.100062512,0.318160057],[new defaultSet(),35,0.166718751,0.227251053],[new defaultSet(),35,0.166718751,0.318160057],[new defaultSet(),35,0.233374998,0.318160057],[new defaultSet(),35,0.233374998,0.227251053],[new defaultSet(),35,0.166718751,0.863612175],[new defaultSet(),35,0.166718751,0.954521179],[new defaultSet(),35,0.233374998,0.954521179],[new defaultSet(),35,0.233374998,0.863612175],[new defaultSet(),35,0.300031245,0.863612175],[new defaultSet(),35,0.300031245,0.318160057],[new defaultSet(),35,0.300031245,0.409068584],[new defaultSet(),35,0.300031245,0.772703648],[new defaultSet(),17,0.766624987,0.499977589]];
            }
            if(param2 == -1 && param3 == 2)
            {
               return [[new decalSet(),86,0.5,0.5],[new defaultSet(),16,0.166875005,0.318175077],[new defaultSet(),16,0.300187469,0.9545362],[new defaultSet(),16,0.166875005,0.863627672],[new defaultSet(),30,0.566812515,0.136358023],[new defaultSet(),26,0.433499992,0.499992609],[new defaultSet(),2,0.566812515,0.318175077],[new defaultSet(),2,0.566812515,0.681809902],[new defaultSet(),2,0.166875005,0.499992609],[new defaultSet(),4,0.166875005,0.409083843],[new defaultSet(),4,0.166875005,0.590901136],[new propertiesSet(),1,0.36684382,0.499992609]];
            }
            if(param2 == 1 && param3 == 0)
            {
               return [[new decalSet(),84,0.5,0.5],[new defaultSet(),21,0.499843836,0.5],[new defaultSet(),19,0.433187485,0.590908766],[new defaultSet(),18,0.499843836,0.590908766],[new defaultSet(),17,0.566499949,0.590908766],[new defaultSet(),29,0.0999062061,0.227273747],[new defaultSet(),29,0.0999062061,0.772726238]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),85,0.5,0.5],[new defaultSet(),18,0.166718751,0.318182498],[new defaultSet(),18,0.166718751,0.409091264],[new defaultSet(),18,0.166718751,0.590908766],[new defaultSet(),18,0.166718751,0.5],[new defaultSet(),18,0.166718751,0.681817472],[new defaultSet(),15,0.433343738,0.227273747],[new defaultSet(),15,0.433343738,0.772726238],[new defaultSet(),0,0.300031245,0.227273747],[new defaultSet(),0,0.300031245,0.772726238],[new defaultSet(),0,0.233374998,0.772726238],[new defaultSet(),0,0.233374998,0.227273747],[new propertiesSet(),6,0.5,0.5]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),85,0.5,0.5],[new defaultSet(),2,0.16624999,0.227266073],[new defaultSet(),2,0.16624999,0.772718906],[new defaultSet(),30,0.832812548,0.318175077],[new defaultSet(),30,0.832812548,0.681809902],[new defaultSet(),30,0.766156435,0.499992609],[new defaultSet(),13,0.699499846,0.227266073],[new defaultSet(),13,0.632843733,0.227266073],[new defaultSet(),13,0.699499846,0.772718906],[new defaultSet(),13,0.632843733,0.772718906],[new defaultSet(),14,0.499531269,0.499992609]];
            }
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),84,0.5,0.5],[new defaultSet(),34,0.0999062061,0.409083843],[new defaultSet(),34,0.0999062061,0.772718906],[new defaultSet(),14,0.766468763,0.863627672],[new defaultSet(),14,0.766468763,0.136357546],[new defaultSet(),17,0.366531253,0.136357546],[new defaultSet(),17,0.63315618,0.136357546],[new defaultSet(),19,0.366531253,0.863627672],[new defaultSet(),18,0.63315618,0.863627672],[new defaultSet(),10,0.433187485,0.136357546]];
            }
            if(param2 == -4 && param3 == 3)
            {
               return [[new decalSet(),83,0.5,0.5],[new defaultSet(),6,0.500624895,0.681806087],[new defaultSet(),25,0.30065608,0.409080029],[new defaultSet(),25,0.700593948,0.409080029],[new propertiesSet(),6,0.500624895,0.499988794]];
            }
            if(param2 == -4 && param3 == 5)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),34,0.233999968,0.590889931],[new defaultSet(),34,0.500624895,0.590889931],[new defaultSet(),34,0.767250061,0.590889931],[new defaultSet(),16,0.500624895,0.954524517],[new defaultSet(),19,0.767250061,0.772707462],[new defaultSet(),18,0.233999968,0.772707462],[new defaultSet(),18,0.833906174,0.772707462],[new defaultSet(),20,0.167343855,0.772707462]];
            }
            if(param2 == -4 && param3 == 4)
            {
               return [[new decalSet(),86,0.5,0.5],[new defaultSet(),2,0.567281246,0.318167686],[new defaultSet(),2,0.167343855,0.499985218],[new defaultSet(),2,0.567281246,0.681802273],[new defaultSet(),27,0.433968782,0.318167686],[new defaultSet(),27,0.500624895,0.318167686],[new defaultSet(),27,0.500624895,0.681802273],[new defaultSet(),27,0.433968782,0.681802273],[new defaultSet(),27,0.100687504,0.499985218],[new defaultSet(),13,0.433968782,0.499985218],[new defaultSet(),13,0.500624895,0.499985218],[new defaultSet(),13,0.30065608,0.318167686],[new defaultSet(),13,0.233999968,0.318167686],[new defaultSet(),13,0.30065608,0.772711277],[new defaultSet(),13,0.233999968,0.772711277],[new defaultSet(),34,0.167343855,0.681802273],[new defaultSet(),34,0.167343855,0.499985218]];
            }
            if(param2 == -3 && param3 == 4)
            {
               return [[new decalSet(),84,0.5,0.5],[new defaultSet(),34,0.10053134,0.409076214],[new defaultSet(),34,0.10053134,0.772711277],[new defaultSet(),13,0.367156267,0.136350155],[new defaultSet(),13,0.433812618,0.136350155],[new defaultSet(),13,0.500468731,0.136350155],[new defaultSet(),13,0.367156267,0.863619804],[new defaultSet(),13,0.433812618,0.863619804],[new defaultSet(),13,0.500468731,0.863619804],[new defaultSet(),2,0.633781195,0.136350155],[new defaultSet(),2,0.633781195,0.863619804],[new defaultSet(),12,0.500468731,0.499985218],[new defaultSet(),28,0.900406361,0.409076214]];
            }
            if(param2 == -1 && param3 == 4)
            {
               return [[new decalSet(),85,0.5,0.5],[new defaultSet(),35,0.36684382,0.409076214],[new defaultSet(),35,0.36684382,0.499985218],[new defaultSet(),35,0.36684382,0.590893745],[new defaultSet(),35,0.36684382,0.681802273],[new defaultSet(),35,0.36684382,0.772711277],[new defaultSet(),34,0.166875005,0.318167686],[new defaultSet(),34,0.166875005,0.863619804],[new propertiesSet(),1,0.500156224,0.499985218]];
            }
            if(param2 == 1 && param3 == 4)
            {
               return [[new decalSet(),84,0.5,0.5],[new defaultSet(),34,0.0999062061,0.409076214],[new defaultSet(),34,0.0999062061,0.772711277],[new defaultSet(),27,0.499843836,0.136350155],[new defaultSet(),27,0.433187485,0.136350155],[new defaultSet(),27,0.566499949,0.136350155],[new defaultSet(),27,0.433187485,0.863619804],[new defaultSet(),27,0.499843836,0.863619804],[new defaultSet(),27,0.566499949,0.863619804],[new defaultSet(),18,0.899781227,0.318167686],[new defaultSet(),18,0.899781227,0.681802273],[new defaultSet(),18,0.433187485,0.409076214],[new defaultSet(),18,0.433187485,0.590893745]];
            }
            if(param2 == -3 && param3 == 3)
            {
               return [[new decalSet(),81,0.5,0.5],[new defaultSet(),10,0.83375001,0.499985218],[new defaultSet(),18,0.83375001,0.409080029],[new defaultSet(),18,0.767093897,0.499988794],[new defaultSet(),18,0.83375001,0.59089756],[new defaultSet(),18,0.900406361,0.499988794],[new defaultSet(),17,0.767093897,0.409080029],[new defaultSet(),17,0.900406361,0.409080029],[new defaultSet(),17,0.767093897,0.59089756],[new defaultSet(),17,0.900406361,0.59089756],[new defaultSet(),15,0.500468731,0.136353731],[new defaultSet(),15,0.300500154,0.409080029],[new defaultSet(),32,0.500468731,0.409080029],[new defaultSet(),30,0.633781195,0.318171263],[new defaultSet(),12,0.300500154,0.227262259],[new defaultSet(),12,0.83375001,0.681806087]];
            }
            if(param2 == -3 && param3 == 5)
            {
               return [[new decalSet(),81,0.5,0.5],[new defaultSet(),32,0.300500154,0.681799889],[new defaultSet(),32,0.83375001,0.681796551],[new defaultSet(),32,0.700437546,0.318161964],[new defaultSet(),32,0.300500154,0.318165779],[new defaultSet(),5,0.500468731,0.499981403],[new propertiesSet(),1,0.500468731,0.772704601],[new propertiesSet(),7,0.500468731,0.227253437],[new propertiesSet(),4,0.500468731,0.499978065]];
            }
            if(param2 == -2 && param3 == 4)
            {
               return [[new decalSet(),79,0.5,0.5],[new defaultSet(),12,0.433656335,0.318163872],[new defaultSet(),12,0.433656335,0.681802273],[new defaultSet(),12,0.366999984,0.409076214],[new defaultSet(),12,0.366999984,0.499985218],[new defaultSet(),12,0.366999984,0.590893745],[new defaultSet(),14,0.633625031,0.136350155],[new defaultSet(),14,0.633625031,0.863619804],[new propertiesSet(),6,0.433656335,0.499985218]];
            }
            if(param2 == -1 && param3 == 0)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),34,0.500156224,0.318182498],[new defaultSet(),34,0.500156224,0.863635004],[new defaultSet(),34,0.233531296,0.318182498],[new defaultSet(),34,0.166875005,0.409091264],[new defaultSet(),34,0.166875005,0.863635004],[new defaultSet(),34,0.233531296,0.954543769],[new defaultSet(),30,0.166875005,0.5],[new defaultSet(),10,0.233531296,0.5],[new defaultSet(),28,0.766781211,0.5]];
            }
            if(param2 == 5 && param3 == 0)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),15,0.499218941,0.227273747],[new defaultSet(),15,0.499218941,0.772726238],[new defaultSet(),12,0.765843391,0.136364996],[new defaultSet(),12,0.765843391,0.863635004],[new defaultSet(),8,0.832499981,0.227273747],[new defaultSet(),8,0.832499981,0.772726238],[new defaultSet(),2,0.499218941,0.5],[new defaultSet(),2,0.765843391,0.5],[new defaultSet(),19,0.232594013,0.136364996],[new defaultSet(),18,0.232594013,0.863635004]];
            }
            if(param2 == 4 && param3 == 0)
            {
               return [[new decalSet(),79,0.5,0.5],[new defaultSet(),29,0.699343681,0.863635004],[new defaultSet(),29,0.699343681,0.136364996],[new defaultSet(),26,0.832655907,0.5],[new defaultSet(),18,0.432718754,0.227273747],[new defaultSet(),18,0.432718754,0.772726238],[new defaultSet(),18,0.499375343,0.772726238],[new defaultSet(),18,0.499375343,0.227273747],[new defaultSet(),28,0.566031456,0.318182498]];
            }
            if(param2 == 3 && param3 == -1)
            {
               return [[new decalSet(),83,0.5,0.5],[new defaultSet(),2,0.699499846,0.318186164],[new defaultSet(),2,0.299562454,0.318186164],[new defaultSet(),2,0.499531269,0.136368811],[new defaultSet(),13,0.299562454,0.409094989],[new defaultSet(),13,0.432875156,0.136368811],[new defaultSet(),13,0.566187382,0.136368811],[new defaultSet(),13,0.699499846,0.227277517],[new defaultSet(),13,0.699499846,0.409094989],[new defaultSet(),13,0.299562454,0.227277517],[new defaultSet(),13,0.366218805,0.500003755],[new defaultSet(),13,0.699499846,0.500003755],[new defaultSet(),13,0.632843733,0.590912461],[new defaultSet(),33,0.366218805,0.590912461],[new defaultSet(),19,0.232906103,0.136368811],[new defaultSet(),19,0.766156435,0.500003755]];
            }
            if(param2 == 1 && param3 == -1)
            {
               return [[new decalSet(),83,0.5,0.5],[new defaultSet(),2,0.499843836,0.136368811],[new defaultSet(),13,0.566499949,0.136368811],[new defaultSet(),13,0.63315618,0.136368811],[new defaultSet(),13,0.433187485,0.136368811],[new defaultSet(),13,0.366531253,0.136368811],[new defaultSet(),13,0.299875021,0.227277517],[new defaultSet(),13,0.699812531,0.227277517],[new defaultSet(),13,0.299875021,0.409094989],[new defaultSet(),13,0.699812531,0.409094989],[new defaultSet(),30,0.366531253,0.318186164],[new defaultSet(),30,0.63315618,0.318186164],[new defaultSet(),17,0.233218789,0.318186164],[new defaultSet(),19,0.766468763,0.318186164],[new defaultSet(),35,0.166562557,0.227277517],[new defaultSet(),35,0.833124995,0.227277517],[new defaultSet(),28,0.499843836,0.772729993],[new propertiesSet(),5,0.499843836,0.500003755]];
            }
            if(param2 == 3 && param3 == 0)
            {
               return [[new decalSet(),81,0.5,0.5],[new defaultSet(),3,0.499531269,0.5],[new defaultSet(),27,0.366218805,0.318182498],[new defaultSet(),27,0.366218805,0.681817472],[new defaultSet(),27,0.632843733,0.590908766],[new defaultSet(),27,0.632843733,0.681817472],[new defaultSet(),27,0.632843733,0.318182498],[new defaultSet(),27,0.432875156,0.409091264],[new defaultSet(),27,0.232906103,0.318182498],[new defaultSet(),27,0.766156435,0.318182498],[new defaultSet(),27,0.766156435,0.772726238],[new defaultSet(),27,0.232906103,0.772726238],[new defaultSet(),17,0.499531269,0.590908766],[new defaultSet(),17,0.499531269,0.409091264]];
            }
            if(param2 == 1 && param3 == 6)
            {
               return [[new decalSet(),81,0.5,0.5],[new defaultSet(),32,0.499843836,0.499977589],[new defaultSet(),32,0.299875021,0.409068584],[new defaultSet(),32,0.299875021,0.68179512],[new defaultSet(),34,0.499843836,0.863612175],[new defaultSet(),20,0.299875021,0.318160057],[new defaultSet(),18,0.63315618,0.318160057],[new defaultSet(),18,0.63315618,0.772703648],[new defaultSet(),18,0.299875021,0.772703648],[new defaultSet(),28,0.166562557,0.77270031]];
            }
            if(param2 == 2 && param3 == 6)
            {
               return [[new decalSet(),83,0.5,0.5],[new defaultSet(),15,0.366374969,0.863612175],[new defaultSet(),15,0.632999897,0.863612175],[new defaultSet(),30,0.366374969,0.68179512],[new defaultSet(),30,0.632999897,0.68179512],[new defaultSet(),18,0.366374969,0.318160057],[new defaultSet(),18,0.632999897,0.318160057],[new defaultSet(),35,0.299718618,0.68179512],[new defaultSet(),35,0.366374969,0.590886593],[new defaultSet(),35,0.632999897,0.590886593],[new defaultSet(),35,0.699656248,0.68179512],[new defaultSet(),35,0.766312361,0.863612175],[new defaultSet(),35,0.233062506,0.863612175]];
            }
            if(param2 == 2 && param3 == 5)
            {
               return [[new decalSet(),80,0.5,0.5],[new defaultSet(),2,0.366374969,0.499981403],[new defaultSet(),2,0.632999897,0.499981403],[new defaultSet(),2,0.499687672,0.499981403],[new defaultSet(),30,0.366374969,0.863616467],[new defaultSet(),30,0.632999897,0.863616467],[new defaultSet(),30,0.499687672,0.863616467],[new defaultSet(),13,0.299718618,0.499979496],[new defaultSet(),13,0.699656248,0.499979496],[new defaultSet(),13,0.566343784,0.499981403],[new defaultSet(),13,0.433031321,0.499981403]];
            }
            if(param2 == 1 && param3 == 5)
            {
               return [[new decalSet(),80,0.5,0.5],[new defaultSet(),22,0.499843836,0.499981403],[new defaultSet(),17,0.366531253,0.590889931],[new defaultSet(),17,0.63315618,0.590889931],[new defaultSet(),17,0.499843836,0.590889931],[new defaultSet(),17,0.299875021,0.499981403],[new defaultSet(),17,0.699812531,0.409072399],[new defaultSet(),17,0.699812531,0.499981403],[new defaultSet(),18,0.699812531,0.590889931],[new defaultSet(),18,0.299875021,0.409072399],[new defaultSet(),18,0.566499949,0.590889931],[new defaultSet(),14,0.766468763,0.772707462],[new defaultSet(),14,0.233218789,0.772707462],[new defaultSet(),14,0.233218789,0.227255344],[new defaultSet(),14,0.766468763,0.227255344]];
            }
            if(param2 == 0 && param3 == 4)
            {
               return [[new decalSet(),79,0.5,0.5],[new defaultSet(),26,0.433343738,0.772711277],[new defaultSet(),26,0.433343738,0.227258682],[new defaultSet(),17,0.433343738,0.409076214],[new defaultSet(),17,0.5,0.409076214],[new defaultSet(),17,0.433343738,0.590893745],[new defaultSet(),17,0.5,0.590893745],[new defaultSet(),17,0.566656232,0.409076214],[new defaultSet(),17,0.566656232,0.590893745],[new defaultSet(),8,0.233374998,0.499985218],[new defaultSet(),28,0.5,0.499985218]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),81,0.5,0.5],[new defaultSet(),34,0.765999794,0.318175077],[new defaultSet(),34,0.765999794,0.863627672],[new defaultSet(),18,0.566031456,0.227266073],[new defaultSet(),18,0.566031456,0.318175077],[new defaultSet(),18,0.566031456,0.863627672],[new defaultSet(),18,0.566031456,0.772718906],[new defaultSet(),18,0.566031456,0.681809902],[new defaultSet(),18,0.566031456,0.136357546],[new defaultSet(),18,0.366062641,0.318175077],[new defaultSet(),18,0.366062641,0.409083843],[new defaultSet(),18,0.366062641,0.772718906],[new defaultSet(),18,0.366062641,0.681809902],[new defaultSet(),27,0.632687569,0.136357546],[new defaultSet(),27,0.632687569,0.227266073],[new defaultSet(),27,0.632687569,0.863627672],[new defaultSet(),27,0.632687569,0.772718906],[new defaultSet(),2,0.832655907,0.136357546],[new defaultSet(),2,0.832655907,0.863627672],[new defaultSet(),28,0.166093826,0.318175077]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),12,0.300031245,0.136357546],[new defaultSet(),12,0.300031245,0.863627672],[new defaultSet(),2,0.5,0.499992609],[new defaultSet(),13,0.5,0.318175077],[new defaultSet(),13,0.5,0.681809902],[new defaultSet(),13,0.433343738,0.863627672],[new defaultSet(),13,0.433343738,0.318175077],[new defaultSet(),18,0.633312523,0.318175077],[new defaultSet(),18,0.633312523,0.681809902],[new defaultSet(),18,0.366687506,0.863627672],[new defaultSet(),18,0.366687506,0.136357546]];
            }
            if(param2 == 2 && param3 == 0)
            {
               return [[new decalSet(),83,0.5,0.5],[new defaultSet(),2,0.499687672,0.136364996],[new defaultSet(),27,0.566343784,0.136364996],[new defaultSet(),27,0.433031321,0.136364996],[new defaultSet(),13,0.299718618,0.318182498],[new defaultSet(),13,0.699656248,0.318182498],[new defaultSet(),13,0.166406155,0.5],[new defaultSet(),13,0.366374969,0.590908766],[new defaultSet(),13,0.233062506,0.681817472],[new defaultSet(),13,0.166406155,0.772726238],[new defaultSet(),13,0.499687672,0.772726238],[new defaultSet(),13,0.699656248,0.681817472],[new defaultSet(),13,0.766312361,0.772726238],[new defaultSet(),13,0.766312361,0.5],[new defaultSet(),13,0.832968712,0.590908766],[new defaultSet(),13,0.632999897,0.5],[new defaultSet(),13,0.433031321,0.5],[new defaultSet(),13,0.366374969,0.409091264],[new defaultSet(),13,0.166406155,0.227273747],[new propertiesSet(),1,0.499687672,0.5],[new defaultSet(),28,0.299718618,0.772726238]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),82,0.5,0.5],[new defaultSet(),32,0.166406155,0.590893745],[new defaultSet(),32,0.832968712,0.590893745],[new defaultSet(),30,0.233062506,0.772711277],[new defaultSet(),30,0.766312361,0.772711277],[new defaultSet(),29,0.499687672,0.772711277],[new defaultSet(),18,0.233062506,0.499985218],[new defaultSet(),18,0.766312361,0.499985218],[new defaultSet(),28,0.499687672,0.499985218]];
            }
            if(param2 == 5 && param3 == 2)
            {
               return [[new decalSet(),78,0.5,0.5],[new defaultSet(),5,0.499218941,0.499992609],[new propertiesSet(),1,0.499218941,0.772718906],[new defaultSet(),30,0.765843391,0.227266073],[new defaultSet(),30,0.765843391,0.772718906],[new defaultSet(),30,0.165937424,0.136357546],[new defaultSet(),30,0.165937424,0.863627672],[new defaultSet(),13,0.632531166,0.227266073],[new defaultSet(),13,0.499218941,0.318175077],[new defaultSet(),13,0.499218941,0.681809902],[new defaultSet(),13,0.632531166,0.863627672],[new defaultSet(),13,0.699187279,0.499992609],[new defaultSet(),13,0.832499981,0.499992609],[new propertiesSet(),7,0.499218941,0.590901136],[new propertiesSet(),4,0.499218941,0.409083843]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),75,0.5,0.5],[new propertiesSet(),0,0.499687672,0.227266073],[new defaultSet(),17,0.832968712,0.409083843],[new defaultSet(),17,0.832968712,0.499992609],[new defaultSet(),17,0.832968712,0.590901136],[new defaultSet(),17,0.099750042,0.499992609],[new defaultSet(),17,0.099750042,0.590901136],[new defaultSet(),17,0.099750042,0.409083843],[new defaultSet(),28,0.499687672,0.499992609],[new defaultSet(),39,0.233062506,0.681809902],[new defaultSet(),40,0.233062506,0.681809902]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),80,0.5,0.5],[new defaultSet(),14,0.766312361,0.227270007],[new defaultSet(),14,0.766312361,0.772722483],[new defaultSet(),17,0.699656248,0.409087539],[new defaultSet(),17,0.699656248,0.499996305],[new defaultSet(),17,0.699656248,0.590904951],[new defaultSet(),18,0.499687672,0.590904951],[new defaultSet(),18,0.499687672,0.499996305],[new defaultSet(),18,0.499687672,0.409087539],[new defaultSet(),18,0.499687672,0.681813836],[new defaultSet(),18,0.499687672,0.318178773],[new defaultSet(),15,0.566343784,0.136361241],[new defaultSet(),10,0.299718618,0.409087539]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),80,0.5,0.5],[new defaultSet(),10,0.699656248,0.499988794],[new defaultSet(),35,0.299718618,0.681806087],[new defaultSet(),35,0.433031321,0.499988794],[new defaultSet(),35,0.499687672,0.409080029],[new defaultSet(),35,0.632999897,0.59089756],[new defaultSet(),35,0.499687672,0.772715092],[new defaultSet(),35,0.632999897,0.954532385],[new defaultSet(),35,0.433031321,0.863623857],[new defaultSet(),35,0.566343784,0.59089756],[new defaultSet(),35,0.366374969,0.681806087],[new defaultSet(),35,0.299718618,0.499988794],[new defaultSet(),35,0.233062506,0.409080029],[new defaultSet(),35,0.766312361,0.772715092],[new defaultSet(),35,0.233062506,0.954532385]];
            }
         }
         if(missionNum == 9)
         {
            if(param2 == -3 && param3 == -7)
            {
               return [[new decalSet(),90,0.5,0.5],[new propertiesSet(),3,0.500468731,0.227300167],[new propertiesSet(),1,0.500468731,0.409117699],[new defaultSet(),38,0.167187452,0.681843758],[new defaultSet(),38,0.167187452,0.318208694],[new defaultSet(),38,0.83375001,0.318208694],[new defaultSet(),38,0.83375001,0.681843758]];
            }
            if(param2 == -3 && param3 == -6)
            {
               return [[new decalSet(),91,0.5,0.5],[new defaultSet(),33,0.367156267,0.136387825],[new defaultSet(),33,0.433812618,0.136387825],[new defaultSet(),33,0.567124844,0.136387825],[new defaultSet(),33,0.633781195,0.136387825],[new defaultSet(),33,0.500468731,0.227296352],[new defaultSet(),18,0.367156267,0.31820488],[new defaultSet(),18,0.633781195,0.31820488]];
            }
            if(param2 == -3 && param3 == -5)
            {
               return [[new decalSet(),96,0.5,0.5],[new defaultSet(),32,0.567124844,0.318201065],[new defaultSet(),32,0.567124844,0.681836605],[new defaultSet(),36,0.633781195,0.409110069],[new defaultSet(),36,0.633781195,0.590927601],[new defaultSet(),33,0.433812618,0.500018597],[new defaultSet(),18,0.500468731,0.86365366],[new defaultSet(),18,0.767093897,0.500021458],[new defaultSet(),10,0.83375001,0.500014782]];
            }
            if(param2 == -4 && param3 == -5)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),28,0.767250061,0.500018597],[new propertiesSet(),5,0.500624895,0.318197727],[new defaultSet(),36,0.833906174,0.409110069],[new defaultSet(),36,0.833906174,0.590927601],[new defaultSet(),36,0.833906174,0.500018597],[new defaultSet(),34,0.633937359,0.500018597],[new defaultSet(),34,0.633937359,0.681836605],[new defaultSet(),36,0.633937359,0.136383533],[new defaultSet(),36,0.633937359,0.86365366],[new defaultSet(),18,0.433968782,0.681836605],[new defaultSet(),18,0.36731267,0.681836605],[new propertiesSet(),6,0.500624895,0.500021458]];
            }
            if(param2 == -5 && param3 == -5)
            {
               return [[new decalSet(),89,0.5,0.5],[new propertiesSet(),1,0.500781059,0.500018597],[new defaultSet(),38,0.167500019,0.227292538],[new defaultSet(),38,0.767405987,0.227292538],[new defaultSet(),38,0.500781059,0.227292538],[new defaultSet(),36,0.100843906,0.409110069],[new defaultSet(),36,0.834062576,0.409110069],[new defaultSet(),36,0.834062576,0.681836605],[new defaultSet(),36,0.100843906,0.681836605],[new defaultSet(),17,0.367468834,0.772743702],[new defaultSet(),17,0.634093761,0.772744656]];
            }
            if(param2 == -5 && param3 == -4)
            {
               return [[new decalSet(),91,0.5,0.5],[new defaultSet(),12,0.367468834,0.227291822],[new defaultSet(),12,0.500781059,0.227291822],[new defaultSet(),12,0.634093761,0.227291822],[new defaultSet(),36,0.234156609,0.136379957],[new defaultSet(),36,0.767405987,0.136379957],[new defaultSet(),38,0.434124947,0.136379957],[new defaultSet(),38,0.567437172,0.136379957],[new defaultSet(),17,0.500781059,0.50001502]];
            }
            if(param2 == -5 && param3 == -3)
            {
               return [[new decalSet(),97,0.5,0.5],[new defaultSet(),15,0.700749874,0.227284908],[new defaultSet(),15,0.834062576,0.227284908],[new defaultSet(),38,0.167500019,0.772737741],[new defaultSet(),38,0.167500019,0.227284908],[new defaultSet(),38,0.634093761,0.500011206],[new defaultSet(),17,0.300812721,0.772737741],[new defaultSet(),17,0.300812721,0.227284908]];
            }
            if(param2 == -4 && param3 == -3)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),28,0.233999968,0.500011206],[new propertiesSet(),5,0.500624895,0.136377096],[new defaultSet(),36,0.233999968,0.318193913],[new defaultSet(),36,0.233999968,0.681828737],[new defaultSet(),35,0.30065608,0.500011206],[new defaultSet(),35,0.100687504,0.500011206],[new defaultSet(),35,0.100687504,0.681828737],[new defaultSet(),35,0.30065608,0.681828737],[new defaultSet(),26,0.36731267,0.500011206],[new defaultSet(),10,0.36731267,0.318193913]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),93,0.5,0.5],[new propertiesSet(),0,0.499687672,0.590901136],[new defaultSet(),28,0.499687672,0.499992609],[new defaultSet(),18,0.166406155,0.136357546],[new defaultSet(),18,0.233062506,0.136357546],[new defaultSet(),17,0.166406155,0.863627672],[new defaultSet(),17,0.233062506,0.863627672],[new defaultSet(),39,0.832968712,0.227263212],[new defaultSet(),40,0.832968712,0.227266073]];
            }
            if(param2 == -3 && param3 == -3)
            {
               return [[new decalSet(),93,0.5,0.5],[new defaultSet(),34,0.500468731,0.227282286],[new defaultSet(),34,0.500468731,0.954555035],[new defaultSet(),33,0.300500154,0.227284908],[new defaultSet(),33,0.300500154,0.681828737],[new defaultSet(),18,0.633781195,0.227284908],[new defaultSet(),18,0.633781195,0.318193913],[new defaultSet(),18,0.633781195,0.772737741],[new defaultSet(),18,0.633781195,0.681828737],[new defaultSet(),36,0.167187452,0.40910244],[new defaultSet(),36,0.167187452,0.590919971]];
            }
            if(param2 == 4 && param3 == -1)
            {
               return [[new decalSet(),93,0.5,0.5],[new defaultSet(),33,0.299406052,0.136368811],[new defaultSet(),33,0.699343681,0.136368811],[new defaultSet(),33,0.699343681,0.863638759],[new defaultSet(),33,0.299406052,0.863638759],[new defaultSet(),38,0.432718754,0.318186164],[new defaultSet(),38,0.432718754,0.681821227],[new defaultSet(),17,0.299406052,0.318186164],[new defaultSet(),17,0.299406052,0.409094989],[new defaultSet(),17,0.299406052,0.772729993],[new defaultSet(),17,0.299406052,0.681821227],[new defaultSet(),17,0.632687569,0.500003755],[new defaultSet(),17,0.699343681,0.500003755],[new defaultSet(),17,0.765999794,0.500003755],[new defaultSet(),17,0.832655907,0.500003755],[new defaultSet(),28,0.166093826,0.318186164]];
            }
            if(param2 == 3 && param3 == -1)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),33,0.632843733,0.500003755],[new defaultSet(),33,0.632843733,0.681821227],[new defaultSet(),33,0.632843733,0.318186164],[new defaultSet(),17,0.299562454,0.318186164],[new defaultSet(),17,0.299562454,0.409094989]];
            }
            if(param2 == 2 && param3 == -1)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),32,0.632999897,0.590912461],[new defaultSet(),30,0.632999897,0.409094989],[new defaultSet(),30,0.632999897,0.500003755],[new defaultSet(),17,0.433031321,0.681821227],[new defaultSet(),17,0.366374969,0.681821227]];
            }
            if(param2 == 0 && param3 == -5)
            {
               return [[new decalSet(),90,0.5,0.5],[new defaultSet(),26,0.166718751,0.227292538],[new defaultSet(),26,0.833281279,0.227292538],[new defaultSet(),33,0.300031245,0.409110069],[new defaultSet(),33,0.699968755,0.409110069]];
            }
            if(param2 == 0 && param3 == -4)
            {
               return [[new decalSet(),91,0.5,0.5],[new defaultSet(),26,0.5,0.136379957],[new defaultSet(),33,0.366687506,0.318197727],[new defaultSet(),33,0.633312523,0.318197727]];
            }
            if(param2 == 2 && param3 == -3)
            {
               return [[new decalSet(),97,0.5,0.5],[new defaultSet(),5,0.766312361,0.318193913],[new propertiesSet(),1,0.499687672,0.500011206],[new defaultSet(),32,0.366374969,0.227284908],[new defaultSet(),32,0.366374969,0.772737741]];
            }
            if(param2 == -2 && param3 == -3)
            {
               return [[new decalSet(),89,0.5,0.5],[new defaultSet(),35,0.366999984,0.318193913],[new defaultSet(),35,0.300343752,0.40910244],[new defaultSet(),35,0.167031288,0.500011206],[new defaultSet(),35,0.233687639,0.681828737],[new defaultSet(),35,0.167031288,0.863646269],[new defaultSet(),35,0.366999984,0.863646269],[new defaultSet(),35,0.366999984,0.590919971],[new defaultSet(),35,0.300343752,0.954555035],[new defaultSet(),32,0.500312448,0.227284908],[new defaultSet(),32,0.500312448,0.863646269],[new defaultSet(),28,0.700281382,0.500011206]];
            }
            if(param2 == 1 && param3 == -3)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),12,0.699812531,0.318193913],[new defaultSet(),12,0.699812531,0.500011206],[new defaultSet(),12,0.699812531,0.40910244],[new defaultSet(),12,0.699812531,0.590919971],[new defaultSet(),12,0.699812531,0.681828737],[new defaultSet(),34,0.833124995,0.590919971],[new propertiesSet(),6,0.499843836,0.500011206]];
            }
            if(param2 == -1 && param3 == -3)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),33,0.300187469,0.590919971],[new defaultSet(),33,0.300187469,0.681828737],[new defaultSet(),35,0.700125039,0.227284908],[new defaultSet(),35,0.633468747,0.227284908],[new defaultSet(),35,0.566812515,0.318193913],[new defaultSet(),35,0.433499992,0.318193913],[new defaultSet(),35,0.36684382,0.863646269],[new defaultSet(),35,0.433499992,0.954555035],[new defaultSet(),35,0.633468747,0.954555035],[new defaultSet(),35,0.766781211,0.954555035]];
            }
            if(param2 == 0 && param3 == -3)
            {
               return [[new decalSet(),96,0.5,0.5],[new defaultSet(),34,0.5,0.500011206],[new defaultSet(),34,0.5,0.681828737],[new defaultSet(),34,0.233374998,0.590919971],[new defaultSet(),34,0.766624987,0.590919971],[new defaultSet(),10,0.166718751,0.318193913],[new defaultSet(),18,0.366687506,0.136376143],[new defaultSet(),18,0.633312523,0.136376143],[new defaultSet(),28,0.5,0.227284908]];
            }
            if(param2 == 0 && param3 == -2)
            {
               return [[new decalSet(),91,0.5,0.5],[new defaultSet(),33,0.433343738,0.227281213],[new defaultSet(),33,0.566656232,0.227281213]];
            }
            if(param2 == -1 && param3 == -1)
            {
               return [[new decalSet(),97,0.5,0.5],[new defaultSet(),33,0.36684382,0.227277517],[new defaultSet(),33,0.233531296,0.136368811],[new defaultSet(),33,0.300187469,0.772729993],[new defaultSet(),33,0.166875005,0.863638759],[new defaultSet(),29,0.566812515,0.136368811],[new defaultSet(),29,0.566812515,0.863638759],[new defaultSet(),18,0.700125039,0.500003755],[new defaultSet(),18,0.700125039,0.409094989],[new defaultSet(),18,0.700125039,0.590912461],[new defaultSet(),5,0.233531296,0.409094989],[new propertiesSet(),1,0.433499992,0.590912461]];
            }
            if(param2 == 1 && param3 == -1)
            {
               return [[new decalSet(),97,0.5,0.5],[new defaultSet(),33,0.699812531,0.136368811],[new defaultSet(),33,0.63315618,0.318186164],[new defaultSet(),33,0.63315618,0.681821227],[new defaultSet(),33,0.699812531,0.863638759],[new defaultSet(),29,0.833124995,0.227277517],[new defaultSet(),29,0.833124995,0.772729993],[new defaultSet(),10,0.63315618,0.500003755],[new defaultSet(),28,0.299875021,0.500003755],[new propertiesSet(),6,0.499843836,0.500003755]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),96,0.5,0.5],[new defaultSet(),36,0.233374998,0.136368811],[new defaultSet(),36,0.766624987,0.136368811],[new defaultSet(),36,0.766624987,0.863638759],[new defaultSet(),36,0.233374998,0.863638759],[new defaultSet(),26,0.5,0.500003755]];
            }
            if(param2 == 1 && param3 == 0)
            {
               return [[new decalSet(),95,0.5,0.5],[new defaultSet(),34,0.499843836,0.863635004],[new defaultSet(),34,0.499843836,0.590908766],[new defaultSet(),35,0.566499949,0.681817472],[new defaultSet(),35,0.433187485,0.681817472],[new defaultSet(),35,0.433187485,0.5],[new defaultSet(),35,0.566499949,0.5],[new defaultSet(),17,0.766468763,0.5],[new defaultSet(),17,0.499843836,0.227273747]];
            }
            if(param2 == -1 && param3 == 0)
            {
               return [[new decalSet(),95,0.5,0.5],[new defaultSet(),18,0.433499992,0.227273747],[new defaultSet(),18,0.500156224,0.227273747],[new defaultSet(),18,0.566812515,0.227273747],[new defaultSet(),35,0.500156224,0.590908766],[new defaultSet(),35,0.36684382,0.590908766],[new defaultSet(),35,0.633468747,0.590908766],[new defaultSet(),35,0.500156224,0.409091264],[new defaultSet(),35,0.500156224,0.772726238],[new defaultSet(),13,0.566812515,0.409091264],[new defaultSet(),13,0.566812515,0.590908766],[new defaultSet(),13,0.433499992,0.590908766],[new defaultSet(),13,0.433499992,0.409091264],[new defaultSet(),14,0.300187469,0.227273747],[new defaultSet(),14,0.300187469,0.772726238]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),95,0.5,0.5],[new defaultSet(),21,0.5,0.590908766],[new defaultSet(),33,0.300031245,0.5],[new defaultSet(),33,0.699968755,0.5],[new defaultSet(),28,0.5,0.227273747]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),96,0.5,0.5],[new defaultSet(),36,0.166718751,0.499996305],[new defaultSet(),36,0.89993751,0.499996305],[new defaultSet(),36,0.366687506,0.136361241],[new defaultSet(),36,0.5,0.136361241],[new defaultSet(),36,0.633312523,0.136361241],[new defaultSet(),15,0.5,0.318178773],[new defaultSet(),17,0.366687506,0.590904951],[new defaultSet(),17,0.633312523,0.590904951],[new defaultSet(),17,0.5,0.590904951]];
            }
            if(param2 == 4 && param3 == 5)
            {
               return [[new decalSet(),97,0.5,0.5],[new defaultSet(),34,0.299406052,0.863616467],[new defaultSet(),34,0.699343681,0.863616467],[new defaultSet(),38,0.765999794,0.590889931],[new defaultSet(),38,0.232749939,0.590889931],[new defaultSet(),35,0.166093826,0.863616467],[new defaultSet(),35,0.366062641,0.681798935],[new defaultSet(),35,0.366062641,0.772707462],[new defaultSet(),35,0.632687569,0.681798935],[new defaultSet(),35,0.765999794,0.772707462],[new defaultSet(),35,0.832655907,0.863616467],[new defaultSet(),35,0.899312496,0.681798935],[new defaultSet(),17,0.299406052,0.499981403],[new defaultSet(),17,0.232749939,0.499981403],[new defaultSet(),17,0.699343681,0.499981403],[new defaultSet(),17,0.765999794,0.499981403],[new defaultSet(),17,0.899312496,0.499981403]];
            }
            if(param2 == 4 && param3 == 4)
            {
               return [[new decalSet(),96,0.5,0.5],[new defaultSet(),36,0.765999794,0.499982357],[new defaultSet(),36,0.765999794,0.136350155],[new defaultSet(),36,0.832655907,0.863619804],[new defaultSet(),34,0.499375343,0.227258682],[new defaultSet(),34,0.499375343,0.954528809],[new defaultSet(),18,0.432718754,0.681802273],[new defaultSet(),18,0.432718754,0.318167686],[new defaultSet(),28,0.299406052,0.499985218]];
            }
            if(param2 == 0 && param3 == 4)
            {
               return [[new decalSet(),97,0.5,0.5],[new defaultSet(),38,0.5,0.136350155],[new defaultSet(),38,0.5,0.863619804],[new defaultSet(),35,0.633312523,0.318167686],[new defaultSet(),35,0.699968755,0.227258682],[new defaultSet(),35,0.766624987,0.227258682],[new defaultSet(),35,0.833281279,0.318167686],[new defaultSet(),35,0.766624987,0.318167686],[new defaultSet(),35,0.300031245,0.227258682],[new defaultSet(),35,0.166718751,0.227258682],[new defaultSet(),35,0.100062512,0.318167686],[new defaultSet(),35,0.233374998,0.318167686],[new defaultSet(),35,0.300031245,0.318167686],[new defaultSet(),18,0.699968755,0.681802273],[new defaultSet(),18,0.699968755,0.772711277],[new defaultSet(),18,0.699968755,0.590893745],[new defaultSet(),18,0.699968755,0.863619804],[new defaultSet(),10,0.166718751,0.499986172],[new propertiesSet(),6,0.5,0.499985218]];
            }
            if(param2 == -1 && param3 == 2)
            {
               return [[new decalSet(),97,0.5,0.5],[new defaultSet(),33,0.566812515,0.136357546],[new defaultSet(),33,0.566812515,0.863627672],[new defaultSet(),2,0.36684382,0.318175077],[new defaultSet(),2,0.233531296,0.499992609],[new defaultSet(),2,0.36684382,0.681809902],[new defaultSet(),27,0.36684382,0.227266073],[new defaultSet(),27,0.36684382,0.772718906],[new defaultSet(),27,0.300187469,0.499992609],[new defaultSet(),16,0.166875005,0.318175077],[new defaultSet(),18,0.700125039,0.227266073],[new defaultSet(),18,0.700125039,0.772718906]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),17,0.499531269,0.590901136],[new defaultSet(),18,0.566187382,0.681809902],[new defaultSet(),38,0.766156435,0.318175077],[new defaultSet(),38,0.766156435,0.681809902],[new defaultSet(),27,0.632843733,0.409083843],[new defaultSet(),27,0.632843733,0.590901136],[new defaultSet(),27,0.632843733,0.499992609]];
            }
            if(param2 == 2 && param3 == 1)
            {
               return [[new decalSet(),90,0.5,0.5],[new defaultSet(),10,0.499687672,0.227270007],[new defaultSet(),33,0.299718618,0.499996305],[new defaultSet(),33,0.699656248,0.499996305],[new defaultSet(),33,0.233062506,0.590904951],[new defaultSet(),33,0.766312361,0.590904951],[new defaultSet(),36,0.233062506,0.318178773],[new defaultSet(),36,0.766312361,0.318178773],[new defaultSet(),38,0.499687672,0.318178773]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),91,0.5,0.5],[new defaultSet(),38,0.366374969,0.772715092],[new defaultSet(),38,0.632999897,0.772715092],[new defaultSet(),38,0.499687672,0.863623857]];
            }
            if(param2 == 5 && param3 == 3)
            {
               return [[new decalSet(),94,0.5,0.5],[new defaultSet(),38,0.165937424,0.863625526],[new defaultSet(),38,0.832499981,0.863625526],[new defaultSet(),38,0.765843391,0.681809187],[new defaultSet(),38,0.232594013,0.681809187],[new defaultSet(),17,0.232594013,0.499988794],[new defaultSet(),17,0.299250126,0.499988794],[new defaultSet(),17,0.765843391,0.499988794],[new defaultSet(),17,0.699187279,0.499988794]];
            }
            if(param2 == 5 && param3 == 1)
            {
               return [[new decalSet(),90,0.5,0.5],[new defaultSet(),32,0.499218941,0.227270007],[new defaultSet(),38,0.232594013,0.227270007],[new defaultSet(),38,0.765843391,0.227270007],[new defaultSet(),36,0.299250126,0.409087539],[new defaultSet(),36,0.699187279,0.409087539]];
            }
            if(param2 == 5 && param3 == 2)
            {
               return [[new decalSet(),93,0.5,0.5],[new defaultSet(),36,0.765843391,0.136357546],[new defaultSet(),36,0.765843391,0.863627672],[new defaultSet(),36,0.632531166,0.772718906],[new defaultSet(),36,0.765843391,0.590901136],[new defaultSet(),36,0.699187279,0.409083843],[new defaultSet(),36,0.632531166,0.136357546],[new defaultSet(),36,0.499218941,0.136357546],[new defaultSet(),36,0.432562828,0.318175077],[new defaultSet(),36,0.499218941,0.590901136],[new defaultSet(),36,0.432562828,0.681809902],[new defaultSet(),36,0.565875053,0.318175077],[new defaultSet(),18,0.299250126,0.227266073],[new defaultSet(),18,0.299250126,0.318175077],[new defaultSet(),18,0.299250126,0.681809902],[new defaultSet(),18,0.299250126,0.772718906],[new defaultSet(),28,0.299250126,0.499992609]];
            }
            if(param2 == 2 && param3 == 5)
            {
               return [[new decalSet(),94,0.5,0.5],[new defaultSet(),38,0.499687672,0.772707462],[new defaultSet(),33,0.233062506,0.590889931],[new defaultSet(),33,0.766312361,0.590889931],[new defaultSet(),36,0.299718618,0.409072399],[new defaultSet(),36,0.699656248,0.409072399],[new defaultSet(),30,0.766312361,0.863616467],[new defaultSet(),30,0.233062506,0.863616467]];
            }
            if(param2 == 3 && param3 == 4)
            {
               return [[new decalSet(),93,0.5,0.5],[new defaultSet(),21,0.499531269,0.590893745],[new defaultSet(),18,0.432875156,0.409076214],[new defaultSet(),19,0.499531269,0.409076214],[new defaultSet(),20,0.566187382,0.409076214],[new defaultSet(),33,0.366218805,0.227258682],[new defaultSet(),33,0.632843733,0.227258682],[new defaultSet(),33,0.632843733,0.772711277],[new defaultSet(),33,0.366218805,0.772711277],[new propertiesSet(),1,0.499531269,0.499985218]];
            }
            if(param2 == 1 && param3 == 4)
            {
               return [[new decalSet(),93,0.5,0.5],[new defaultSet(),6,0.499843836,0.499985218],[new defaultSet(),38,0.299875021,0.227258682],[new defaultSet(),38,0.299875021,0.772711277],[new defaultSet(),18,0.366531253,0.227258682],[new defaultSet(),18,0.366531253,0.772711277],[new defaultSet(),18,0.433187485,0.772711277],[new defaultSet(),18,0.433187485,0.227258682],[new defaultSet(),18,0.366531253,0.863619804],[new defaultSet(),18,0.366531253,0.136350155]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),95,0.5,0.5],[new defaultSet(),36,0.233062506,0.227258682],[new defaultSet(),36,0.233062506,0.772711277],[new defaultSet(),36,0.766312361,0.772711277],[new defaultSet(),36,0.766312361,0.227258682],[new defaultSet(),34,0.499687672,0.863619804],[new defaultSet(),28,0.499687672,0.499985218]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),89,0.5,0.5],[new defaultSet(),33,0.5,0.318175077],[new defaultSet(),33,0.5,0.681809902],[new defaultSet(),33,0.5,0.227266073],[new defaultSet(),33,0.5,0.772718906],[new defaultSet(),35,0.366687506,0.409083843],[new defaultSet(),35,0.233374998,0.318175077],[new defaultSet(),35,0.233374998,0.9545362],[new defaultSet(),35,0.300031245,0.863627672],[new defaultSet(),17,0.699968755,0.409086704],[new defaultSet(),17,0.699968755,0.590901136],[new defaultSet(),28,0.699968755,0.499992609]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),89,0.5,0.5],[new defaultSet(),35,0.699343681,0.318175077],[new defaultSet(),35,0.632687569,0.227266073],[new defaultSet(),35,0.566031456,0.318175077],[new defaultSet(),35,0.699343681,0.499992609],[new defaultSet(),35,0.765999794,0.681809902],[new defaultSet(),35,0.699343681,0.772718906],[new defaultSet(),35,0.632687569,0.772718906],[new defaultSet(),35,0.566031456,0.9545362],[new defaultSet(),35,0.432718754,0.863627672],[new defaultSet(),35,0.765999794,0.863627672],[new defaultSet(),35,0.765999794,0.318175077],[new defaultSet(),35,0.832655907,0.409083843],[new defaultSet(),33,0.566031456,0.318175077],[new defaultSet(),33,0.566031456,0.681809902],[new defaultSet(),33,0.765999794,0.409083843],[new propertiesSet(),6,0.499375343,0.499992609]];
            }
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),92,0.5,0.5],[new defaultSet(),29,0.233218789,0.136361361],[new defaultSet(),29,0.366531253,0.86362505],[new defaultSet(),38,0.166562557,0.499992609],[new defaultSet(),17,0.366531253,0.318175077],[new defaultSet(),17,0.299875021,0.318175077],[new propertiesSet(),1,0.499843836,0.409083843]];
            }
         }
         if(missionNum == 10)
         {
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),130,0.5,0.5],[new defaultSet(),33,0.699968755,0.136367798],[new defaultSet(),33,0.89993751,0.318181485],[new defaultSet(),26,0.766624987,0.318182617],[new defaultSet(),18,0.633312523,0.136364996],[new defaultSet(),18,0.89993751,0.409091264],[new defaultSet(),17,0.366687506,0.136364996],[new defaultSet(),19,0.89993751,0.5],[new defaultSet(),20,0.433343738,0.13636227],[new defaultSet(),18,0.166718751,0.954543769],[new defaultSet(),18,0.166718751,0.863635004],[new defaultSet(),41,0.566656232,0.318182498],[new defaultSet(),41,0.633312523,0.5],[new defaultSet(),41,0.766624987,0.590908766],[new defaultSet(),41,0.766624987,0.772726238],[new defaultSet(),16,0.300031245,0.590908766]];
            }
            if(param2 == 2 && param3 == 9)
            {
               return [[new decalSet(),131,0.5,0.5],[new defaultSet(),26,0.699656248,0.59087944],[new defaultSet(),32,0.299718618,0.590872765],[new defaultSet(),42,0.099750042,0.863604546],[new defaultSet(),42,0.899625063,0.863600731],[new defaultSet(),22,0.499687672,0.409057617]];
            }
            if(param2 == 5 && param3 == 12)
            {
               return [[new decalSet(),131,0.5,0.5],[new defaultSet(),32,0.165937424,0.499957085],[new defaultSet(),32,0.832499981,0.499957085]];
            }
            if(param2 == -2 && param3 == 4)
            {
               return [[new decalSet(),134,0.5,0.5],[new defaultSet(),32,0.366999984,0.499981403],[new defaultSet(),33,0.366999984,0.318169594],[new defaultSet(),33,0.366999984,0.681805134],[new defaultSet(),21,0.300343752,0.863624096],[new defaultSet(),6,0.500312448,0.499985218]];
            }
            if(param2 == -2 && param3 == 3)
            {
               return [[new decalSet(),151,0.5,0.5],[new defaultSet(),37,0.766937494,0.318171501],[new defaultSet(),34,0.366999984,0.227264404],[new defaultSet(),36,0.900250077,0.49998951],[new defaultSet(),21,0.366999984,0.499988794]];
            }
            if(param2 == 2 && param3 == 8)
            {
               return [[new decalSet(),114,0.5,0.5],[new defaultSet(),25,0.499687672,0.954510689],[new defaultSet(),38,0.166406155,0.499972343],[new defaultSet(),38,0.832968712,0.499972343],[new defaultSet(),17,0.499687672,0.318152428],[new defaultSet(),17,0.499687672,0.499970436],[new defaultSet(),19,0.499687672,0.409061432],[new defaultSet(),20,0.499687672,0.590878487],[new defaultSet(),17,0.499687672,0.681787491],[new defaultSet(),17,0.233062506,0.318152428],[new defaultSet(),17,0.166406155,0.409061432],[new defaultSet(),17,0.832968712,0.318152428],[new defaultSet(),17,0.766312361,0.409061432],[new defaultSet(),18,0.766312361,0.318152428],[new defaultSet(),18,0.233062506,0.409061432],[new defaultSet(),20,0.099750042,0.318152428],[new defaultSet(),19,0.832968712,0.409061432],[new defaultSet(),16,0.166406155,0.772696495],[new defaultSet(),16,0.899625063,0.863604546]];
            }
            if(param2 == 6 && param3 == 5)
            {
               return [[new decalSet(),106,0.5,0.5],[new defaultSet(),25,0.832343578,0.590890408],[new defaultSet(),19,0.632374763,0.409072399],[new defaultSet(),20,0.365750313,0.590889931]];
            }
            if(param2 == 7 && param3 == 5)
            {
               return [[new decalSet(),108,0.5,0.5],[new defaultSet(),26,0.698874474,0.499977112],[new defaultSet(),42,0.765531063,0.227256298],[new defaultSet(),42,0.765531063,0.772709846],[new defaultSet(),17,0.432250023,0.227255344],[new defaultSet(),17,0.498906136,0.227255344],[new defaultSet(),18,0.432250023,0.772707462],[new defaultSet(),18,0.498906136,0.772707462],[new defaultSet(),19,0.432250023,0.681798935],[new defaultSet(),5,0.632218838,0.499981403]];
            }
            if(param2 == 5 && param3 == 5)
            {
               return [[new decalSet(),134,0.5,0.5],[new propertiesSet(),5,0.499218941,0.772708416],[new defaultSet(),28,0.365906239,0.499984264],[new defaultSet(),26,0.365906239,0.31815958],[new defaultSet(),32,0.565875053,0.318164349],[new defaultSet(),34,0.499218941,0.590891361],[new defaultSet(),23,0.765843391,0.13634634],[new defaultSet(),20,0.165937424,0.0454378128],[new defaultSet(),20,0.165937424,0.13634634],[new defaultSet(),19,0.165937424,0.954524517]];
            }
            if(param2 == 9 && param3 == 8)
            {
               return [[new decalSet(),114,0.5,0.5],[new defaultSet(),26,0.498594284,0.499966621],[new defaultSet(),42,0.23196888,0.499967575],[new defaultSet(),42,0.765218735,0.499970436],[new defaultSet(),21,0.89853096,0.590878487],[new defaultSet(),20,0.031999588,0.409061432],[new defaultSet(),17,0.031999588,0.499970436],[new defaultSet(),41,0.831874847,0.772696495],[new defaultSet(),41,0.831874847,0.863604546],[new defaultSet(),41,0.89853096,0.863604546],[new defaultSet(),41,0.89853096,0.772696495],[new defaultSet(),41,0.165311813,0.772696495],[new defaultSet(),41,0.165311813,0.863604546],[new defaultSet(),41,0.0986566544,0.863604546],[new defaultSet(),41,0.0986566544,0.772696495],[new defaultSet(),41,0.0986566544,0.136335373],[new defaultSet(),41,0.0986566544,0.227243423],[new defaultSet(),41,0.165311813,0.227243423],[new defaultSet(),41,0.89853096,0.227243423]];
            }
            if(param2 == 9 && param3 == 9)
            {
               return [[new decalSet(),107,0.5,0.5],[new defaultSet(),36,0.498594284,0.499970436],[new defaultSet(),33,0.365281105,0.49996376],[new defaultSet(),33,0.631906509,0.499962807],[new propertiesSet(),5,0.498594284,0.77269268],[new defaultSet(),28,0.498594284,0.590875626]];
            }
            if(param2 == 10 && param3 == 11)
            {
               return [[new decalSet(),106,0.5,0.5],[new defaultSet(),41,0.898374557,0.409049034],[new defaultSet(),41,0.898374557,0.499958038],[new defaultSet(),41,0.898374557,0.590867043],[new defaultSet(),41,0.831718445,0.499958038],[new defaultSet(),41,0.765062332,0.499958038],[new defaultSet(),41,0.698406219,0.499958038],[new defaultSet(),42,0.565093994,0.318141937],[new defaultSet(),42,0.565093994,0.681776047],[new defaultSet(),42,0.698406219,0.227232933],[new defaultSet(),42,0.698406219,0.772685051]];
            }
            if(param2 == 5 && param3 == 11)
            {
               return [[new decalSet(),112,0.5,0.5],[new defaultSet(),2,0.365906239,0.499958038],[new defaultSet(),2,0.632531166,0.499958038],[new defaultSet(),29,0.632531166,0.499954224],[new defaultSet(),29,0.365906239,0.499954224],[new defaultSet(),28,0.832499981,0.499958038],[new propertiesSet(),5,0.499218941,0.318141937]];
            }
            if(param2 == 0 && param3 == 5)
            {
               return [[new decalSet(),114,0.5,0.5],[new defaultSet(),29,0.5,0.136344433],[new defaultSet(),36,0.833281279,0.13634634],[new propertiesSet(),6,0.5,0.499981403],[new defaultSet(),36,0.166718751,0.136349678],[new defaultSet(),36,0.100062512,0.227255344],[new defaultSet(),36,0.89993751,0.227255344],[new defaultSet(),2,0.5,0.499977589],[new defaultSet(),18,0.89993751,0.409070969],[new defaultSet(),18,0.89993751,0.499978542],[new defaultSet(),17,0.89993751,0.590886593],[new defaultSet(),17,0.100062512,0.409070969],[new defaultSet(),17,0.100062512,0.499978542],[new defaultSet(),19,0.100062512,0.590886593]];
            }
            if(param2 == -3 && param3 == 3)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),34,0.300500154,0.227259398],[new defaultSet(),34,0.700437546,0.954536438],[new defaultSet(),42,0.500468731,0.136356354],[new defaultSet(),42,0.500468731,0.863627672],[new defaultSet(),20,0.367156267,0.409080029],[new defaultSet(),17,0.433812618,0.409080029]];
            }
            if(param2 == -2 && param3 == 5)
            {
               return [[new decalSet(),107,0.5,0.5],[new defaultSet(),34,0.366999984,0.590891838],[new defaultSet(),25,0.633625031,0.590886116]];
            }
            if(param2 == -3 && param3 == 6)
            {
               return [[new decalSet(),105,0.5,0.5],[new defaultSet(),26,0.500468731,0.136344433],[new defaultSet(),34,0.500468731,0.954523087],[new defaultSet(),36,0.700437546,0.499977589]];
            }
            if(param2 == 2 && param3 == 13)
            {
               return [[new decalSet(),111,0.5,0.5],[new propertiesSet(),5,0.499687672,0.318134308],[new defaultSet(),28,0.499687672,0.499951363],[new defaultSet(),33,0.499687672,0.681768417],[new defaultSet(),36,0.299718618,0.499947548],[new defaultSet(),36,0.699656248,0.499947548],[new defaultSet(),35,0.566343784,0.499951363],[new defaultSet(),35,0.433031321,0.499951363]];
            }
            if(param2 == 4 && param3 == 13)
            {
               return [[new decalSet(),106,0.5,0.5],[new defaultSet(),42,0.366062641,0.13631916],[new defaultSet(),42,0.632687569,0.136315346],[new defaultSet(),42,0.632687569,0.772680283],[new defaultSet(),42,0.366062641,0.772677422],[new defaultSet(),13,0.566031456,0.409042358],[new defaultSet(),13,0.566031456,0.499951363],[new defaultSet(),13,0.566031456,0.590860367],[new defaultSet(),13,0.499375343,0.590860367],[new defaultSet(),13,0.499375343,0.499951363],[new defaultSet(),13,0.499375343,0.409042358],[new defaultSet(),13,0.432718754,0.409042358],[new defaultSet(),13,0.432718754,0.499951363],[new defaultSet(),13,0.432718754,0.590860367],[new defaultSet(),2,0.366062641,0.499951363],[new defaultSet(),2,0.632687569,0.499951363]];
            }
            if(param2 == 2 && param3 == 12)
            {
               return [[new decalSet(),107,0.5,0.5],[new defaultSet(),22,0.566343784,0.499955177],[new defaultSet(),34,0.699656248,0.681775093],[new defaultSet(),34,0.299718618,0.681777]];
            }
            if(param2 == 3 && param3 == 10)
            {
               return [[new decalSet(),108,0.5,0.5],[new defaultSet(),36,0.766156435,0.227233887],[new defaultSet(),36,0.766156435,0.77269268],[new defaultSet(),36,0.699499846,0.590875626],[new defaultSet(),36,0.699499846,0.409051895],[new defaultSet(),20,0.432875156,0.772688866],[new defaultSet(),20,0.432875156,0.318144798],[new defaultSet(),19,0.499531269,0.227235794],[new defaultSet(),18,0.499531269,0.772688866],[new defaultSet(),18,0.432875156,0.681779861],[new defaultSet(),18,0.432875156,0.227235794]];
            }
            if(param2 == 1 && param3 == 10)
            {
               return [[new decalSet(),110,0.5,0.5],[new defaultSet(),34,0.166562557,0.227239609],[new defaultSet(),34,0.166562557,0.954507828],[new defaultSet(),42,0.166562557,0.499965668],[new defaultSet(),18,0.499843836,0.13632679],[new defaultSet(),17,0.433187485,0.86359787],[new defaultSet(),41,0.433187485,0.318144798],[new defaultSet(),41,0.63315618,0.409053802],[new defaultSet(),41,0.566499949,0.499962807],[new defaultSet(),41,0.433187485,0.590870857],[new defaultSet(),41,0.366531253,0.681779861],[new defaultSet(),41,0.299875021,0.681779861]];
            }
            if(param2 == -4 && param3 == 8)
            {
               return [[new decalSet(),113,0.5,0.5],[new propertiesSet(),6,0.500624895,0.681787491],[new defaultSet(),25,0.500624895,0.590882301],[new defaultSet(),21,0.167343855,0.499972343],[new defaultSet(),6,0.767250061,0.499970436]];
            }
            if(param2 == 8 && param3 == 0)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),34,0.498750687,0.954540431],[new defaultSet(),34,0.498750687,0.227273181],[new defaultSet(),42,0.298781395,0.136365756],[new defaultSet(),42,0.698719025,0.863631964],[new defaultSet(),18,0.698719025,0.136364996],[new defaultSet(),20,0.298781395,0.863635004]];
            }
            if(param2 == 10 && param3 == 4)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),34,0.698406219,0.954526901],[new defaultSet(),34,0.698406219,0.227258205],[new defaultSet(),36,0.29846859,0.863621712],[new defaultSet(),17,0.431780815,0.409076214],[new defaultSet(),17,0.631750107,0.590893745],[new defaultSet(),19,0.565093994,0.590893745],[new defaultSet(),36,0.29846859,0.136348248]];
            }
            if(param2 == 6 && param3 == 13)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),34,0.499062538,0.954498291],[new defaultSet(),29,0.499062538,0.136315346],[new defaultSet(),29,0.299093723,0.863589287],[new defaultSet(),29,0.699030876,0.863589287],[new defaultSet(),18,0.432406425,0.409042358],[new defaultSet(),19,0.365750313,0.409042358],[new defaultSet(),18,0.632374763,0.590860367],[new defaultSet(),20,0.565718651,0.590860367]];
            }
            if(param2 == -3 && param3 == 11)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),42,0.500468731,0.499955177],[new defaultSet(),19,0.367156267,0.409049034],[new defaultSet(),19,0.433812618,0.409049034],[new defaultSet(),19,0.633781195,0.590867043],[new defaultSet(),18,0.567124844,0.590867043],[new defaultSet(),13,0.300500154,0.136323929],[new defaultSet(),13,0.300500154,0.227232933],[new defaultSet(),13,0.300500154,0.318141937],[new defaultSet(),13,0.500468731,0.136323929],[new defaultSet(),13,0.500468731,0.227232933],[new defaultSet(),13,0.500468731,0.318141937],[new defaultSet(),13,0.700437546,0.136323929],[new defaultSet(),13,0.700437546,0.227232933],[new defaultSet(),13,0.700437546,0.318141937],[new defaultSet(),13,0.700437546,0.863593102],[new defaultSet(),13,0.700437546,0.772685051],[new defaultSet(),13,0.700437546,0.681776047],[new defaultSet(),13,0.500468731,0.681776047],[new defaultSet(),13,0.500468731,0.772685051],[new defaultSet(),13,0.500468731,0.863593102],[new defaultSet(),13,0.300500154,0.681776047]
               ,[new defaultSet(),13,0.300500154,0.772685051],[new defaultSet(),13,0.300500154,0.863593102]];
            }
            if(param2 == 1 && param3 == 7)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),34,0.499843836,0.954514503],[new defaultSet(),34,0.299875021,0.227246761],[new defaultSet(),34,0.299875021,0.954515457],[new defaultSet(),34,0.499843836,0.227249622],[new defaultSet(),17,0.766468763,0.590881348],[new defaultSet(),17,0.566499949,0.590882301],[new defaultSet(),17,0.366531253,0.590882301],[new defaultSet(),17,0.366531253,0.40906477],[new defaultSet(),18,0.433187485,0.40906477],[new defaultSet(),18,0.433187485,0.590882301]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),164,0.5,0.5],[new propertiesSet(),0,0.632999897,0.136355639],[new defaultSet(),28,0.699656248,0.40908289],[new defaultSet(),40,0.899625063,0.318171501],[new defaultSet(),39,0.899625063,0.318169355]];
            }
            if(param2 == -3 && param3 == 0)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),36,0.900406361,0.863635659],[new defaultSet(),36,0.10053134,0.136365637],[new defaultSet(),36,0.10053134,0.863635659],[new defaultSet(),36,0.900406361,0.136365637],[new defaultSet(),34,0.500468731,0.318179458],[new defaultSet(),34,0.500468731,0.863631964],[new defaultSet(),17,0.433812618,0.318182498],[new defaultSet(),17,0.433812618,0.227273747],[new defaultSet(),20,0.700437546,0.590908766],[new defaultSet(),19,0.367156267,0.590908766],[new defaultSet(),19,0.233843565,0.681817472],[new defaultSet(),17,0.300500154,0.590908766],[new defaultSet(),17,0.567124844,0.681817472],[new defaultSet(),17,0.567124844,0.772726238],[new defaultSet(),17,0.633781195,0.590908766],[new defaultSet(),18,0.567124844,0.590908766]];
            }
            if(param2 == -1 && param3 == 4)
            {
               return [[new decalSet(),155,0.5,0.5],[new propertiesSet(),5,0.500156224,0.499984741],[new defaultSet(),28,0.500156224,0.31816864],[new defaultSet(),29,0.166875005,0.136346817],[new defaultSet(),29,0.833437502,0.863622189],[new defaultSet(),36,0.166875005,0.863618851],[new defaultSet(),36,0.833437502,0.136345863],[new defaultSet(),17,0.766781211,0.318167686],[new defaultSet(),17,0.233531296,0.681802273],[new defaultSet(),17,0.433499992,0.227258682],[new defaultSet(),17,0.566812515,0.681802273],[new defaultSet(),18,0.433499992,0.318167686],[new defaultSet(),20,0.566812515,0.772711277]];
            }
            if(param2 == 0 && param3 == 4)
            {
               return [[new decalSet(),145,0.5,0.5],[new defaultSet(),34,0.766624987,0.227257252],[new defaultSet(),21,0.566656232,0.590893745],[new defaultSet(),19,0.5,0.409076214],[new defaultSet(),18,0.566656232,0.409076214],[new defaultSet(),13,0.233374998,0.590893745],[new defaultSet(),13,0.233374998,0.409076214],[new defaultSet(),13,0.366687506,0.227258682],[new defaultSet(),13,0.633312523,0.318167686],[new defaultSet(),13,0.699968755,0.409076214],[new defaultSet(),13,0.766624987,0.499985218],[new defaultSet(),13,0.233374998,0.681802273],[new defaultSet(),13,0.366687506,0.681802273],[new defaultSet(),13,0.166718751,0.499985218],[new defaultSet(),13,0.433343738,0.681802273],[new defaultSet(),13,0.433343738,0.772711277],[new defaultSet(),13,0.300031245,0.772711277],[new defaultSet(),2,0.5,0.681802273],[new defaultSet(),2,0.633312523,0.681802273]];
            }
            if(param2 == 1 && param3 == 13)
            {
               return [[new decalSet(),154,0.5,0.5],[new defaultSet(),2,0.499843836,0.499950409],[new defaultSet(),36,0.499843836,0.499948502],[new defaultSet(),33,0.499843836,0.227228165],[new defaultSet(),33,0.499843836,0.772675514],[new defaultSet(),26,0.499843836,0.863586426]];
            }
            if(param2 == 2 && param3 == 6)
            {
               return [[new decalSet(),119,0.5,0.5],[new propertiesSet(),5,0.499687672,0.681796074],[new defaultSet(),28,0.499687672,0.772706509],[new propertiesSet(),6,0.499687672,0.499977589],[new defaultSet(),17,0.0330936909,0.136338234],[new defaultSet(),20,0.966281414,0.863612175],[new defaultSet(),20,0.966281414,0.772703648],[new defaultSet(),18,0.099750042,0.136343002],[new defaultSet(),20,0.166406155,0.136340618],[new defaultSet(),17,0.966281414,0.681797504],[new defaultSet(),17,0.233062506,0.136344433],[new defaultSet(),41,0.832968712,0.590886593],[new defaultSet(),41,0.766312361,0.590886593],[new defaultSet(),41,0.699656248,0.590886593],[new defaultSet(),41,0.166406155,0.590886593],[new defaultSet(),41,0.099750042,0.499977589]];
            }
            if(param2 == -2 && param3 == 7)
            {
               return [[new decalSet(),126,0.5,0.5],[new defaultSet(),25,0.500312448,0.68179369],[new defaultSet(),21,0.300343752,0.590882778],[new defaultSet(),17,0.900250077,0.499972343],[new defaultSet(),17,0.833593726,0.49997139],[new defaultSet(),17,0.833593726,0.409062862],[new defaultSet(),18,0.900250077,0.59087944]];
            }
            if(param2 == -1 && param3 == 0)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),18,0.433499992,0.227273747],[new defaultSet(),18,0.566812515,0.227273747],[new defaultSet(),20,0.433499992,0.681817472],[new defaultSet(),20,0.433499992,0.772726238],[new defaultSet(),19,0.433499992,0.318182498],[new defaultSet(),19,0.566812515,0.318182498],[new defaultSet(),19,0.500156224,0.681817472],[new defaultSet(),18,0.500156224,0.772726238],[new defaultSet(),41,0.833437502,0.863635004],[new defaultSet(),41,0.766781211,0.863635004],[new defaultSet(),41,0.166875005,0.863635004],[new defaultSet(),41,0.233531296,0.863635004],[new defaultSet(),41,0.300187469,0.863635004],[new defaultSet(),41,0.700125039,0.863635004],[new defaultSet(),41,0.166875005,0.136364996],[new defaultSet(),41,0.233531296,0.136364996],[new defaultSet(),41,0.300187469,0.136364996],[new defaultSet(),41,0.833437502,0.136364996],[new defaultSet(),41,0.766781211,0.136364996],[new defaultSet(),41,0.700125039,0.136364996]];
            }
            if(param2 == -2 && param3 == 0)
            {
               return [[new decalSet(),147,0.5,0.5],[new defaultSet(),32,0.500312448,0.409095198],[new defaultSet(),42,0.167031288,0.13636741],[new defaultSet(),42,0.233687639,0.136363596],[new defaultSet(),42,0.300343752,0.136367932],[new defaultSet(),42,0.366999984,0.136364117],[new defaultSet(),18,0.366999984,0.681817472],[new defaultSet(),18,0.433656335,0.681817472],[new defaultSet(),17,0.300343752,0.681817472],[new defaultSet(),28,0.500312448,0.49999854],[new propertiesSet(),5,0.500312448,0.500000298]];
            }
            if(param2 == -4 && param3 == 1)
            {
               return [[new decalSet(),157,0.5,0.5],[new propertiesSet(),6,0.500624895,0.499996305],[new defaultSet(),25,0.500624895,0.863628626],[new defaultSet(),42,0.900562763,0.499998689],[new defaultSet(),42,0.100687504,0.499994874],[new defaultSet(),17,0.100687504,0.136361241],[new defaultSet(),18,0.167343855,0.136361837],[new defaultSet(),19,0.833906174,0.136361241],[new defaultSet(),18,0.900562763,0.136361241],[new defaultSet(),28,0.500624895,0.409090877],[new propertiesSet(),5,0.500624895,0.31818068]];
            }
            if(param2 == 8 && param3 == 11)
            {
               return [[new decalSet(),156,0.5,0.5],[new propertiesSet(),6,0.498750687,0.499958038],[new defaultSet(),33,0.232125282,0.409049034],[new defaultSet(),33,0.498750687,0.409049034],[new defaultSet(),36,0.765375137,0.409047127],[new defaultSet(),5,0.365437508,0.136322975]];
            }
            if(param2 == 8 && param3 == 7)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),29,0.165468216,0.136340141],[new defaultSet(),29,0.165468216,0.863604546],[new defaultSet(),19,0.632062912,0.40906477],[new defaultSet(),19,0.765375137,0.318156242],[new defaultSet(),19,0.232125282,0.681791306],[new defaultSet(),20,0.765375137,0.40906477],[new defaultSet(),20,0.232125282,0.590882301],[new defaultSet(),18,0.698719025,0.40906477],[new defaultSet(),18,0.298781395,0.590882301],[new defaultSet(),17,0.43209362,0.681791306],[new defaultSet(),17,0.43209362,0.772699833],[new defaultSet(),35,0.765375137,0.227247715],[new defaultSet(),35,0.698719025,0.227247715],[new defaultSet(),35,0.565405846,0.227247715],[new defaultSet(),35,0.498750687,0.954517841],[new defaultSet(),35,0.632062912,0.954517841],[new defaultSet(),35,0.698719025,0.954517841]];
            }
            if(param2 == 7 && param3 == 7)
            {
               return [[new decalSet(),154,0.5,0.5],[new propertiesSet(),6,0.498906136,0.499973774],[new defaultSet(),37,0.765531063,0.49997282],[new defaultSet(),25,0.898843288,0.590884686],[new defaultSet(),28,0.432250023,0.227247715],[new propertiesSet(),5,0.498906136,0.136338711]];
            }
            if(param2 == 2 && param3 == 11)
            {
               return [[new decalSet(),143,0.5,0.5],[new defaultSet(),32,0.499687672,0.772686005],[new defaultSet(),33,0.166406155,0.499955177],[new defaultSet(),33,0.832968712,0.499962807],[new defaultSet(),2,0.766312361,0.772685051],[new defaultSet(),21,0.366374969,0.318141937],[new defaultSet(),19,0.632999897,0.318141937],[new defaultSet(),17,0.699656248,0.318141937],[new defaultSet(),19,0.632999897,0.227232933],[new defaultSet(),18,0.699656248,0.227232933]];
            }
            if(param2 == 3 && param3 == 7)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),29,0.832812548,0.136342525],[new defaultSet(),29,0.832812548,0.86360693],[new defaultSet(),17,0.432875156,0.318156242],[new defaultSet(),17,0.499531269,0.227247715],[new defaultSet(),17,0.432875156,0.227247715],[new defaultSet(),17,0.566187382,0.772699833],[new defaultSet(),17,0.566187382,0.681791306],[new defaultSet(),18,0.499531269,0.772699833],[new defaultSet(),18,0.499531269,0.318156242],[new defaultSet(),19,0.499531269,0.681791306],[new defaultSet(),43,0.766156435,0.318156242],[new defaultSet(),43,0.766156435,0.590882301],[new defaultSet(),41,0.232906103,0.136338711],[new defaultSet(),41,0.299562454,0.136338711],[new defaultSet(),41,0.366218805,0.136338711],[new defaultSet(),41,0.232906103,0.863608837],[new defaultSet(),41,0.299562454,0.863608837],[new defaultSet(),41,0.366218805,0.863608837]];
            }
            if(param2 == 0 && param3 == 7)
            {
               return [[new decalSet(),149,0.5,0.5],[new defaultSet(),38,0.166718751,0.772697926],[new defaultSet(),33,0.433343738,0.681792259],[new defaultSet(),33,0.233374998,0.499974728],[new defaultSet(),17,0.566656232,0.499973774],[new defaultSet(),17,0.566656232,0.40906477],[new defaultSet(),17,0.5,0.318156242],[new defaultSet(),18,0.566656232,0.318156242],[new defaultSet(),18,0.366687506,0.318156242],[new defaultSet(),19,0.433343738,0.318156242],[new defaultSet(),28,0.633312523,0.499969482],[new propertiesSet(),5,0.5,0.227246284],[new defaultSet(),41,0.566656232,0.681791306],[new defaultSet(),41,0.300031245,0.681791306],[new defaultSet(),41,0.166718751,0.318156242]];
            }
            if(param2 == 2 && param3 == 10)
            {
               return [[new decalSet(),153,0.5,0.5],[new defaultSet(),37,0.499687672,0.954504013],[new defaultSet(),42,0.299718618,0.954504013],[new defaultSet(),42,0.699656248,0.954502106],[new defaultSet(),20,0.433031321,0.227235794],[new defaultSet(),18,0.433031321,0.681779861],[new defaultSet(),18,0.499687672,0.681779861],[new defaultSet(),18,0.566343784,0.318144798],[new defaultSet(),17,0.566343784,0.681779861],[new defaultSet(),28,0.366374969,0.499959946],[new propertiesSet(),5,0.433031321,0.499958038]];
            }
            if(param2 == -2 && param3 == 1)
            {
               return [[new decalSet(),154,0.5,0.5],[new propertiesSet(),2,0.500312448,0.409087658],[new defaultSet(),10,0.500312448,0.772720098],[new defaultSet(),2,0.500312448,0.409090042],[new defaultSet(),25,0.167031288,0.590902448],[new defaultSet(),25,0.833593726,0.590905786],[new defaultSet(),17,0.500312448,0.681813359],[new defaultSet(),21,0.500312448,0.318179369],[new defaultSet(),19,0.433656335,0.681813836],[new defaultSet(),19,0.566968679,0.772722483],[new defaultSet(),20,0.566968679,0.681813836],[new defaultSet(),20,0.433656335,0.772722483],[new defaultSet(),5,0.500312448,0.590904951]];
            }
            if(param2 == -4 && param3 == 0)
            {
               return [[new decalSet(),150,0.5,0.5],[new defaultSet(),32,0.167343855,0.227277696],[new defaultSet(),37,0.233999968,0.31818071],[new defaultSet(),19,0.433968782,0.318182498],[new defaultSet(),19,0.500624895,0.318182498],[new defaultSet(),19,0.833906174,0.772726238],[new defaultSet(),19,0.900562763,0.772726238],[new defaultSet(),19,0.167343855,0.863635004],[new defaultSet(),17,0.567281246,0.318182498],[new defaultSet(),17,0.567281246,0.409091264],[new defaultSet(),17,0.833906174,0.863635004],[new defaultSet(),13,0.30065608,0.5],[new defaultSet(),13,0.167343855,0.590908766],[new defaultSet(),13,0.30065608,0.681817472],[new defaultSet(),13,0.30065608,0.772726238],[new defaultSet(),13,0.433968782,0.772726238],[new defaultSet(),13,0.500624895,0.772726238],[new defaultSet(),35,0.700593948,0.318182498],[new defaultSet(),35,0.567281246,0.318182498],[new defaultSet(),35,0.433968782,0.318182498]];
            }
            if(param2 == -2 && param3 == 8)
            {
               return [[new decalSet(),156,0.5,0.5],[new defaultSet(),2,0.500312448,0.409061432],[new defaultSet(),37,0.500312448,0.86360836],[new defaultSet(),29,0.233687639,0.863604546],[new defaultSet(),29,0.766937494,0.863602638],[new defaultSet(),5,0.366999984,0.318149567],[new defaultSet(),41,0.633625031,0.590878487],[new defaultSet(),41,0.366999984,0.590878487],[new defaultSet(),28,0.500312448,0.318152428],[new propertiesSet(),5,0.500312448,0.499970436]];
            }
            if(param2 == 0 && param3 == 13)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),20,0.233374998,0.681768417],[new defaultSet(),18,0.766624987,0.318133354],[new propertiesSet(),5,0.5,0.318133354],[new defaultSet(),28,0.5,0.499951363],[new defaultSet(),41,0.166718751,0.136316299],[new defaultSet(),41,0.233374998,0.136316299],[new defaultSet(),41,0.300031245,0.136316299],[new defaultSet(),41,0.366687506,0.136316299],[new defaultSet(),41,0.833281279,0.863586426],[new defaultSet(),41,0.766624987,0.863586426],[new defaultSet(),41,0.699968755,0.863586426],[new defaultSet(),41,0.633312523,0.863586426],[new defaultSet(),41,0.566656232,0.863586426],[new defaultSet(),41,0.5,0.863586426],[new defaultSet(),41,0.433343738,0.136316299]];
            }
            if(param2 == 6 && param3 == 3)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),34,0.165781498,0.227264881],[new defaultSet(),34,0.832343578,0.227264881],[new defaultSet(),17,0.432406425,0.227262259],[new defaultSet(),17,0.632374763,0.59089756],[new defaultSet(),17,0.699030876,0.59089756],[new defaultSet(),17,0.565718651,0.681806087],[new defaultSet(),17,0.565718651,0.59089756],[new defaultSet(),20,0.365750313,0.409080029],[new defaultSet(),20,0.432406425,0.409080029],[new defaultSet(),19,0.432406425,0.318171263],[new defaultSet(),19,0.565718651,0.772715092],[new defaultSet(),42,0.299093723,0.863623857],[new defaultSet(),42,0.699030876,0.863623857]];
            }
            if(param2 == 7 && param3 == 0)
            {
               return [[new decalSet(),150,0.5,0.5],[new defaultSet(),26,0.165625095,0.227269933],[new defaultSet(),25,0.232281685,0.4090873],[new defaultSet(),18,0.565562248,0.5],[new defaultSet(),18,0.632218838,0.5],[new defaultSet(),17,0.565562248,0.590908766],[new defaultSet(),17,0.632218838,0.409091264],[new defaultSet(),19,0.632218838,0.590908766],[new defaultSet(),19,0.565562248,0.409091264],[new propertiesSet(),5,0.632218838,0.409091502],[new defaultSet(),28,0.432250023,0.681820571]];
            }
            if(param2 == 10 && param3 == 0)
            {
               return [[new decalSet(),155,0.5,0.5],[new propertiesSet(),6,0.565093994,0.5],[new defaultSet(),2,0.498437881,0.863638699],[new defaultSet(),2,0.498437881,0.136364371],[new defaultSet(),36,0.498437881,0.136361182],[new defaultSet(),36,0.498437881,0.86363548],[new defaultSet(),18,0.365125656,0.409091264],[new defaultSet(),18,0.29846859,0.409091264],[new defaultSet(),18,0.231812477,0.409091264],[new defaultSet(),41,0.498437881,0.227273747],[new defaultSet(),41,0.498437881,0.318182498],[new defaultSet(),41,0.498437881,0.772726238],[new defaultSet(),41,0.498437881,0.681817472]];
            }
            if(param2 == 11 && param3 == 4)
            {
               return [[new decalSet(),152,0.5,0.5],[new defaultSet(),2,0.564937592,0.499983788],[new defaultSet(),33,0.564937592,0.499986649],[new defaultSet(),26,0.431624413,0.409077644],[new defaultSet(),19,0.698249817,0.227258682],[new defaultSet(),20,0.698249817,0.318167686],[new defaultSet(),17,0.76490593,0.227258682],[new defaultSet(),17,0.76490593,0.318167686],[new defaultSet(),17,0.698249817,0.409076214],[new defaultSet(),41,0.431624413,0.681802273],[new defaultSet(),41,0.498281479,0.681802273],[new defaultSet(),41,0.564937592,0.681802273],[new defaultSet(),41,0.631593704,0.590893745],[new defaultSet(),41,0.76490593,0.499985218]];
            }
            if(param2 == 9 && param3 == 6)
            {
               return [[new decalSet(),143,0.5,0.5],[new defaultSet(),2,0.831874847,0.227247238],[new defaultSet(),26,0.165311813,0.227248192],[new defaultSet(),33,0.765218735,0.227253437],[new defaultSet(),36,0.498594284,0.136345387],[new defaultSet(),42,0.298624992,0.13634491],[new defaultSet(),21,0.0986566544,0.136342525],[new defaultSet(),19,0.965188026,0.0454335213],[new defaultSet(),17,0.89853096,0.0454335213],[new defaultSet(),17,0.965188026,0.136342525],[new defaultSet(),19,0.831874847,0.0454335213]];
            }
            if(param2 == 9 && param3 == 10)
            {
               return [[new decalSet(),157,0.5,0.5],[new defaultSet(),2,0.0986566544,0.499966621],[new defaultSet(),36,0.0986566544,0.499959946],[new defaultSet(),20,0.298624992,0.227235794],[new defaultSet(),17,0.698562622,0.772688866],[new defaultSet(),41,0.0986566544,0.863601685],[new defaultSet(),41,0.0986566544,0.77269268],[new defaultSet(),41,0.0986566544,0.681783676],[new defaultSet(),41,0.89853096,0.318145752],[new defaultSet(),41,0.89853096,0.136327744],[new defaultSet(),41,0.89853096,0.227236748]];
            }
            if(param2 == -2 && param3 == 13)
            {
               return [[new decalSet(),149,0.5,0.5],[new defaultSet(),25,0.233687639,0.772677422],[new defaultSet(),21,0.633625031,0.499951363],[new defaultSet(),21,0.433656335,0.318133354],[new defaultSet(),18,0.566968679,0.590860367],[new defaultSet(),18,0.633625031,0.590860367],[new defaultSet(),19,0.700281382,0.590860367],[new defaultSet(),28,0.633625031,0.227227211],[new propertiesSet(),5,0.566968679,0.409043312]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),122,0.5,0.5],[new defaultSet(),32,0.166718751,0.227264404],[new defaultSet(),32,0.833281279,0.22726512],[new defaultSet(),21,0.5,0.318175077],[new defaultSet(),21,0.5,0.772718906],[new defaultSet(),16,0.5,0.590901136],[new defaultSet(),41,0.166718751,0.318175077],[new defaultSet(),41,0.166718751,0.590901136],[new defaultSet(),41,0.833281279,0.318175077],[new defaultSet(),41,0.833281279,0.590901136],[new defaultSet(),41,0.89993751,0.409083843],[new defaultSet(),41,0.89993751,0.499992609],[new defaultSet(),41,0.100062512,0.409083843],[new defaultSet(),41,0.100062512,0.499992609]];
            }
            if(param2 == 9 && param3 == 12)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),29,0.0986566544,0.227227211],[new defaultSet(),29,0.89853096,0.772678375],[new defaultSet(),36,0.165311813,0.227227211],[new defaultSet(),36,0.831874847,0.772678375],[new defaultSet(),21,0.565249443,0.590864182],[new defaultSet(),41,0.365281105,0.409046173],[new defaultSet(),41,0.431937218,0.409046173],[new defaultSet(),41,0.498594284,0.409046173],[new defaultSet(),41,0.565249443,0.409046173],[new defaultSet(),41,0.631906509,0.409046173]];
            }
            if(param2 == 7 && param3 == 13)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),33,0.498906136,0.49995327],[new defaultSet(),41,0.632218838,0.681768417],[new defaultSet(),41,0.565562248,0.681768417],[new defaultSet(),41,0.432250023,0.681768417],[new defaultSet(),41,0.298937321,0.681768417]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),34,0.89993751,0.863631725],[new defaultSet(),34,0.100062512,0.31817925],[new defaultSet(),42,0.633312523,0.227273107],[new defaultSet(),42,0.366687506,0.227272511],[new defaultSet(),42,0.5,0.227272034],[new defaultSet(),20,0.366687506,0.590904951],[new defaultSet(),20,0.633312523,0.499996305],[new defaultSet(),18,0.633312523,0.409087539],[new defaultSet(),18,0.366687506,0.409087539],[new defaultSet(),17,0.366687506,0.499996305],[new defaultSet(),17,0.633312523,0.590904951],[new propertiesSet(),5,0.5,0.590903759],[new defaultSet(),28,0.5,0.499998569]];
            }
            if(param2 == 5 && param3 == 13)
            {
               return [[new decalSet(),136,0.5,0.5],[new defaultSet(),28,0.499218941,0.318134308],[new propertiesSet(),5,0.499218941,0.68176651],[new defaultSet(),33,0.299250126,0.49995327],[new defaultSet(),33,0.699187279,0.49995327],[new defaultSet(),34,0.499218941,0.590860367],[new defaultSet(),19,0.632531166,0.409042358],[new defaultSet(),19,0.632531166,0.499951363],[new defaultSet(),17,0.365906239,0.590860367],[new defaultSet(),17,0.232594013,0.590860367],[new defaultSet(),17,0.632531166,0.590860367]];
            }
            if(param2 == 11 && param3 == 2)
            {
               return [[new decalSet(),131,0.5,0.5],[new defaultSet(),2,0.498281479,0.318175793],[new defaultSet(),33,0.498281479,0.318173409],[new defaultSet(),36,0.298312187,0.499988794],[new defaultSet(),36,0.76490593,0.499989271],[new defaultSet(),36,0.698249817,0.499989986],[new defaultSet(),36,0.231656075,0.499990702]];
            }
            if(param2 == 11 && param3 == 3)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),26,0.364969254,0.49998498],[new defaultSet(),32,0.631593704,0.49998641],[new defaultSet(),23,0.898218155,0.227262259],[new defaultSet(),21,0.0983438492,0.59089756],[new defaultSet(),28,0.498281479,0.318171263],[new propertiesSet(),5,0.498281479,0.136353731],[new defaultSet(),41,0.631593704,0.318171263],[new defaultSet(),41,0.298312187,0.318171263],[new defaultSet(),41,0.364969254,0.227262259],[new defaultSet(),41,0.564937592,0.227262259],[new defaultSet(),41,0.76490593,0.318171263]];
            }
            if(param2 == 11 && param3 == 1)
            {
               return [[new decalSet(),126,0.5,0.5],[new defaultSet(),26,0.498281479,0.49999249],[new defaultSet(),34,0.298312187,0.499992967],[new defaultSet(),34,0.698249817,0.499997377],[new defaultSet(),21,0.698249817,0.590904951],[new defaultSet(),21,0.298312187,0.590904951],[new defaultSet(),22,0.498281479,0.409087539]];
            }
            if(param2 == 11 && param3 == 0)
            {
               return [[new decalSet(),141,0.5,0.5],[new defaultSet(),28,0.564937592,0.499999821],[new propertiesSet(),5,0.498281479,0.772727549],[new defaultSet(),37,0.564937592,0.499998868],[new defaultSet(),36,0.698249817,0.136361182],[new defaultSet(),36,0.898218155,0.318183005],[new defaultSet(),19,0.364969254,0.136364996],[new defaultSet(),19,0.431624413,0.136364996],[new defaultSet(),19,0.898218155,0.409091264],[new defaultSet(),18,0.898218155,0.5],[new defaultSet(),17,0.631593704,0.136364996],[new defaultSet(),21,0.564937592,0.681817472],[new defaultSet(),21,0.364969254,0.5]];
            }
            if(param2 == 9 && param3 == 0)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),34,0.498594284,0.590905428],[new defaultSet(),17,0.698562622,0.681817472],[new defaultSet(),18,0.298624992,0.681817472],[new defaultSet(),36,0.365281105,0.681818068],[new defaultSet(),36,0.631906509,0.681815922],[new defaultSet(),36,0.498594284,0.681813776]];
            }
            if(param2 == 7 && param3 == 2)
            {
               return [[new decalSet(),126,0.5,0.5],[new defaultSet(),32,0.36559391,0.318171978],[new defaultSet(),26,0.498906136,0.318173885],[new defaultSet(),32,0.632218838,0.318174839],[new defaultSet(),21,0.698874474,0.681810617],[new defaultSet(),22,0.36559391,0.681809902]];
            }
            if(param2 == 7 && param3 == 1)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),2,0.498906136,0.499996901],[new defaultSet(),32,0.498906136,0.49999392],[new defaultSet(),36,0.898843288,0.49999249],[new defaultSet(),36,0.0989685059,0.499996781],[new defaultSet(),19,0.898843288,0.136361241],[new defaultSet(),19,0.832187653,0.136361241],[new defaultSet(),19,0.165625095,0.772722483],[new defaultSet(),18,0.165625095,0.863631129],[new defaultSet(),18,0.0989685059,0.863631129],[new defaultSet(),17,0.832187653,0.227270007],[new defaultSet(),17,0.0989685059,0.772722483]];
            }
            if(param2 == 7 && param3 == 3)
            {
               return [[new decalSet(),136,0.5,0.5],[new propertiesSet(),5,0.498906136,0.318172455],[new defaultSet(),28,0.498906136,0.499986887],[new defaultSet(),37,0.765531063,0.499990225],[new defaultSet(),33,0.832187653,0.68180728],[new defaultSet(),33,0.832187653,0.318175077],[new defaultSet(),18,0.0989685059,0.863623857],[new defaultSet(),18,0.832187653,0.863623857],[new defaultSet(),17,0.232281685,0.863623857],[new defaultSet(),17,0.765531063,0.863623857],[new defaultSet(),19,0.165625095,0.863623857],[new defaultSet(),19,0.698874474,0.772715092]];
            }
            if(param2 == 9 && param3 == 5)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),42,0.0986566544,0.136346817],[new defaultSet(),42,0.89853096,0.863615513],[new defaultSet(),29,0.89853096,0.136348248],[new defaultSet(),29,0.0986566544,0.863620281]];
            }
            if(param2 == 9 && param3 == 4)
            {
               return [[new decalSet(),134,0.5,0.5],[new defaultSet(),28,0.631906509,0.499982834],[new propertiesSet(),5,0.565249443,0.318166256],[new defaultSet(),32,0.365281105,0.499987125],[new defaultSet(),36,0.23196888,0.863621712],[new defaultSet(),36,0.23196888,0.136348248],[new defaultSet(),21,0.498594284,0.590893745],[new defaultSet(),36,0.23196888,0.227262974],[new defaultSet(),36,0.23196888,0.318168163],[new defaultSet(),36,0.23196888,0.772709846],[new defaultSet(),36,0.23196888,0.681798935]];
            }
            if(param2 == 9 && param3 == 3)
            {
               return [[new decalSet(),141,0.5,0.5],[new defaultSet(),37,0.565249443,0.49999094],[new defaultSet(),34,0.89853096,0.49999094],[new defaultSet(),34,0.698562622,0.227261305],[new defaultSet(),18,0.89853096,0.318171263],[new defaultSet(),18,0.631906509,0.136353731],[new defaultSet(),18,0.431937218,0.136353731],[new defaultSet(),20,0.365281105,0.136353731],[new defaultSet(),20,0.89853096,0.499988794],[new defaultSet(),21,0.365281105,0.499988794]];
            }
            if(param2 == 8 && param3 == 3)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),29,0.0988121033,0.863622189],[new defaultSet(),29,0.898687363,0.863623142],[new defaultSet(),29,0.898687363,0.136353731],[new defaultSet(),29,0.0988121033,0.136355162],[new defaultSet(),17,0.565405846,0.227262259],[new defaultSet(),17,0.565405846,0.318171263],[new defaultSet(),17,0.43209362,0.681806087],[new defaultSet(),18,0.43209362,0.772715092],[new defaultSet(),18,0.365437508,0.409080029],[new defaultSet(),18,0.298781395,0.409080029],[new defaultSet(),19,0.698719025,0.59089756],[new defaultSet(),19,0.632062912,0.59089756]];
            }
            if(param2 == 5 && param3 == 3)
            {
               return [[new decalSet(),140,0.5,0.5],[new defaultSet(),32,0.299250126,0.318172216],[new defaultSet(),42,0.299250126,0.409081459],[new defaultSet(),42,0.365906239,0.318172693],[new defaultSet(),21,0.432562828,0.499988794],[new defaultSet(),17,0.832499981,0.863623857],[new defaultSet(),17,0.899156094,0.772715092],[new defaultSet(),18,0.832499981,0.772715092]];
            }
            if(param2 == 5 && param3 == 4)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),36,0.099281311,0.136351109],[new defaultSet(),36,0.899156094,0.136348248],[new defaultSet(),36,0.899156094,0.863624096],[new defaultSet(),36,0.099281311,0.863621235],[new defaultSet(),17,0.299250126,0.227258205],[new defaultSet(),20,0.699187279,0.772710323],[new defaultSet(),18,0.832499981,0.136350155],[new defaultSet(),18,0.832499981,0.227258682],[new defaultSet(),18,0.832499981,0.318167686],[new defaultSet(),17,0.165937424,0.863619804],[new defaultSet(),17,0.165937424,0.772711277],[new defaultSet(),18,0.165937424,0.681802273],[new defaultSet(),19,0.832499981,0.409076214]];
            }
            if(param2 == 6 && param3 == 7)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),29,0.898999691,0.136342049],[new defaultSet(),29,0.898999691,0.863611698],[new defaultSet(),23,0.832343578,0.40906477],[new defaultSet(),19,0.432406425,0.681791306],[new defaultSet(),19,0.565718651,0.318156242],[new defaultSet(),20,0.565718651,0.227247715],[new defaultSet(),17,0.432406425,0.772699833],[new defaultSet(),17,0.565718651,0.681791306],[new defaultSet(),17,0.232437611,0.681791306],[new defaultSet(),41,0.0991249084,0.863608837],[new defaultSet(),41,0.165781498,0.863608837],[new defaultSet(),41,0.232437611,0.863608837],[new defaultSet(),41,0.299093723,0.863608837],[new defaultSet(),41,0.365750313,0.863608837],[new defaultSet(),41,0.0991249084,0.136338711],[new defaultSet(),41,0.165781498,0.136338711],[new defaultSet(),41,0.232437611,0.136338711],[new defaultSet(),41,0.299093723,0.136338711],[new defaultSet(),41,0.365750313,0.136338711]];
            }
            if(param2 == 9 && param3 == 7)
            {
               return [[new decalSet(),135,0.5,0.5],[new propertiesSet(),5,0.431937218,0.31815815],[new defaultSet(),28,0.498594284,0.499974728],[new defaultSet(),21,0.365281105,0.499973774],[new defaultSet(),17,0.298624992,0.590882301],[new defaultSet(),17,0.431937218,0.590882301],[new defaultSet(),20,0.365281105,0.590882301],[new defaultSet(),32,0.631906509,0.681791306],[new defaultSet(),33,0.431937218,0.681791306]];
            }
            if(param2 == 9 && param3 == 13)
            {
               return [[new decalSet(),138,0.5,0.5],[new defaultSet(),28,0.565249443,0.590857506],[new propertiesSet(),5,0.431937218,0.318130493],[new defaultSet(),37,0.565249443,0.590864182],[new defaultSet(),21,0.365281105,0.590860367],[new defaultSet(),20,0.365281105,0.409042358],[new defaultSet(),17,0.431937218,0.409042358],[new defaultSet(),41,0.698562622,0.499951363],[new defaultSet(),41,0.698562622,0.590860367],[new defaultSet(),41,0.631906509,0.772677422],[new defaultSet(),41,0.565249443,0.772677422],[new defaultSet(),41,0.431937218,0.772677422],[new defaultSet(),41,0.365281105,0.681768417],[new defaultSet(),2,0.498594284,0.499951363]];
            }
            if(param2 == 11 && param3 == 11)
            {
               return [[new decalSet(),129,0.5,0.5],[new propertiesSet(),1,0.431624413,0.409045219],[new propertiesSet(),3,0.498281479,0.772685051]];
            }
            if(param2 == 8 && param3 == 13)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),34,0.0988121033,0.227222443],[new defaultSet(),34,0.898687363,0.954493523],[new defaultSet(),29,0.898687363,0.136313438],[new defaultSet(),29,0.0988121033,0.863588333],[new defaultSet(),17,0.698719025,0.409042358],[new defaultSet(),17,0.765375137,0.318133354],[new defaultSet(),19,0.232125282,0.681768417],[new defaultSet(),19,0.298781395,0.590860367],[new defaultSet(),20,0.765375137,0.409042358]];
            }
            if(param2 == 4 && param3 == 7)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),36,0.366062641,0.681787014],[new defaultSet(),36,0.632687569,0.681793213],[new defaultSet(),18,0.699343681,0.681791306],[new defaultSet(),19,0.299406052,0.681791306]];
            }
            if(param2 == 5 && param3 == 6)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),33,0.299250126,0.227249622],[new defaultSet(),33,0.632531166,0.227255344],[new defaultSet(),33,0.899156094,0.13634634],[new defaultSet(),33,0.099281311,0.136344433],[new defaultSet(),20,0.699187279,0.772703648],[new defaultSet(),17,0.099281311,0.863612175],[new defaultSet(),17,0.099281311,0.772703648],[new defaultSet(),17,0.899156094,0.772703648],[new defaultSet(),18,0.899156094,0.863612175],[new defaultSet(),18,0.832499981,0.863609791],[new defaultSet(),18,0.165937424,0.863612175],[new defaultSet(),19,0.832499981,0.772703648],[new defaultSet(),19,0.099281311,0.68179512]];
            }
            if(param2 == -4 && param3 == 5)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),36,0.900562763,0.863614559],[new defaultSet(),36,0.100687504,0.136344433],[new defaultSet(),42,0.100687504,0.863614082],[new defaultSet(),42,0.900562763,0.136345387],[new defaultSet(),34,0.767250061,0.590889931],[new defaultSet(),34,0.233999968,0.590886593]];
            }
            if(param2 == -4 && param3 == 6)
            {
               return [[new decalSet(),134,0.5,0.5],[new defaultSet(),26,0.433968782,0.499977112],[new defaultSet(),34,0.633937359,0.590889931],[new defaultSet(),21,0.30065608,0.227249146],[new defaultSet(),13,0.500624895,0.227251053],[new defaultSet(),13,0.433968782,0.318160057],[new defaultSet(),13,0.36731267,0.318160057],[new defaultSet(),13,0.30065608,0.409068584],[new defaultSet(),13,0.30065608,0.590886593],[new defaultSet(),13,0.36731267,0.68179512],[new defaultSet(),13,0.500624895,0.68179512],[new defaultSet(),13,0.567281246,0.68179512]];
            }
            if(param2 == -2 && param3 == 6)
            {
               return [[new decalSet(),135,0.5,0.5],[new defaultSet(),2,0.566968679,0.499975681],[new defaultSet(),33,0.633625031,0.681797504],[new defaultSet(),33,0.433656335,0.318161964],[new defaultSet(),42,0.633625031,0.318160534],[new defaultSet(),42,0.433656335,0.68179512],[new defaultSet(),21,0.766937494,0.590886593],[new defaultSet(),18,0.300343752,0.318160057],[new defaultSet(),18,0.366999984,0.318160057],[new defaultSet(),28,0.366999984,0.499978542],[new propertiesSet(),5,0.500312448,0.68179512]];
            }
            if(param2 == 0 && param3 == 3)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),29,0.100062512,0.49998498],[new defaultSet(),36,0.5,0.136357784],[new defaultSet(),36,0.89993751,0.136357784],[new defaultSet(),36,0.100062512,0.136351109],[new defaultSet(),36,0.100062512,0.863622189],[new defaultSet(),36,0.89993751,0.863627911],[new defaultSet(),29,0.89993751,0.499988079],[new defaultSet(),18,0.366687506,0.409080029],[new defaultSet(),18,0.366687506,0.318171263],[new defaultSet(),18,0.433343738,0.318171263],[new defaultSet(),20,0.433343738,0.409080029],[new defaultSet(),20,0.633312523,0.681806087],[new defaultSet(),19,0.633312523,0.59089756]];
            }
            if(param2 == -4 && param3 == 3)
            {
               return [[new decalSet(),134,0.5,0.5],[new propertiesSet(),5,0.500624895,0.681803226],[new defaultSet(),28,0.433968782,0.499989748],[new defaultSet(),37,0.500624895,0.499991417],[new defaultSet(),17,0.167343855,0.409080029],[new defaultSet(),17,0.167343855,0.318171263],[new defaultSet(),18,0.167343855,0.499988794],[new defaultSet(),41,0.633937359,0.409080029],[new defaultSet(),41,0.36731267,0.318171263],[new defaultSet(),41,0.30065608,0.409080029],[new defaultSet(),41,0.30065608,0.499988794],[new defaultSet(),41,0.36731267,0.59089756],[new defaultSet(),41,0.500624895,0.772715092],[new defaultSet(),41,0.633937359,0.681806087],[new defaultSet(),41,0.700593948,0.59089756],[new defaultSet(),41,0.700593948,0.499988794]];
            }
            if(param2 == -4 && param3 == 2)
            {
               return [[new decalSet(),126,0.5,0.5],[new defaultSet(),26,0.100687504,0.590902805],[new defaultSet(),26,0.900562763,0.590902805],[new defaultSet(),29,0.500624895,0.59089756],[new defaultSet(),22,0.500624895,0.409083843]];
            }
            if(param2 == -4 && param3 == 11)
            {
               return [[new decalSet(),139,0.5,0.5],[new defaultSet(),26,0.100687504,0.681777954],[new defaultSet(),32,0.233999968,0.86359024],[new defaultSet(),22,0.500624895,0.590867043],[new defaultSet(),23,0.433968782,0.318141937],[new defaultSet(),41,0.233999968,0.409049034],[new defaultSet(),41,0.36731267,0.409049034],[new defaultSet(),41,0.433968782,0.409049034],[new defaultSet(),41,0.567281246,0.409049034],[new defaultSet(),41,0.700593948,0.409049034],[new defaultSet(),41,0.567281246,0.227232933],[new defaultSet(),41,0.700593948,0.227232933]];
            }
            if(param2 == -4 && param3 == 10)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),42,0.900562763,0.772686005],[new defaultSet(),42,0.100687504,0.227232933],[new defaultSet(),34,0.833906174,0.863599777],[new defaultSet(),34,0.167343855,0.318146706],[new defaultSet(),20,0.900562763,0.227235794],[new defaultSet(),19,0.100687504,0.772688866],[new defaultSet(),28,0.500624895,0.499964714],[new propertiesSet(),5,0.500624895,0.318145752]];
            }
            if(param2 == 3 && param3 == 13)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),36,0.299562454,0.681768417],[new defaultSet(),29,0.499531269,0.681765556],[new defaultSet(),36,0.699499846,0.68176651]];
            }
            if(param2 == -1 && param3 == 11)
            {
               return [[new decalSet(),131,0.5,0.5],[new defaultSet(),36,0.300187469,0.590864182],[new defaultSet(),2,0.700125039,0.590867996],[new defaultSet(),2,0.300187469,0.590866089],[new defaultSet(),36,0.700125039,0.590864182],[new defaultSet(),33,0.500156224,0.499960899],[new defaultSet(),6,0.500156224,0.318141937]];
            }
            if(param2 == -2 && param3 == 12)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),36,0.833593726,0.772678375],[new defaultSet(),36,0.167031288,0.227225304],[new defaultSet(),29,0.500312448,0.499954224],[new defaultSet(),19,0.300343752,0.772681236],[new defaultSet(),19,0.766937494,0.318137169],[new defaultSet(),20,0.700281382,0.318137169],[new defaultSet(),18,0.233687639,0.772681236],[new defaultSet(),18,0.167031288,0.772681236]];
            }
            if(param2 == -2 && param3 == 11)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),28,0.500312448,0.499960899],[new propertiesSet(),5,0.500312448,0.227231026],[new defaultSet(),21,0.366999984,0.499958038],[new defaultSet(),21,0.633625031,0.590867043],[new defaultSet(),34,0.100374937,0.227233887],[new defaultSet(),34,0.900250077,0.227233887],[new defaultSet(),25,0.500312448,0.227230072]];
            }
            if(param2 == -1 && param3 == 13)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),34,0.300187469,0.772679329],[new defaultSet(),34,0.700125039,0.772679329]];
            }
            if(param2 == -4 && param3 == 7)
            {
               return [[new decalSet(),126,0.5,0.5],[new propertiesSet(),5,0.500624895,0.590885639],[new defaultSet(),28,0.500624895,0.409066677],[new defaultSet(),32,0.500624895,0.863607407],[new defaultSet(),33,0.36731267,0.863605022],[new defaultSet(),33,0.633937359,0.863605022],[new defaultSet(),18,0.900562763,0.409063816],[new defaultSet(),18,0.900562763,0.49997139],[new defaultSet(),20,0.900562763,0.59087944]];
            }
            if(param2 == -4 && param3 == 9)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.36731267,0.499968529],[new defaultSet(),2,0.633937359,0.499967575],[new defaultSet(),36,0.36731267,0.499964714],[new defaultSet(),36,0.633937359,0.499964714],[new defaultSet(),21,0.233999968,0.954510689],[new defaultSet(),19,0.100687504,0.77269268],[new defaultSet(),19,0.167343855,0.77269268],[new defaultSet(),17,0.233999968,0.77269268],[new defaultSet(),13,0.767250061,0.499966621],[new defaultSet(),13,0.700593948,0.409057617],[new defaultSet(),13,0.233999968,0.409057617],[new defaultSet(),13,0.167343855,0.499966621],[new defaultSet(),13,0.233999968,0.590875626],[new defaultSet(),13,0.633937359,0.590875626],[new defaultSet(),13,0.767250061,0.590875626],[new defaultSet(),13,0.36731267,0.409057617]];
            }
            if(param2 == -4 && param3 == 4)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.36731267,0.499985218],[new defaultSet(),2,0.633937359,0.499986172],[new defaultSet(),26,0.500624895,0.499985695],[new defaultSet(),33,0.633937359,0.499982357],[new defaultSet(),33,0.36731267,0.499986649],[new defaultSet(),21,0.167343855,0.499986172]];
            }
            if(param2 == 5 && param3 == 10)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),36,0.165937424,0.227231979],[new defaultSet(),36,0.832499981,0.772690773],[new defaultSet(),29,0.099281311,0.227232933],[new defaultSet(),29,0.899156094,0.772691727]];
            }
            if(param2 == 5 && param3 == 8)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),36,0.099281311,0.863601685],[new defaultSet(),36,0.899156094,0.863605499],[new defaultSet(),36,0.165937424,0.863605499],[new defaultSet(),36,0.832499981,0.863605499],[new defaultSet(),17,0.365906239,0.409061432],[new defaultSet(),17,0.365906239,0.318152428],[new defaultSet(),17,0.632531166,0.590878487],[new defaultSet(),17,0.632531166,0.681787491],[new defaultSet(),18,0.365906239,0.590878487],[new defaultSet(),20,0.632531166,0.409061432],[new defaultSet(),17,0.099281311,0.136335373],[new defaultSet(),17,0.165937424,0.136335373],[new defaultSet(),17,0.832499981,0.136335373],[new defaultSet(),18,0.899156094,0.136335373],[new defaultSet(),18,0.099281311,0.227243423]];
            }
            if(param2 == 5 && param3 == 9)
            {
               return [[new decalSet(),122,0.5,0.5],[new defaultSet(),28,0.499218941,0.499967575],[new propertiesSet(),5,0.499218941,0.227237701],[new defaultSet(),26,0.499218941,0.499966621],[new defaultSet(),34,0.165937424,0.590878487],[new defaultSet(),29,0.832499981,0.49996376]];
            }
            if(param2 == 0 && param3 == 6)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),37,0.5,0.136340618],[new defaultSet(),42,0.233374998,0.136339664],[new defaultSet(),42,0.766624987,0.136339664],[new defaultSet(),23,0.366687506,0.499977589],[new defaultSet(),21,0.633312523,0.590886593],[new defaultSet(),30,0.233374998,0.590886593],[new defaultSet(),30,0.766624987,0.409068584]];
            }
            if(param2 == 9 && param3 == 11)
            {
               return [[new decalSet(),121,0.5,0.5],[new defaultSet(),29,0.498594284,0.499956131],[new defaultSet(),37,0.431937218,0.590867043]];
            }
            if(param2 == 5 && param3 == 7)
            {
               return [[new decalSet(),123,0.5,0.5],[new defaultSet(),26,0.832499981,0.227243423],[new defaultSet(),26,0.832499981,0.863606453],[new defaultSet(),34,0.499218941,0.954519272],[new defaultSet(),34,0.499218941,0.227249146],[new defaultSet(),17,0.099281311,0.0454301834],[new defaultSet(),17,0.165937424,0.0454301834],[new defaultSet(),20,0.232594013,0.0454301834]];
            }
            if(param2 == 2 && param3 == 7)
            {
               return [[new decalSet(),120,0.5,0.5],[new defaultSet(),33,0.832968712,0.77270174],[new defaultSet(),33,0.166406155,0.772696495],[new defaultSet(),41,0.433031321,0.772699833],[new defaultSet(),41,0.366374969,0.772699833],[new defaultSet(),41,0.699656248,0.772699833],[new defaultSet(),41,0.632999897,0.772699833],[new defaultSet(),2,0.366374969,0.590882301],[new defaultSet(),2,0.632999897,0.590882301],[new defaultSet(),19,0.366374969,0.499973774],[new defaultSet(),17,0.632999897,0.499973774],[new defaultSet(),17,0.699656248,0.499973774],[new defaultSet(),17,0.299718618,0.499973774],[new defaultSet(),19,0.566343784,0.318156242],[new defaultSet(),19,0.499687672,0.318156242],[new defaultSet(),20,0.433031321,0.318156242],[new defaultSet(),17,0.632999897,0.40906477],[new defaultSet(),17,0.366374969,0.40906477],[new defaultSet(),17,0.366374969,0.318156242],[new defaultSet(),17,0.632999897,0.318156242]];
            }
            if(param2 == 2 && param3 == 5)
            {
               return [[new decalSet(),118,0.5,0.5],[new defaultSet(),17,0.366374969,0.409075737],[new defaultSet(),20,0.366374969,0.318167686]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),116,0.5,0.5],[new defaultSet(),19,0.499687672,0.590892792],[new defaultSet(),17,0.499687672,0.409077644]];
            }
         }
         if(missionNum == 11)
         {
            if(param2 == -3 && param3 == -3)
            {
               return [[new decalSet(),113,0.5,0.5],[new propertiesSet(),5,0.500468731,0.772734642],[new defaultSet(),28,0.500468731,0.681828737],[new defaultSet(),36,0.567124844,0.409102917],[new defaultSet(),36,0.433812618,0.409098864],[new defaultSet(),25,0.500468731,0.31819582],[new defaultSet(),18,0.0338749886,0.590919971],[new defaultSet(),18,0.0338749886,0.40910244],[new defaultSet(),18,0.967062473,0.40910244],[new defaultSet(),17,0.967062473,0.500011206],[new defaultSet(),17,0.967062473,0.590919971],[new defaultSet(),20,0.0338749886,0.500015259]];
            }
            if(param2 == -2 && param3 == -1)
            {
               return [[new decalSet(),128,0.5,0.5],[new defaultSet(),28,0.500312448,0.681821227],[new propertiesSet(),5,0.566968679,0.500006795],[new defaultSet(),38,0.500312448,0.13636905],[new defaultSet(),33,0.233687639,0.136364758],[new defaultSet(),33,0.766937494,0.136372864],[new defaultSet(),17,0.766937494,0.500003755],[new defaultSet(),17,0.233687639,0.500003755],[new defaultSet(),18,0.500312448,0.500003755]];
            }
            if(param2 == -1 && param3 == -4)
            {
               return [[new decalSet(),107,0.5,0.5],[new defaultSet(),2,0.36684382,0.500014544],[new defaultSet(),2,0.633468747,0.500013113],[new defaultSet(),26,0.500156224,0.136381626],[new defaultSet(),18,0.633468747,0.590923786],[new defaultSet(),18,0.700125039,0.590923786],[new defaultSet(),18,0.300187469,0.409106255],[new defaultSet(),18,0.300187469,0.50001502],[new defaultSet(),20,0.700125039,0.50001502],[new defaultSet(),20,0.700125039,0.409107208],[new defaultSet(),20,0.300187469,0.590923786],[new defaultSet(),17,0.633468747,0.409106255],[new defaultSet(),17,0.36684382,0.590923786],[new defaultSet(),19,0.36684382,0.409106255]];
            }
            if(param2 == -4 && param3 == 1)
            {
               return [[new decalSet(),107,0.5,0.5],[new defaultSet(),34,0.700593948,0.590906501],[new defaultSet(),34,0.30065608,0.590901732],[new defaultSet(),42,0.500624895,0.863631964],[new defaultSet(),17,0.30065608,0.409087539],[new defaultSet(),17,0.30065608,0.590904951],[new defaultSet(),17,0.633937359,0.590904951],[new defaultSet(),17,0.633937359,0.409087539],[new defaultSet(),20,0.36731267,0.409087539],[new defaultSet(),20,0.700593948,0.590904951],[new defaultSet(),20,0.633937359,0.499996305],[new defaultSet(),18,0.700593948,0.409087539],[new defaultSet(),18,0.36731267,0.499996305],[new defaultSet(),18,0.36731267,0.590904951]];
            }
            if(param2 == 0 && param3 == -7)
            {
               return [[new decalSet(),114,0.5,0.5],[new defaultSet(),26,0.5,0.500022411],[new defaultSet(),25,0.100062512,0.590933323],[new defaultSet(),25,0.89993751,0.590934277],[new defaultSet(),20,0.766624987,0.500026226],[new defaultSet(),20,0.766624987,0.409117699],[new defaultSet(),20,0.233374998,0.59093523],[new defaultSet(),20,0.233374998,0.500026226],[new defaultSet(),20,0.233374998,0.409117699],[new defaultSet(),19,0.766624987,0.318208694],[new defaultSet(),19,0.766624987,0.59093523],[new defaultSet(),19,0.766624987,0.681843758],[new defaultSet(),19,0.233374998,0.318208694],[new defaultSet(),18,0.233374998,0.681843758]];
            }
            if(param2 == -8 && param3 == -6)
            {
               return [[new decalSet(),105,0.5,0.5],[new defaultSet(),25,0.16796875,0.590932369],[new defaultSet(),33,0.50124979,0.227300644],[new defaultSet(),33,0.50124979,0.772746086]];
            }
            if(param2 == -5 && param3 == -7)
            {
               return [[new decalSet(),107,0.5,0.5],[new defaultSet(),34,0.367468834,0.590936184],[new defaultSet(),38,0.634093761,0.500029087],[new defaultSet(),19,0.700749874,0.409117699],[new defaultSet(),19,0.700749874,0.59093523],[new defaultSet(),19,0.300812721,0.59093523],[new defaultSet(),18,0.700749874,0.500026226],[new defaultSet(),18,0.300812721,0.409117699],[new defaultSet(),18,0.300812721,0.500026226],[new defaultSet(),17,0.367468834,0.409117699],[new defaultSet(),17,0.367468834,0.59093523],[new defaultSet(),17,0.634093761,0.409117699],[new defaultSet(),20,0.634093761,0.59093523]];
            }
            if(param2 == -5 && param3 == -1)
            {
               return [[new decalSet(),111,0.5,0.5],[new defaultSet(),34,0.300812721,0.863635838],[new defaultSet(),33,0.500781059,0.499999702],[new defaultSet(),36,0.167500019,0.500003994],[new defaultSet(),23,0.634093761,0.772729993]];
            }
            if(param2 == 2 && param3 == -4)
            {
               return [[new decalSet(),114,0.5,0.5],[new defaultSet(),28,0.499687672,0.500016212],[new propertiesSet(),5,0.499687672,0.681833506],[new defaultSet(),37,0.499687672,0.227291822],[new defaultSet(),38,0.099750042,0.227289438],[new defaultSet(),38,0.899625063,0.227291346],[new defaultSet(),20,0.233062506,0.409106016],[new defaultSet(),20,0.766312361,0.318199635],[new defaultSet(),17,0.766312361,0.409106255],[new defaultSet(),17,0.233062506,0.50001502],[new defaultSet(),17,0.233062506,0.590923786],[new defaultSet(),18,0.766312361,0.590923786],[new defaultSet(),18,0.766312361,0.50001502],[new defaultSet(),18,0.233062506,0.318197727],[new defaultSet(),19,0.766312361,0.681832314],[new defaultSet(),20,0.233062506,0.681832314]];
            }
            if(param2 == -6 && param3 == -10)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),28,0.500937462,0.500035286],[new propertiesSet(),5,0.500937462,0.409125328],[new defaultSet(),2,0.500937462,0.13640213],[new defaultSet(),2,0.500937462,0.86367321],[new defaultSet(),34,0.700906277,0.954583168],[new defaultSet(),34,0.300969124,0.227312088],[new defaultSet(),36,0.300969124,0.863674164],[new defaultSet(),36,0.700906277,0.136404037],[new defaultSet(),18,0.700906277,0.500037193],[new defaultSet(),18,0.300969124,0.500037193]];
            }
            if(param2 == -8 && param3 == -10)
            {
               return [[new decalSet(),110,0.5,0.5],[new propertiesSet(),2,0.50124979,0.500033379],[new defaultSet(),10,0.16796875,0.136403084],[new defaultSet(),2,0.434594154,0.13640213],[new defaultSet(),2,0.434594154,0.86367321],[new defaultSet(),32,0.23462534,0.500037193],[new defaultSet(),26,0.16796875,0.863671303],[new defaultSet(),18,0.23462534,0.86367321],[new defaultSet(),18,0.50124979,0.13640213],[new defaultSet(),17,0.23462534,0.13640213],[new defaultSet(),17,0.50124979,0.86367321],[new defaultSet(),13,0.301280975,0.227311134],[new defaultSet(),13,0.434594154,0.227311134],[new defaultSet(),13,0.50124979,0.318220139],[new defaultSet(),13,0.56790638,0.318220139],[new defaultSet(),13,0.367937565,0.318220139],[new defaultSet(),13,0.23462534,0.318220139],[new defaultSet(),13,0.23462534,0.681855202],[new defaultSet(),13,0.301280975,0.681855202],[new defaultSet(),13,0.434594154,0.681855202],[new defaultSet(),13,0.50124979,0.590946198],[new defaultSet(),13,0.634562492,0.590946198]];
            }
            if(param2 == -10 && param3 == -7)
            {
               return [[new decalSet(),105,0.5,0.5],[new defaultSet(),2,0.0349683762,0.500026226],[new defaultSet(),2,0.968156815,0.500026226],[new defaultSet(),41,0.368249893,0.136389732],[new defaultSet(),41,0.634874344,0.136387825],[new defaultSet(),18,0.0349683762,0.409117699],[new defaultSet(),18,0.0349683762,0.590937138],[new defaultSet(),17,0.968156815,0.409117699],[new defaultSet(),19,0.968156815,0.59093523]];
            }
            if(param2 == -5 && param3 == -4)
            {
               return [[new decalSet(),108,0.5,0.5],[new propertiesSet(),2,0.434124947,0.50001812],[new defaultSet(),10,0.767405987,0.227287769],[new defaultSet(),25,0.700749874,0.59092474],[new defaultSet(),17,0.767405987,0.772741079],[new defaultSet(),17,0.700749874,0.772741079],[new defaultSet(),20,0.634093761,0.681832314],[new defaultSet(),20,0.567437172,0.772741079],[new defaultSet(),19,0.634093761,0.772741079],[new defaultSet(),16,0.567437172,0.409106255]];
            }
            if(param2 == -1 && param3 == 2)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),34,0.300187469,0.227268219],[new defaultSet(),34,0.300187469,0.95453763],[new defaultSet(),36,0.500156224,0.863629103],[new defaultSet(),36,0.500156224,0.136361599],[new defaultSet(),17,0.36684382,0.409083843],[new defaultSet(),17,0.633468747,0.590901136],[new defaultSet(),19,0.433499992,0.409083843],[new defaultSet(),20,0.566812515,0.590901136]];
            }
            if(param2 == -1 && param3 == -9)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),2,0.300187469,0.136398315],[new defaultSet(),2,0.300187469,0.863668442],[new defaultSet(),2,0.500156224,0.863668442],[new defaultSet(),2,0.700125039,0.863668442],[new defaultSet(),2,0.700125039,0.136398315],[new defaultSet(),2,0.500156224,0.136398315],[new defaultSet(),18,0.633468747,0.590942383],[new defaultSet(),18,0.566812515,0.590942383],[new defaultSet(),18,0.36684382,0.409124374],[new defaultSet(),17,0.433499992,0.409124374],[new defaultSet(),17,0.36684382,0.590942383],[new defaultSet(),20,0.433499992,0.590942383],[new defaultSet(),36,0.166875005,0.500032425]];
            }
            if(param2 == -9 && param3 == -6)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),2,0.501405716,0.136387825],[new defaultSet(),2,0.501405716,0.863657475],[new defaultSet(),34,0.701375008,0.954568386],[new defaultSet(),34,0.701375008,0.22729969],[new defaultSet(),36,0.301437378,0.136390686],[new defaultSet(),36,0.301437378,0.86365509],[new defaultSet(),18,0.434750557,0.409113407],[new defaultSet(),18,0.368093491,0.409113407],[new defaultSet(),17,0.568062782,0.590931416],[new defaultSet(),19,0.634718895,0.590931416]];
            }
            if(param2 == -10 && param3 == -9)
            {
               return [[new decalSet(),163,0.5,0.5],[new propertiesSet(),3,0.501562119,0.500033379],[new defaultSet(),18,0.568219185,0.0454893112],[new defaultSet(),18,0.70153141,0.0454893112],[new defaultSet(),19,0.634874344,0.0454893112],[new defaultSet(),44,0.634874344,0.22730732]];
            }
            if(param2 == -10 && param3 == -8)
            {
               return [[new decalSet(),157,0.5,0.5],[new defaultSet(),2,0.101625443,0.500030041],[new defaultSet(),2,0.901499748,0.500030041],[new defaultSet(),37,0.501562119,0.227306843],[new defaultSet(),42,0.101625443,0.136396408],[new defaultSet(),42,0.901499748,0.136398315],[new defaultSet(),41,0.834843636,0.13639307],[new defaultSet(),41,0.168281555,0.136395454],[new defaultSet(),18,0.101625443,0.863664627],[new defaultSet(),18,0.168281555,0.863664627],[new defaultSet(),18,0.901499748,0.863664627],[new defaultSet(),17,0.834843636,0.863664627],[new defaultSet(),17,0.901499748,0.772759914],[new defaultSet(),17,0.101625443,0.772756577],[new defaultSet(),20,0.834843636,0.772756577],[new defaultSet(),19,0.168281555,0.772756577],[new defaultSet(),28,0.501562119,0.409123421],[new propertiesSet(),5,0.501562119,0.500032902]];
            }
            if(param2 == -6 && param3 == -6)
            {
               return [[new decalSet(),112,0.5,0.5],[new defaultSet(),2,0.367625237,0.500022411],[new defaultSet(),2,0.634249687,0.500022411],[new defaultSet(),41,0.101000309,0.86365509],[new defaultSet(),41,0.101000309,0.136387348],[new defaultSet(),41,0.101000309,0.500024319],[new defaultSet(),42,0.101000309,0.681839466],[new defaultSet(),42,0.101000309,0.318208694],[new defaultSet(),17,0.500937462,0.0454788208],[new defaultSet(),17,0.567593575,0.0454788208],[new defaultSet(),17,0.500937462,0.954566479],[new defaultSet(),19,0.434281349,0.954566479],[new defaultSet(),19,0.434281349,0.0454788208],[new defaultSet(),20,0.567593575,0.954566479]];
            }
            if(param2 == 4 && param3 == -7)
            {
               return [[new decalSet(),159,0.5,0.5],[new defaultSet(),41,0.499375343,0.136391163],[new defaultSet(),41,0.832655907,0.136389256],[new defaultSet(),41,0.832655907,0.77274847],[new defaultSet(),25,0.699343681,0.590933323],[new defaultSet(),22,0.499375343,0.409117699],[new defaultSet(),22,0.499375343,0.681843758],[new defaultSet(),19,0.0994372368,0.863661289],[new defaultSet(),19,0.632687569,0.863661289],[new defaultSet(),19,0.832655907,0.227300167],[new defaultSet(),19,0.832655907,0.500026226],[new defaultSet(),19,0.632687569,0.136391163],[new defaultSet(),19,0.699343681,0.136391163],[new defaultSet(),17,0.765999794,0.136391163],[new defaultSet(),17,0.832655907,0.318208694],[new defaultSet(),17,0.832655907,0.409117699],[new defaultSet(),17,0.166093826,0.863661289],[new defaultSet(),17,0.566031456,0.863661289],[new defaultSet(),17,0.699343681,0.863661289],[new defaultSet(),16,0.765999794,0.772752285]];
            }
            if(param2 == 3 && param3 == -7)
            {
               return [[new decalSet(),134,0.5,0.5],[new defaultSet(),2,0.632843733,0.500026226],[new defaultSet(),41,0.16624999,0.227302551],[new defaultSet(),41,0.232906103,0.136390686],[new defaultSet(),41,0.832812548,0.227296352],[new defaultSet(),41,0.299562454,0.0454797745],[new defaultSet(),41,0.766156435,0.136392593],[new defaultSet(),41,0.699499846,0.0454816818],[new defaultSet(),17,0.366218805,0.318208694],[new defaultSet(),17,0.432875156,0.409117699],[new defaultSet(),17,0.499531269,0.409117699],[new defaultSet(),17,0.499531269,0.500026226],[new defaultSet(),17,0.499531269,0.59093523],[new defaultSet(),20,0.499531269,0.318208694],[new defaultSet(),20,0.566187382,0.318208694],[new defaultSet(),20,0.566187382,0.500026226],[new defaultSet(),20,0.566187382,0.59093523],[new defaultSet(),18,0.366218805,0.409117699],[new defaultSet(),18,0.366218805,0.500026226],[new defaultSet(),18,0.366218805,0.590937138],[new defaultSet(),18,0.432875156,0.318208694],[new defaultSet(),18,0.432875156,0.590937138],[new defaultSet()
               ,19,0.432875156,0.500026226],[new defaultSet(),19,0.566187382,0.409117699]];
            }
            if(param2 == 2 && param3 == -6)
            {
               return [[new decalSet(),140,0.5,0.5],[new defaultSet(),41,0.099750042,0.136384487],[new defaultSet(),26,0.166406155,0.22729826],[new defaultSet(),36,0.099750042,0.681836605],[new defaultSet(),36,0.632999897,0.136388302],[new defaultSet(),18,0.566343784,0.136387825],[new defaultSet(),18,0.499687672,0.136387825],[new defaultSet(),18,0.433031321,0.136387825],[new defaultSet(),18,0.099750042,0.227296352],[new defaultSet(),18,0.099750042,0.31820488],[new defaultSet(),18,0.099750042,0.500022411],[new defaultSet(),18,0.366374969,0.409113407],[new defaultSet(),18,0.433031321,0.500022411],[new defaultSet(),18,0.499687672,0.409113407],[new defaultSet(),19,0.099750042,0.409113407],[new defaultSet(),19,0.099750042,0.590931416],[new defaultSet(),19,0.233062506,0.136387825],[new defaultSet(),19,0.299718618,0.136387825],[new defaultSet(),19,0.433031321,0.409113407],[new defaultSet(),19,0.499687672,0.500022411],[new defaultSet(),19,0.433031321,0.590931416],[new defaultSet(),20,0.366374969,0.500022411],[new defaultSet()
               ,20,0.366374969,0.590931416],[new defaultSet(),20,0.366374969,0.136387825],[new defaultSet(),20,0.166406155,0.136387825],[new defaultSet(),18,0.499687672,0.590931416]];
            }
            if(param2 == 3 && param3 == -6)
            {
               return [[new decalSet(),152,0.5,0.5],[new propertiesSet(),5,0.499531269,0.500022411],[new defaultSet(),28,0.366218805,0.318205833],[new defaultSet(),32,0.766156435,0.318206787],[new defaultSet(),29,0.632843733,0.863656998],[new defaultSet(),33,0.766156435,0.681839943],[new defaultSet(),18,0.432875156,0.863657475],[new defaultSet(),18,0.499531269,0.863657475],[new defaultSet(),18,0.566187382,0.863657475],[new defaultSet(),18,0.566187382,0.500022411],[new defaultSet(),18,0.632843733,0.500022411],[new defaultSet(),17,0.566187382,0.590931416],[new defaultSet(),19,0.632843733,0.590931416]];
            }
            if(param2 == 3 && param3 == -8)
            {
               return [[new decalSet(),151,0.5,0.5],[new defaultSet(),32,0.766156435,0.318210125],[new defaultSet(),34,0.432875156,0.227304459],[new defaultSet(),34,0.89946866,0.500031471],[new defaultSet(),33,0.632843733,0.136391163],[new defaultSet(),19,0.89946866,0.318212509],[new defaultSet(),19,0.699499846,0.136395454],[new defaultSet(),20,0.89946866,0.500030041],[new defaultSet(),17,0.366218805,0.136395454],[new defaultSet(),23,0.366218805,0.500030041]];
            }
            if(param2 == 2 && param3 == -8)
            {
               return [[new decalSet(),139,0.5,0.5],[new defaultSet(),28,0.433031321,0.500030518],[new propertiesSet(),5,0.499687672,0.409121037],[new defaultSet(),37,0.233062506,0.681846619],[new defaultSet(),23,0.433031321,0.318212509],[new defaultSet(),23,0.632999897,0.590939045],[new defaultSet(),18,0.233062506,0.863664627],[new defaultSet(),18,0.299718618,0.863664627],[new defaultSet(),17,0.166406155,0.863664627]];
            }
            if(param2 == 2 && param3 == -9)
            {
               return [[new decalSet(),151,0.5,0.5],[new defaultSet(),26,0.433031321,0.136400223],[new defaultSet(),26,0.899625063,0.31821537],[new defaultSet(),36,0.366374969,0.136398315],[new defaultSet(),36,0.699656248,0.136395454],[new defaultSet(),23,0.366374969,0.500033379],[new defaultSet(),20,0.899625063,0.500033379],[new defaultSet(),20,0.632999897,0.136398315],[new defaultSet(),18,0.899625063,0.409124374]];
            }
            if(param2 == 1 && param3 == -9)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),36,0.899781227,0.863668442],[new defaultSet(),41,0.0332499743,0.500033379],[new defaultSet(),17,0.766468763,0.318216324],[new defaultSet(),17,0.833124995,0.318216324],[new defaultSet(),17,0.166562557,0.681851387],[new defaultSet(),18,0.233218789,0.681851387],[new defaultSet(),18,0.433187485,0.681851387],[new defaultSet(),18,0.433187485,0.772760391],[new defaultSet(),19,0.499843836,0.318216324],[new defaultSet(),19,0.433187485,0.22730732],[new defaultSet(),19,0.433187485,0.318216324],[new defaultSet(),13,0.166562557,0.863668442],[new defaultSet(),13,0.233218789,0.863668442],[new defaultSet(),13,0.299875021,0.863668442],[new defaultSet(),13,0.366531253,0.863668442],[new defaultSet(),13,0.433187485,0.863668442],[new defaultSet(),13,0.833124995,0.136398315],[new defaultSet(),13,0.766468763,0.136398315],[new defaultSet(),13,0.699812531,0.136398315],[new defaultSet(),13,0.63315618,0.136398315],[new defaultSet(),13,0.566499949,0.136398315]
               ,[new defaultSet(),13,0.499843836,0.136398315]];
            }
            if(param2 == 0 && param3 == -9)
            {
               return [[new decalSet(),137,0.5,0.5],[new defaultSet(),28,0.5,0.500031471],[new propertiesSet(),5,0.5,0.318213463],[new defaultSet(),34,0.366687506,0.227308273],[new defaultSet(),34,0.166718751,0.227304459],[new defaultSet(),32,0.100062512,0.68184948],[new defaultSet(),41,0.100062512,0.772760391],[new defaultSet(),19,0.233374998,0.136398315],[new defaultSet(),18,0.300031245,0.136398315],[new defaultSet(),21,0.633312523,0.500033379],[new defaultSet(),21,0.366687506,0.590942383]];
            }
            if(param2 == 0 && param3 == -8)
            {
               return [[new decalSet(),126,0.5,0.5],[new defaultSet(),42,0.300031245,0.590939045],[new defaultSet(),42,0.699968755,0.59093523],[new defaultSet(),42,0.5,0.681848526],[new defaultSet(),33,0.100062512,0.772752285],[new defaultSet(),33,0.89993751,0.772755146],[new defaultSet(),22,0.5,0.409121037]];
            }
            if(param2 == 0 && param3 == -6)
            {
               return [[new decalSet(),156,0.5,0.5],[new propertiesSet(),2,0.5,0.31820488],[new defaultSet(),10,0.5,0.954565525],[new defaultSet(),2,0.233374998,0.409113407],[new defaultSet(),2,0.5,0.409113407],[new defaultSet(),2,0.766624987,0.409113407],[new defaultSet(),41,0.89993751,0.863657475],[new defaultSet(),41,0.100062512,0.863659859],[new defaultSet(),41,0.366687506,0.863661766],[new defaultSet(),41,0.633312523,0.863655567],[new defaultSet(),19,0.633312523,0.954566479],[new defaultSet(),19,0.366687506,0.954566479],[new defaultSet(),17,0.433343738,0.954566479],[new defaultSet(),17,0.566656232,0.954566479]];
            }
            if(param2 == -2 && param3 == -6)
            {
               return [[new decalSet(),153,0.5,0.5],[new defaultSet(),33,0.300343752,0.772752762],[new propertiesSet(),1,0.500312448,0.500022411],[new defaultSet(),2,0.433656335,0.31820488],[new defaultSet(),2,0.433656335,0.772748947],[new defaultSet(),5,0.300343752,0.590927124],[new defaultSet(),33,0.700281382,0.772747993],[new defaultSet(),25,0.500312448,0.954566956],[new defaultSet(),23,0.900250077,0.500022411],[new defaultSet(),23,0.100374937,0.590931416]];
            }
            if(param2 == -2 && param3 == -7)
            {
               return [[new decalSet(),154,0.5,0.5],[new defaultSet(),2,0.500312448,0.500026226],[new defaultSet(),32,0.500312448,0.772748947],[new defaultSet(),41,0.833593726,0.500023842],[new defaultSet(),41,0.167031288,0.500025749],[new defaultSet(),23,0.500312448,0.318208694]];
            }
            if(param2 == -2 && param3 == -8)
            {
               return [[new decalSet(),130,0.5,0.5],[new defaultSet(),2,0.500312448,0.500030041],[new defaultSet(),34,0.900250077,0.954576969],[new defaultSet(),34,0.100374937,0.22730732],[new defaultSet(),42,0.433656335,0.7727561],[new defaultSet(),42,0.566968679,0.772758484],[new defaultSet(),42,0.500312448,0.772752762],[new defaultSet(),21,0.500312448,0.318212509],[new defaultSet(),23,0.900250077,0.500030041],[new defaultSet(),23,0.100374937,0.590939045]];
            }
            if(param2 == -2 && param3 == -9)
            {
               return [[new decalSet(),147,0.5,0.5],[new defaultSet(),28,0.500312448,0.500032425],[new propertiesSet(),5,0.500312448,0.318217278],[new defaultSet(),20,0.233687639,0.136398315],[new defaultSet(),20,0.167031288,0.136398315],[new defaultSet(),18,0.300343752,0.136398315],[new defaultSet(),17,0.366999984,0.136398315],[new defaultSet(),17,0.366999984,0.681851387],[new defaultSet(),18,0.433656335,0.681851387],[new defaultSet(),38,0.167031288,0.500031471],[new defaultSet(),36,0.167031288,0.227310181],[new defaultSet(),36,0.167031288,0.772759438]];
            }
            if(param2 == -3 && param3 == -9)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),34,0.700437546,0.772764206],[new defaultSet(),36,0.300500154,0.681855202]];
            }
            if(param2 == 2 && param3 == -5)
            {
               return [[new decalSet(),126,0.5,0.5],[new defaultSet(),33,0.433031321,0.409110069],[new defaultSet(),33,0.566343784,0.409113407],[new defaultSet(),33,0.166406155,0.318200111],[new defaultSet(),33,0.832968712,0.31820488],[new defaultSet(),42,0.433031321,0.318199158],[new defaultSet(),42,0.566343784,0.318203926],[new defaultSet(),21,0.699656248,0.681836605],[new defaultSet(),21,0.299718618,0.590927601]];
            }
            if(param2 == 2 && param3 == -3)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.366374969,0.500011206],[new defaultSet(),2,0.632999897,0.500011206],[new defaultSet(),41,0.0330936909,0.136373281],[new defaultSet(),41,0.966281414,0.136372566],[new defaultSet(),41,0.632999897,0.136379957],[new defaultSet(),41,0.366374969,0.136379242],[new defaultSet(),21,0.832968712,0.500011206],[new defaultSet(),21,0.166406155,0.590919971]];
            }
            if(param2 == 2 && param3 == -2)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),25,0.499687672,0.227282166],[new defaultSet(),34,0.099750042,0.590913415],[new defaultSet(),34,0.899625063,0.590919733],[new defaultSet(),21,0.433031321,0.409098864],[new defaultSet(),21,0.566343784,0.681825042],[new defaultSet(),17,0.099750042,0.136372328],[new defaultSet(),17,0.166406155,0.136372328],[new defaultSet(),17,0.166406155,0.227281213],[new defaultSet(),17,0.899625063,0.772729993],[new defaultSet(),17,0.832968712,0.772731066],[new defaultSet(),19,0.832968712,0.863642454],[new defaultSet(),19,0.832968712,0.863642454],[new defaultSet(),19,0.899625063,0.863639712],[new defaultSet(),19,0.099750042,0.227281213]];
            }
            if(param2 == -4 && param3 == -9)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),38,0.500624895,0.227309227],[new defaultSet(),38,0.500624895,0.77275753],[new defaultSet(),23,0.167343855,0.681851387],[new defaultSet(),23,0.833906174,0.409124374],[new defaultSet(),19,0.567281246,0.318216324],[new defaultSet(),19,0.433968782,0.681851387],[new defaultSet(),18,0.567281246,0.22730732],[new defaultSet(),18,0.567281246,0.772760391],[new defaultSet(),18,0.567281246,0.681851387],[new defaultSet(),17,0.433968782,0.772760391],[new defaultSet(),17,0.433968782,0.22730732],[new defaultSet(),17,0.433968782,0.318216324]];
            }
            if(param2 == 2 && param3 == -1)
            {
               return [[new decalSet(),148,0.5,0.5],[new propertiesSet(),5,0.499687672,0.590910971],[new defaultSet(),28,0.366374969,0.31818974],[new defaultSet(),32,0.699656248,0.409093201],[new defaultSet(),29,0.632999897,0.86363709],[new defaultSet(),32,0.433031321,0.590914547],[new defaultSet(),17,0.699656248,0.863638759],[new defaultSet(),17,0.832968712,0.136368811],[new defaultSet(),17,0.832968712,0.409094989],[new defaultSet(),17,0.832968712,0.590912461],[new defaultSet(),17,0.166406155,0.863638759],[new defaultSet(),18,0.099750042,0.863638759],[new defaultSet(),18,0.832968712,0.500003755],[new defaultSet(),18,0.832968712,0.227277517],[new defaultSet(),19,0.566343784,0.863638759],[new defaultSet(),19,0.832968712,0.772729993],[new defaultSet(),20,0.832968712,0.318186164],[new defaultSet(),20,0.832968712,0.681821227],[new defaultSet(),20,0.566343784,0.590912461],[new defaultSet(),20,0.632999897,0.590912461],[new defaultSet(),18,0.566343784,0.681821227],[new defaultSet(),17,0.632999897,0.681821227]];
            }
            if(param2 == 3 && param3 == 3)
            {
               return [[new decalSet(),159,0.5,0.5],[new propertiesSet(),0,0.432875156,0.499987841],[new defaultSet(),28,0.432875156,0.49999094],[new defaultSet(),17,0.499531269,0.136353731],[new defaultSet(),17,0.699499846,0.863623857],[new defaultSet(),17,0.566187382,0.863623857],[new defaultSet(),17,0.0995936394,0.863623857],[new defaultSet(),17,0.832812548,0.136353731],[new defaultSet(),17,0.832812548,0.318171263],[new defaultSet(),17,0.832812548,0.499989986],[new defaultSet(),20,0.766156435,0.136356115],[new defaultSet(),20,0.632843733,0.136353731],[new defaultSet(),20,0.699499846,0.136353731],[new defaultSet(),20,0.632843733,0.863623857],[new defaultSet(),19,0.16624999,0.863623857],[new defaultSet(),19,0.832812548,0.409080029],[new defaultSet(),19,0.832812548,0.227263927],[new defaultSet(),18,0.566187382,0.136353731],[new defaultSet(),18,0.832812548,0.59089756],[new defaultSet(),18,0.832812548,0.681802034],[new defaultSet(),17,0.832812548,0.772713184],[new defaultSet(),40,0.699499846,0.409080029]
               ,[new defaultSet(),39,0.699499846,0.409080029]];
            }
            if(param2 == -1 && param3 == -1)
            {
               return [[new decalSet(),136,0.5,0.5],[new defaultSet(),34,0.166875005,0.954549015],[new defaultSet(),2,0.500156224,0.318184674],[new defaultSet(),2,0.700125039,0.49999994],[new defaultSet(),34,0.833437502,0.954547346],[new defaultSet(),33,0.700125039,0.318182111],[new defaultSet(),33,0.500156224,0.136370599],[new defaultSet(),33,0.900093734,0.500005543],[new defaultSet(),22,0.500156224,0.500005364],[new defaultSet(),13,0.300187469,0.318186164],[new defaultSet(),13,0.233531296,0.409094989],[new defaultSet(),13,0.300187469,0.590912461]];
            }
            if(param2 == -7 && param3 == -10)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),29,0.301125526,0.681855202],[new defaultSet(),34,0.701062679,0.77276516],[new defaultSet(),41,0.0345001221,0.500035286],[new defaultSet(),13,0.234468937,0.500037193],[new defaultSet(),13,0.301125526,0.500037193],[new defaultSet(),13,0.434437752,0.500037193]];
            }
            if(param2 == -5 && param3 == -10)
            {
               return [[new decalSet(),141,0.5,0.5],[new defaultSet(),41,0.634093761,0.136404991],[new defaultSet(),41,0.700749874,0.136398315],[new defaultSet(),41,0.900718689,0.318217278],[new defaultSet(),41,0.900718689,0.500041962],[new defaultSet(),41,0.434124947,0.136403084],[new defaultSet(),33,0.834062576,0.227314949],[new defaultSet(),33,0.634093761,0.409132957],[new defaultSet(),17,0.367468834,0.13640213],[new defaultSet(),17,0.900718689,0.409129143],[new defaultSet(),21,0.567437172,0.681855202],[new defaultSet(),23,0.434124947,0.500037193]];
            }
            if(param2 == -5 && param3 == -9)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.367468834,0.500033379],[new defaultSet(),2,0.634093761,0.500033379],[new defaultSet(),36,0.100843906,0.136399269],[new defaultSet(),36,0.100843906,0.68184948],[new defaultSet(),36,0.100843906,0.409121513],[new defaultSet(),36,0.234156609,0.136399269],[new defaultSet(),36,0.234156609,0.68184948],[new defaultSet(),21,0.634093761,0.318216324],[new defaultSet(),21,0.367468834,0.772760391],[new defaultSet(),20,0.0341877937,0.590942383],[new defaultSet(),20,0.0341877937,0.500033379],[new defaultSet(),18,0.0341877937,0.318216324],[new defaultSet(),18,0.0341877937,0.409124374]];
            }
            if(param2 == -6 && param3 == -8)
            {
               return [[new decalSet(),160,0.5,0.5],[new defaultSet(),25,0.234312534,0.772757053],[new propertiesSet(),1,0.567593575,0.318208218],[new defaultSet(),5,0.234312534,0.409118652],[new defaultSet(),41,0.234312534,0.863663673],[new defaultSet(),41,0.234312534,0.136395454],[new defaultSet(),22,0.567593575,0.590939045]];
            }
            if(param2 == -5 && param3 == -8)
            {
               return [[new decalSet(),135,0.5,0.5],[new defaultSet(),28,0.367468834,0.500032425],[new propertiesSet(),5,0.500781059,0.31821394],[new defaultSet(),37,0.567437172,0.590939999],[new defaultSet(),33,0.767405987,0.863668919],[new defaultSet(),33,0.234156609,0.863661766],[new defaultSet(),21,0.567437172,0.500030041]];
            }
            if(param2 == -8 && param3 == -7)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),29,0.10131216,0.136390686],[new defaultSet(),29,0.901187897,0.136388779],[new defaultSet(),33,0.301280975,0.136395454],[new defaultSet(),33,0.701218605,0.13639307],[new defaultSet(),33,0.50124979,0.136391163],[new defaultSet(),18,0.16796875,0.863661289],[new defaultSet(),18,0.10131216,0.863661289],[new defaultSet(),18,0.10131216,0.772752285],[new defaultSet(),18,0.901187897,0.772752285],[new defaultSet(),19,0.834531307,0.772752285],[new defaultSet(),19,0.834531307,0.863661289],[new defaultSet(),20,0.901187897,0.863661289],[new defaultSet(),20,0.16796875,0.772752285]];
            }
            if(param2 == -5 && param3 == -6)
            {
               return [[new decalSet(),138,0.5,0.5],[new defaultSet(),26,0.634093761,0.86365509],[new defaultSet(),36,0.167500019,0.863658428],[new defaultSet(),36,0.834062576,0.772751808],[new defaultSet(),22,0.500781059,0.409113407],[new defaultSet(),21,0.300812721,0.590931416],[new defaultSet(),21,0.567437172,0.590931416]];
            }
            if(param2 == -10 && param3 == -6)
            {
               return [[new decalSet(),149,0.5,0.5],[new propertiesSet(),5,0.501562119,0.50001955],[new defaultSet(),28,0.568219185,0.318206787],[new defaultSet(),41,0.234937668,0.863654613],[new defaultSet(),32,0.301593781,0.500022411],[new defaultSet(),26,0.101625443,0.681837082],[new defaultSet(),36,0.101625443,0.590934277],[new defaultSet(),33,0.101625443,0.772747993],[new defaultSet(),19,0.168281555,0.863657475],[new defaultSet(),20,0.768187523,0.863657475],[new defaultSet(),20,0.834843636,0.863659859],[new defaultSet(),17,0.70153141,0.863657475],[new defaultSet(),17,0.301593781,0.863657475],[new defaultSet(),17,0.568219185,0.409113407],[new defaultSet(),17,0.634874344,0.500022411],[new defaultSet(),18,0.568219185,0.500022411]];
            }
            if(param2 == -8 && param3 == -8)
            {
               return [[new decalSet(),158,0.5,0.5],[new defaultSet(),32,0.50124979,0.409121037],[new defaultSet(),42,0.10131216,0.136396408],[new defaultSet(),42,0.434594154,0.136398315],[new defaultSet(),42,0.10131216,0.681844711],[new defaultSet(),22,0.50124979,0.590939045],[new defaultSet(),20,0.10131216,0.227303505],[new defaultSet(),20,0.10131216,0.318212509],[new defaultSet(),20,0.834531307,0.318212509],[new defaultSet(),20,0.834531307,0.409121037],[new defaultSet(),20,0.834531307,0.590939045],[new defaultSet(),18,0.16796875,0.136395454],[new defaultSet(),18,0.301280975,0.136395454],[new defaultSet(),18,0.367937565,0.136395454],[new defaultSet(),18,0.10131216,0.409121037],[new defaultSet(),18,0.10131216,0.500030041],[new defaultSet(),18,0.834531307,0.227303505],[new defaultSet(),17,0.834531307,0.500030041],[new defaultSet(),17,0.834531307,0.681847572],[new defaultSet(),17,0.23462534,0.136395454],[new defaultSet(),17,0.10131216,0.590939045],[new defaultSet(),16,0.23462534,0.409121037]];
            }
            if(param2 == -7 && param3 == -6)
            {
               return [[new decalSet(),155,0.5,0.5],[new propertiesSet(),5,0.434437752,0.50001812],[new defaultSet(),28,0.501093864,0.500025272],[new defaultSet(),29,0.167812347,0.136390209],[new defaultSet(),29,0.167812347,0.863654613],[new defaultSet(),41,0.834374905,0.136384964],[new defaultSet(),41,0.834374905,0.863657475],[new defaultSet(),38,0.101156712,0.500024796],[new defaultSet(),20,0.434437752,0.227296352],[new defaultSet(),20,0.434437752,0.31820488],[new defaultSet(),20,0.567749977,0.772748947],[new defaultSet(),19,0.567749977,0.681839943],[new defaultSet(),19,0.501093864,0.227296352],[new defaultSet(),18,0.501093864,0.772748947],[new defaultSet(),18,0.501093864,0.31820488],[new defaultSet(),17,0.501093864,0.681839943]];
            }
            if(param2 == -8 && param3 == -5)
            {
               return [[new decalSet(),122,0.5,0.5],[new defaultSet(),26,0.50124979,0.500015736],[new defaultSet(),37,0.50124979,0.863656521],[new defaultSet(),18,0.0346565247,0.227292538],[new defaultSet(),18,0.0346565247,0.409110069],[new defaultSet(),18,0.0346565247,0.500018597],[new defaultSet(),18,0.967843533,0.409110069],[new defaultSet(),18,0.967843533,0.590927601],[new defaultSet(),17,0.967843533,0.318201065],[new defaultSet(),17,0.967843533,0.227292538],[new defaultSet(),17,0.967843533,0.500018597],[new defaultSet(),17,0.0346565247,0.681836605],[new defaultSet(),17,0.0346565247,0.772744656],[new defaultSet(),20,0.967843533,0.681836605],[new defaultSet(),20,0.967843533,0.772744656],[new defaultSet(),20,0.0346565247,0.318201065],[new defaultSet(),19,0.0346565247,0.590927601]];
            }
            if(param2 == -9 && param3 == -4)
            {
               return [[new decalSet(),160,0.5,0.5],[new propertiesSet(),1,0.501405716,0.318198681],[new defaultSet(),2,0.234781265,0.681832314],[new defaultSet(),2,0.234781265,0.318197727],[new defaultSet(),5,0.568062782,0.409102678],[new defaultSet(),42,0.168125153,0.136376381],[new defaultSet(),42,0.10146904,0.59092021],[new defaultSet(),42,0.10146904,0.772743464],[new defaultSet(),42,0.168125153,0.863647699],[new defaultSet(),21,0.634718895,0.590923786],[new defaultSet(),23,0.434750557,0.50001502],[new defaultSet(),17,0.301437378,0.136379957],[new defaultSet(),17,0.368093491,0.136379957],[new defaultSet(),17,0.234781265,0.863650084],[new defaultSet(),17,0.834688187,0.863650084],[new defaultSet(),18,0.234781265,0.136379957],[new defaultSet(),18,0.301437378,0.863650084],[new defaultSet(),19,0.76803112,0.863650084],[new defaultSet(),20,0.701375008,0.863650084]];
            }
            if(param2 == -9 && param3 == -2)
            {
               return [[new decalSet(),160,0.5,0.5],[new defaultSet(),5,0.301437378,0.590913415],[new defaultSet(),26,0.368093491,0.500009537],[new defaultSet(),34,0.10146904,0.681828976],[new defaultSet(),34,0.10146904,0.863643646],[new defaultSet(),36,0.234781265,0.863642097],[new defaultSet(),36,0.234781265,0.136371851],[new defaultSet(),20,0.76803112,0.863642454],[new defaultSet(),20,0.834688187,0.863642454],[new defaultSet(),20,0.368093491,0.136369348],[new defaultSet(),17,0.301437378,0.863640666],[new defaultSet(),17,0.301437378,0.136370897],[new defaultSet(),21,0.568062782,0.50000751],[new defaultSet(),18,0.701375008,0.863642454],[new defaultSet(),18,0.168125153,0.863642454],[new defaultSet(),18,0.168125153,0.136372328]];
            }
            if(param2 == -7 && param3 == -2)
            {
               return [[new decalSet(),159,0.5,0.5],[new defaultSet(),25,0.701062679,0.590916753],[new defaultSet(),20,0.501093864,0.136372328],[new defaultSet(),20,0.567749977,0.136372328],[new defaultSet(),20,0.63440609,0.863642454],[new defaultSet(),20,0.701062679,0.863642454],[new defaultSet(),20,0.101156712,0.863642454],[new defaultSet(),17,0.834374905,0.136372328],[new defaultSet(),17,0.834374905,0.227281213],[new defaultSet(),17,0.834374905,0.409098864],[new defaultSet(),17,0.834374905,0.318189979],[new defaultSet(),17,0.567749977,0.863642454],[new defaultSet(),17,0.167812347,0.863645673],[new defaultSet(),18,0.63440609,0.136372328],[new defaultSet(),18,0.701062679,0.136372328],[new defaultSet(),18,0.834374905,0.50000751],[new defaultSet(),18,0.767718315,0.136372328],[new defaultSet(),16,0.567749977,0.50000751],[new defaultSet(),16,0.567749977,0.590916157],[new defaultSet(),16,0.567749977,0.772733808]];
            }
            if(param2 == -6 && param3 == -4)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),41,0.700906277,0.681829214],[new defaultSet(),41,0.300969124,0.681833982]];
            }
            if(param2 == -7 && param3 == -4)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),2,0.501093864,0.227288723],[new defaultSet(),2,0.501093864,0.772741079],[new defaultSet(),34,0.101156712,0.227290869],[new defaultSet(),34,0.101156712,0.954554796],[new defaultSet(),33,0.901031494,0.500019073],[new defaultSet(),20,0.767718315,0.318197727],[new defaultSet(),20,0.834374905,0.318197727],[new defaultSet(),20,0.167812347,0.681832314],[new defaultSet(),18,0.234468937,0.681832314],[new defaultSet(),18,0.834374905,0.681832314],[new defaultSet(),18,0.301125526,0.590923786],[new defaultSet(),18,0.367781162,0.590923786],[new defaultSet(),17,0.234468937,0.590923786],[new defaultSet(),17,0.167812347,0.590923786]];
            }
            if(param2 == -5 && param3 == -2)
            {
               return [[new decalSet(),158,0.5,0.5],[new defaultSet(),38,0.100843906,0.136372924],[new defaultSet(),36,0.834062576,0.227281451],[new defaultSet(),33,0.434124947,0.136368275],[new defaultSet(),41,0.234156609,0.13637495],[new defaultSet(),22,0.500781059,0.50000751],[new defaultSet(),23,0.500781059,0.681825042],[new defaultSet(),16,0.234156609,0.409098864],[new defaultSet(),16,0.234156609,0.590916157]];
            }
            if(param2 == -8 && param3 == -4)
            {
               return [[new decalSet(),130,0.5,0.5],[new defaultSet(),28,0.50124979,0.500011921],[new propertiesSet(),5,0.50124979,0.318199635],[new defaultSet(),32,0.50124979,0.772741079],[new defaultSet(),36,0.16796875,0.681835413],[new defaultSet(),36,0.767874718,0.681831837],[new defaultSet(),33,0.50124979,0.590927839],[new defaultSet(),21,0.50124979,0.318197727],[new defaultSet(),20,0.434594154,0.681832314],[new defaultSet(),19,0.56790638,0.681832314],[new defaultSet(),17,0.50124979,0.681832314]];
            }
            if(param2 == -8 && param3 == -2)
            {
               return [[new decalSet(),154,0.5,0.5],[new defaultSet(),28,0.50124979,0.500011325],[new propertiesSet(),5,0.50124979,0.590919256],[new defaultSet(),38,0.967843533,0.0454622507],[new defaultSet(),38,0.0346565247,0.0454671383],[new defaultSet(),41,0.301280975,0.0454646349],[new defaultSet(),41,0.701218605,0.045461297],[new defaultSet(),21,0.50124979,0.318189979],[new defaultSet(),23,0.50124979,0.772733808]];
            }
            if(param2 == -8 && param3 == -1)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.367937565,0.500003755],[new defaultSet(),2,0.634562492,0.500003755],[new defaultSet(),37,0.50124979,0.227277756],[new defaultSet(),41,0.967843533,0.0454623103],[new defaultSet(),41,0.0346565247,0.0454633236],[new defaultSet(),23,0.50124979,0.500003755],[new defaultSet(),19,0.967843533,0.318186164],[new defaultSet(),19,0.967843533,0.409094989],[new defaultSet(),19,0.967843533,0.500003755],[new defaultSet(),20,0.0346565247,0.500003755],[new defaultSet(),20,0.0346565247,0.590912461],[new defaultSet(),18,0.0346565247,0.409094989],[new defaultSet(),18,0.967843533,0.590912461],[new defaultSet(),17,0.0346565247,0.318186164],[new defaultSet(),17,0.967843533,0.681821227],[new defaultSet(),17,0.0346565247,0.681821227]];
            }
            if(param2 == -8 && param3 == 0)
            {
               return [[new decalSet(),149,0.5,0.5],[new defaultSet(),32,0.23462534,0.499998033],[new defaultSet(),36,0.10131216,0.681817114],[new defaultSet(),36,0.23462534,0.863632441],[new defaultSet(),36,0.767874718,0.863636255],[new defaultSet(),21,0.434594154,0.318182498],[new defaultSet(),19,0.56790638,0.590908766],[new defaultSet(),18,0.56790638,0.5]];
            }
            if(param2 == -7 && param3 == 0)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),29,0.834374905,0.13636525],[new defaultSet(),29,0.167812347,0.136361942],[new defaultSet(),29,0.167812347,0.863636255],[new defaultSet(),29,0.834374905,0.863631964],[new defaultSet(),38,0.101156712,0.49999848],[new defaultSet(),17,0.434437752,0.227273747],[new defaultSet(),17,0.434437752,0.318182498],[new defaultSet(),17,0.501093864,0.227273747],[new defaultSet(),17,0.501093864,0.681817472],[new defaultSet(),17,0.701062679,0.590908766],[new defaultSet(),17,0.63440609,0.590908766],[new defaultSet(),17,0.567749977,0.590908766],[new defaultSet(),17,0.567749977,0.681817472],[new defaultSet(),18,0.501093864,0.318182498],[new defaultSet(),18,0.567749977,0.772726238],[new defaultSet(),20,0.501093864,0.59090656],[new defaultSet(),20,0.501093864,0.772726238],[new defaultSet(),20,0.767718315,0.318180352],[new defaultSet(),20,0.234468937,0.681815326]];
            }
            if(param2 == -6 && param3 == 0)
            {
               return [[new decalSet(),138,0.5,0.5],[new defaultSet(),2,0.567593575,0.590908766],[new defaultSet(),33,0.767562389,0.681814969],[new defaultSet(),41,0.634249687,0.863635778],[new defaultSet(),29,0.167656422,0.772726476],[new defaultSet(),41,0.167656422,0.863635778],[new defaultSet(),20,0.101000309,0.863635004],[new defaultSet(),20,0.834218502,0.681817472],[new defaultSet(),20,0.834218502,0.590908766],[new defaultSet(),18,0.700906277,0.863635004],[new defaultSet(),18,0.834218502,0.772724092],[new defaultSet(),17,0.567593575,0.863635004],[new defaultSet(),21,0.567593575,0.409091264]];
            }
            if(param2 == -6 && param3 == -1)
            {
               return [[new decalSet(),150,0.5,0.5],[new propertiesSet(),5,0.500937462,0.681822538],[new defaultSet(),28,0.567593575,0.500006914],[new defaultSet(),32,0.234312534,0.500006199],[new defaultSet(),36,0.101000309,0.136368334],[new defaultSet(),33,0.300969124,0.136366248],[new defaultSet(),33,0.101000309,0.409092486],[new defaultSet(),17,0.167656422,0.136368811],[new defaultSet(),17,0.234312534,0.136368811],[new defaultSet(),17,0.101000309,0.318186164],[new defaultSet(),17,0.101000309,0.590912461],[new defaultSet(),18,0.500937462,0.136368811],[new defaultSet(),18,0.367625237,0.136368811],[new defaultSet(),18,0.101000309,0.227277517],[new defaultSet(),18,0.101000309,0.681821227],[new defaultSet(),19,0.634249687,0.136368811],[new defaultSet(),19,0.567593575,0.136368811],[new defaultSet(),19,0.101000309,0.500003755],[new defaultSet(),20,0.434281349,0.136368811]];
            }
            if(param2 == -4 && param3 == 2)
            {
               return [[new decalSet(),156,0.5,0.5],[new defaultSet(),2,0.233999968,0.409083843],[new defaultSet(),2,0.500624895,0.409083843],[new defaultSet(),2,0.767250061,0.409083843],[new defaultSet(),17,0.36731267,0.9545362],[new defaultSet(),17,0.567281246,0.9545362],[new defaultSet(),20,0.433968782,0.954532623],[new defaultSet(),20,0.633937359,0.9545362]];
            }
            if(param2 == -4 && param3 == 0)
            {
               return [[new decalSet(),127,0.5,0.5],[new propertiesSet(),5,0.500624895,0.318181157],[new defaultSet(),28,0.500624895,0.500001609],[new defaultSet(),38,0.500624895,0.863635242],[new defaultSet(),41,0.833906174,0.772728801],[new defaultSet(),41,0.167343855,0.772725523],[new defaultSet(),2,0.36731267,0.5],[new defaultSet(),2,0.633937359,0.5],[new defaultSet(),17,0.233999968,0.409091264],[new defaultSet(),17,0.233999968,0.500001073],[new defaultSet(),17,0.167343855,0.409091264],[new defaultSet(),17,0.833906174,0.409091264],[new defaultSet(),17,0.767250061,0.5],[new defaultSet(),20,0.767250061,0.409091264],[new defaultSet(),20,0.833906174,0.5],[new defaultSet(),18,0.167343855,0.5]];
            }
            if(param2 == -3 && param3 == -5)
            {
               return [[new decalSet(),131,0.5,0.5],[new propertiesSet(),2,0.500468731,0.318201065],[new defaultSet(),10,0.500468731,0.0454721451],[new defaultSet(),2,0.233843565,0.50001955],[new defaultSet(),2,0.767093897,0.50001955],[new defaultSet(),42,0.83375001,0.136384487],[new defaultSet(),42,0.167187452,0.136383057],[new defaultSet(),42,0.367156267,0.136381626],[new defaultSet(),42,0.633781195,0.136380196],[new defaultSet(),32,0.500468731,0.136386395],[new defaultSet(),21,0.500468731,0.409110069]];
            }
            if(param2 == -1 && param3 == -5)
            {
               return [[new decalSet(),153,0.5,0.5],[new propertiesSet(),1,0.566812515,0.500016689],[new defaultSet(),2,0.433499992,0.318201065],[new defaultSet(),5,0.500156224,0.0454721451],[new defaultSet(),25,0.500156224,0.227294445],[new defaultSet(),42,0.100218773,0.500020027],[new defaultSet(),42,0.900093734,0.500022411],[new defaultSet(),33,0.300187469,0.31819725],[new defaultSet(),33,0.700125039,0.318201542],[new defaultSet(),20,0.566812515,0.318201065],[new defaultSet(),20,0.433499992,0.681836605],[new defaultSet(),17,0.566812515,0.681836605],[new defaultSet(),17,0.500156224,0.681836605],[new defaultSet(),17,0.433499992,0.227292538],[new defaultSet(),17,0.500156224,0.318201065]];
            }
            if(param2 == -3 && param3 == -4)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),29,0.83375001,0.772744179],[new defaultSet(),29,0.167187452,0.227287292],[new defaultSet(),38,0.500468731,0.227288723],[new defaultSet(),41,0.900406361,0.772743702],[new defaultSet(),41,0.10053134,0.227286816],[new defaultSet(),19,0.233843565,0.681832314],[new defaultSet(),19,0.633781195,0.409106255],[new defaultSet(),19,0.633781195,0.50001502],[new defaultSet(),18,0.633781195,0.590923786],[new defaultSet(),18,0.300500154,0.681832314]];
            }
            if(param2 == -1 && param3 == -3)
            {
               return [[new decalSet(),126,0.5,0.5],[new propertiesSet(),5,0.500156224,0.590920925],[new defaultSet(),28,0.500156224,0.40910244],[new defaultSet(),37,0.500156224,0.227287054],[new defaultSet(),34,0.766781211,0.227282047],[new defaultSet(),34,0.233531296,0.227288246],[new defaultSet(),19,0.0335624814,0.40910244],[new defaultSet(),19,0.0335624814,0.500011206],[new defaultSet(),20,0.966750026,0.500011206],[new defaultSet(),17,0.966750026,0.590919971],[new defaultSet(),17,0.966750026,0.40910244],[new defaultSet(),17,0.0335624814,0.590919971],[new defaultSet(),13,0.700125039,0.40910244],[new defaultSet(),13,0.300187469,0.40910244],[new defaultSet(),13,0.633468747,0.40910244],[new defaultSet(),13,0.700125039,0.227284908],[new defaultSet(),13,0.300187469,0.227284908],[new defaultSet(),13,0.166875005,0.318193913]];
            }
            if(param2 == -3 && param3 == -2)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.367156267,0.50000751],[new defaultSet(),2,0.633781195,0.50000751],[new defaultSet(),37,0.500468731,0.227283239],[new defaultSet(),41,0.967062473,0.318192601],[new defaultSet(),41,0.0338749886,0.318185925],[new defaultSet(),21,0.500468731,0.590916157],[new defaultSet(),21,0.500468731,0.409098864]];
            }
            if(param2 == -3 && param3 == -1)
            {
               return [[new decalSet(),146,0.5,0.5],[new defaultSet(),32,0.500468731,0.500006795],[new defaultSet(),42,0.167187452,0.863638937],[new defaultSet(),42,0.10053134,0.863638937],[new defaultSet(),42,0.233843565,0.863638401],[new defaultSet(),18,0.633781195,0.227277517],[new defaultSet(),18,0.633781195,0.318186164],[new defaultSet(),17,0.567124844,0.227277517],[new defaultSet(),20,0.567124844,0.318186164],[new defaultSet(),18,0.767093897,0.863638759],[new defaultSet(),18,0.83375001,0.863639235],[new defaultSet(),19,0.900406361,0.863638759]];
            }
            if(param2 == -1 && param3 == -2)
            {
               return [[new decalSet(),143,0.5,0.5],[new defaultSet(),26,0.500156224,0.50000906],[new defaultSet(),36,0.100218773,0.227281451],[new defaultSet(),36,0.900093734,0.227283955],[new defaultSet(),41,0.500156224,0.227283716],[new defaultSet(),21,0.833437502,0.50000751],[new defaultSet(),23,0.166875005,0.590916157]];
            }
            if(param2 == 1 && param3 == -1)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),34,0.299875021,0.772727072],[new defaultSet(),34,0.699812531,0.772727609],[new defaultSet(),29,0.899781227,0.500006795]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),36,0.89993751,0.863638222],[new defaultSet(),36,0.89993751,0.136367559],[new defaultSet(),34,0.5,0.318182111],[new defaultSet(),34,0.5,0.954549253],[new defaultSet(),41,0.100062512,0.863641262],[new defaultSet(),41,0.100062512,0.136370838],[new defaultSet(),21,0.699968755,0.590912461],[new defaultSet(),21,0.300031245,0.500003755]];
            }
            if(param2 == -4 && param3 == -1)
            {
               return [[new decalSet(),154,0.5,0.5],[new defaultSet(),26,0.500624895,0.500005245],[new defaultSet(),36,0.0340313911,0.0454602838],[new defaultSet(),36,0.0340313911,0.954548776],[new defaultSet(),21,0.500624895,0.772730529],[new defaultSet(),23,0.500624895,0.318189979]];
            }
            if(param2 == -2 && param3 == 0)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),25,0.500312448,0.227274194],[new defaultSet(),34,0.900250077,0.227269933],[new defaultSet(),34,0.100374937,0.227273181],[new defaultSet(),2,0.366999984,0.5],[new defaultSet(),2,0.633625031,0.5],[new defaultSet(),22,0.700281382,0.681821287],[new defaultSet(),22,0.300343752,0.681815326]];
            }
            if(param2 == -2 && param3 == 1)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),29,0.833593726,0.772719145],[new defaultSet(),29,0.167031288,0.227267861],[new defaultSet(),33,0.900250077,0.227267742],[new defaultSet(),33,0.100374937,0.772719741],[new defaultSet(),17,0.900250077,0.772722483],[new defaultSet(),17,0.900250077,0.681813836],[new defaultSet(),17,0.100374937,0.227270007],[new defaultSet(),19,0.100374937,0.318178773],[new defaultSet(),19,0.100374937,0.409087539],[new defaultSet(),20,0.900250077,0.590904951],[new defaultSet(),20,0.633625031,0.409087539],[new defaultSet(),19,0.633625031,0.499996305],[new defaultSet(),17,0.633625031,0.590904951]];
            }
            if(param2 == -2 && param3 == 2)
            {
               return [[new decalSet(),139,0.5,0.5],[new propertiesSet(),5,0.500312448,0.681813478],[new defaultSet(),28,0.433656335,0.499993086],[new defaultSet(),26,0.233687639,0.681810856],[new defaultSet(),41,0.766937494,0.863623619],[new defaultSet(),41,0.100374937,0.681810617],[new defaultSet(),41,0.233687639,0.863623619],[new defaultSet(),21,0.633625031,0.590901136],[new defaultSet(),21,0.433656335,0.318178892]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),36,0.5,0.499997139],[new defaultSet(),21,0.366687506,0.590904951],[new defaultSet(),21,0.633312523,0.499996305],[new defaultSet(),18,0.366687506,0.409087539],[new defaultSet(),18,0.433343738,0.409087539],[new defaultSet(),18,0.633312523,0.590904951],[new defaultSet(),17,0.699968755,0.590904951],[new defaultSet(),20,0.300031245,0.409087539],[new defaultSet(),19,0.566656232,0.590904951],[new defaultSet(),33,0.366687506,0.318175912],[new defaultSet(),33,0.633312523,0.318182468],[new defaultSet(),16,0.5,0.318178773]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),146,0.5,0.5],[new defaultSet(),32,0.5,0.49999404],[new defaultSet(),36,0.833281279,0.863623619],[new defaultSet(),36,0.166718751,0.863629103],[new defaultSet(),18,0.766624987,0.863627672],[new defaultSet(),18,0.233374998,0.863627672],[new defaultSet(),19,0.100062512,0.863627672],[new defaultSet(),17,0.89993751,0.863627672],[new defaultSet(),22,0.5,0.318175077]];
            }
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),141,0.5,0.5],[new propertiesSet(),5,0.499843836,0.590903759],[new defaultSet(),28,0.566499949,0.499995232],[new defaultSet(),37,0.766468763,0.318175554],[new defaultSet(),38,0.366531253,0.136357784],[new defaultSet(),20,0.433187485,0.136357546],[new defaultSet(),20,0.899781227,0.409083843],[new defaultSet(),17,0.899781227,0.318175077],[new defaultSet(),17,0.899781227,0.499992609],[new defaultSet(),17,0.699812531,0.136357546],[new defaultSet(),18,0.63315618,0.136357546],[new defaultSet(),13,0.433187485,0.409083843],[new defaultSet(),13,0.566499949,0.318175077],[new defaultSet(),13,0.366531253,0.318175077],[new defaultSet(),13,0.299875021,0.409083843],[new defaultSet(),13,0.366531253,0.499992609],[new defaultSet(),13,0.699812531,0.409083843],[new defaultSet(),13,0.766468763,0.499992609]];
            }
            if(param2 == 1 && param3 == 3)
            {
               return [[new decalSet(),149,0.5,0.5],[new defaultSet(),41,0.166562557,0.863621712],[new propertiesSet(),6,0.499843836,0.409080029],[new defaultSet(),41,0.0999062061,0.590896606],[new defaultSet(),41,0.0999062061,0.772713661],[new defaultSet(),41,0.299875021,0.863621235],[new defaultSet(),29,0.233218789,0.681804657],[new defaultSet(),21,0.63315618,0.499988794],[new defaultSet(),13,0.299875021,0.227262259],[new defaultSet(),13,0.366531253,0.227262259],[new defaultSet(),13,0.499843836,0.227262259],[new defaultSet(),13,0.566499949,0.227262259]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),29,0.899625063,0.863625288],[new defaultSet(),29,0.099750042,0.1363554],[new defaultSet(),17,0.433031321,0.227262259],[new defaultSet(),17,0.433031321,0.318171263],[new defaultSet(),17,0.566343784,0.681806087],[new defaultSet(),17,0.632999897,0.59089756],[new defaultSet(),18,0.566343784,0.772715092],[new defaultSet(),19,0.499687672,0.318171263],[new defaultSet(),19,0.566343784,0.59089756],[new defaultSet(),20,0.433031321,0.409080029],[new defaultSet(),13,0.099750042,0.863623857],[new defaultSet(),13,0.233062506,0.863623857],[new defaultSet(),13,0.299718618,0.863623857],[new defaultSet(),13,0.433031321,0.863623857],[new defaultSet(),13,0.499687672,0.863623857],[new defaultSet(),13,0.632999897,0.136353731],[new defaultSet(),13,0.566343784,0.136353731],[new defaultSet(),13,0.499687672,0.136353731]];
            }
         }
         if(missionNum == 12)
         {
            if(param2 == -9 && param3 == -7)
            {
               return [[new decalSet(),126,0.5,0.5],[new propertiesSet(),0,0.501405716,0.50002861],[new defaultSet(),28,0.501405716,0.50002861],[new defaultSet(),40,0.234781265,0.318208694],[new defaultSet(),39,0.234781265,0.318208694],[new defaultSet(),17,0.234781265,0.772752285],[new defaultSet(),17,0.301437378,0.772752285],[new defaultSet(),17,0.301437378,0.863661289],[new defaultSet(),17,0.234781265,0.863661289],[new defaultSet(),17,0.76803112,0.772752285],[new defaultSet(),17,0.76803112,0.863661289],[new defaultSet(),17,0.701375008,0.863661289],[new defaultSet(),17,0.701375008,0.772752285]];
            }
            if(param2 == -4 && param3 == 1)
            {
               return [[new decalSet(),130,0.5,0.5],[new defaultSet(),26,0.500624895,0.863634944],[new defaultSet(),29,0.633937359,0.136361957],[new defaultSet(),29,0.36731267,0.136362553],[new propertiesSet(),6,0.500624895,0.499996305],[new defaultSet(),17,0.700593948,0.681813836],[new defaultSet(),18,0.700593948,0.318178773],[new defaultSet(),18,0.30065608,0.318178773],[new defaultSet(),19,0.30065608,0.681813836],[new defaultSet(),41,0.36731267,0.409087539],[new defaultSet(),41,0.633937359,0.409087539],[new defaultSet(),41,0.633937359,0.590904951],[new defaultSet(),41,0.36731267,0.590904951],[new defaultSet(),41,0.500624895,0.409087539],[new defaultSet(),41,0.500624895,0.590904951]];
            }
            if(param2 == -8 && param3 == 1)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),2,0.301280975,0.136361241],[new defaultSet(),2,0.701218605,0.863631129],[new defaultSet(),34,0.50124979,0.22727263],[new defaultSet(),34,0.50124979,0.95454216],[new defaultSet(),36,0.701218605,0.136364102],[new defaultSet(),36,0.301280975,0.863634706],[new defaultSet(),20,0.434594154,0.409087539],[new defaultSet(),20,0.634562492,0.590904951],[new defaultSet(),19,0.56790638,0.590904951],[new defaultSet(),17,0.367937565,0.409087539],[new defaultSet(),13,0.301280975,0.590904951],[new defaultSet(),13,0.301280975,0.499996305],[new defaultSet(),13,0.50124979,0.499996305],[new defaultSet(),13,0.50124979,0.409087539]];
            }
            if(param2 == -2 && param3 == -7)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),2,0.500312448,0.136391163],[new defaultSet(),2,0.500312448,0.863661289],[new defaultSet(),34,0.700281382,0.227299213],[new defaultSet(),34,0.700281382,0.954574108],[new defaultSet(),17,0.300343752,0.136391163],[new defaultSet(),17,0.300343752,0.863661289]];
            }
            if(param2 == 1 && param3 == 4)
            {
               return [[new decalSet(),115,0.5,0.5],[new defaultSet(),2,0.499843836,0.136350155],[new defaultSet(),2,0.499843836,0.863619804],[new defaultSet(),34,0.699812531,0.227257252],[new defaultSet(),34,0.299875021,0.95453167],[new defaultSet(),18,0.299875021,0.136350155],[new defaultSet(),18,0.699812531,0.863619804],[new defaultSet(),18,0.699812531,0.772711277],[new defaultSet(),18,0.699812531,0.681802273],[new defaultSet(),23,0.699812531,0.590893745],[new defaultSet(),41,0.499843836,0.227258682],[new defaultSet(),41,0.499843836,0.772711277],[new defaultSet(),41,0.499843836,0.499985218]];
            }
            if(param2 == -9 && param3 == -5)
            {
               return [[new decalSet(),158,0.5,0.5],[new defaultSet(),26,0.234781265,0.318199635],[new defaultSet(),34,0.834688187,0.772748947],[new defaultSet(),34,0.10146904,0.772745609],[new defaultSet(),36,0.10146904,0.136387348],[new defaultSet(),6,0.568062782,0.409112453],[new defaultSet(),17,0.10146904,0.590927601],[new defaultSet(),17,0.10146904,0.409110069],[new defaultSet(),17,0.301437378,0.136383533],[new defaultSet(),17,0.434750557,0.136383533],[new defaultSet(),19,0.834688187,0.227292538],[new defaultSet(),19,0.834688187,0.409110069],[new defaultSet(),19,0.168125153,0.136383533],[new defaultSet(),19,0.10146904,0.318201065],[new defaultSet(),20,0.10146904,0.227292538],[new defaultSet(),20,0.10146904,0.500018597],[new defaultSet(),20,0.234781265,0.136383533],[new defaultSet(),17,0.368093491,0.136383533],[new defaultSet(),18,0.834688187,0.318201065],[new defaultSet(),18,0.834688187,0.500018597],[new defaultSet(),18,0.834688187,0.590927601],[new defaultSet(),28,0.501405716,0.681836605],[new propertiesSet()
               ,5,0.501405716,0.500018597]];
            }
            if(param2 == -9 && param3 == -4)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),2,0.10146904,0.227288723],[new defaultSet(),2,0.901343346,0.772741079],[new defaultSet(),41,0.834688187,0.772742271],[new defaultSet(),41,0.168125153,0.227285147],[new defaultSet(),18,0.834688187,0.681832314],[new defaultSet(),18,0.834688187,0.50001502],[new defaultSet(),18,0.168125153,0.50001502],[new defaultSet(),18,0.168125153,0.590923786]];
            }
            if(param2 == -9 && param3 == -3)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),38,0.501405716,0.136372089],[new defaultSet(),36,0.10146904,0.136378288],[new defaultSet(),36,0.901343346,0.136377573],[new defaultSet(),20,0.301437378,0.227284908],[new defaultSet(),20,0.368093491,0.318193913],[new defaultSet(),20,0.701375008,0.772737741],[new defaultSet(),19,0.634718895,0.681828737],[new defaultSet(),19,0.368093491,0.227284908],[new defaultSet(),18,0.634718895,0.772737741],[new defaultSet(),18,0.634718895,0.590919971],[new defaultSet(),17,0.368093491,0.40910244],[new defaultSet(),13,0.834688187,0.500011206],[new defaultSet(),13,0.834688187,0.590919971],[new defaultSet(),13,0.10146904,0.590919971],[new defaultSet(),13,0.10146904,0.681828737],[new defaultSet(),13,0.10146904,0.772737741],[new defaultSet(),13,0.434750557,0.590919971],[new defaultSet(),13,0.501405716,0.590919971],[new defaultSet(),13,0.568062782,0.500011206],[new defaultSet(),13,0.568062782,0.40910244],[new defaultSet(),13,0.434750557,0.500011206],[new defaultSet()
               ,13,0.501405716,0.500014305],[new defaultSet(),13,0.434750557,0.40910244]];
            }
            if(param2 == -8 && param3 == -2)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),2,0.50124979,0.227281213],[new defaultSet(),2,0.50124979,0.772733808],[new defaultSet(),36,0.10131216,0.863645315],[new defaultSet(),29,0.10131216,0.136368275],[new defaultSet(),38,0.16796875,0.500006437],[new defaultSet(),20,0.767874718,0.318189979],[new defaultSet(),20,0.23462534,0.681825042],[new defaultSet(),19,0.701218605,0.409098864],[new defaultSet(),19,0.301280975,0.590916157],[new defaultSet(),17,0.23462534,0.590916157],[new defaultSet(),17,0.767874718,0.409098864]];
            }
            if(param2 == -9 && param3 == -2)
            {
               return [[new decalSet(),139,0.5,0.5],[new defaultSet(),28,0.434750557,0.500008464],[new propertiesSet(),5,0.501405716,0.318186402],[new defaultSet(),34,0.234781265,0.954553962],[new defaultSet(),34,0.10146904,0.77273047],[new defaultSet(),17,0.10146904,0.590916157],[new defaultSet(),17,0.301437378,0.863642454],[new defaultSet(),17,0.76803112,0.863642454],[new defaultSet(),18,0.10146904,0.772733808],[new defaultSet(),18,0.701375008,0.863642454],[new defaultSet(),20,0.834688187,0.863642454],[new defaultSet(),20,0.168125153,0.863642454],[new defaultSet(),16,0.634718895,0.681825042],[new defaultSet(),16,0.76803112,0.409098864],[new defaultSet(),13,0.234781265,0.590916157],[new defaultSet(),13,0.301437378,0.681825042],[new defaultSet(),13,0.301437378,0.409098864],[new defaultSet(),13,0.168125153,0.227281213],[new defaultSet(),13,0.301437378,0.136372328],[new defaultSet(),13,0.434750557,0.136372328],[new defaultSet(),13,0.634718895,0.136372328],[new defaultSet(),13,0.434750557,0.772733808],[new defaultSet()
               ,2,0.368093491,0.409098864],[new defaultSet(),2,0.368093491,0.590916157]];
            }
            if(param2 == -9 && param3 == 1)
            {
               return [[new decalSet(),160,0.5,0.5],[new defaultSet(),25,0.234781265,0.590907931],[new defaultSet(),34,0.234781265,0.954542637],[new defaultSet(),33,0.10146904,0.681814313],[new defaultSet(),33,0.234781265,0.136361837],[new propertiesSet(),1,0.568062782,0.681810021],[new defaultSet(),5,0.301437378,0.318179369],[new defaultSet(),18,0.368093491,0.136361241],[new defaultSet(),18,0.76803112,0.863631129],[new defaultSet(),20,0.301437378,0.136361241],[new defaultSet(),20,0.168125153,0.863631129],[new defaultSet(),17,0.10146904,0.590904951],[new defaultSet(),17,0.10146904,0.772722483],[new defaultSet(),17,0.301437378,0.863631129],[new defaultSet(),20,0.834688187,0.863631129],[new defaultSet(),20,0.701375008,0.863631129],[new propertiesSet(),5,0.568062782,0.227270007],[new defaultSet(),28,0.568062782,0.499996305]];
            }
            if(param2 == -7 && param3 == 1)
            {
               return [[new decalSet(),136,0.5,0.5],[new defaultSet(),38,0.301125526,0.499995351],[new defaultSet(),38,0.701062679,0.499999642],[new defaultSet(),41,0.834374905,0.863628387],[new defaultSet(),41,0.167812347,0.863628387],[new defaultSet(),22,0.501093864,0.318180919],[new defaultSet(),17,0.101156712,0.863631129],[new defaultSet(),17,0.901031494,0.863631129],[new defaultSet(),20,0.767718315,0.772722483],[new defaultSet(),18,0.234468937,0.863631129]];
            }
            if(param2 == -7 && param3 == -2)
            {
               return [[new decalSet(),137,0.5,0.5],[new defaultSet(),29,0.367781162,0.500007153],[new defaultSet(),29,0.63440609,0.500007749],[new defaultSet(),36,0.367781162,0.136375427],[new defaultSet(),36,0.167812347,0.136370897],[new defaultSet(),17,0.301125526,0.136372328],[new defaultSet(),20,0.234468937,0.136372328],[new defaultSet(),20,0.434437752,0.681825042],[new defaultSet(),20,0.367781162,0.681825042],[new defaultSet(),19,0.567749977,0.681825042],[new defaultSet(),19,0.63440609,0.681825042],[new defaultSet(),18,0.63440609,0.590916157],[new defaultSet(),18,0.434437752,0.590916157],[new defaultSet(),17,0.367781162,0.590916157],[new defaultSet(),17,0.567749977,0.590916157]];
            }
            if(param2 == -8 && param3 == -7)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),17,0.56790638,0.227300167],[new defaultSet(),17,0.56790638,0.318208694],[new defaultSet(),17,0.767874718,0.318208694],[new defaultSet(),18,0.434594154,0.681843758],[new defaultSet(),18,0.23462534,0.681843758],[new defaultSet(),20,0.434594154,0.772752285],[new defaultSet(),2,0.901187897,0.136391163],[new defaultSet(),2,0.901187897,0.863661289],[new defaultSet(),2,0.834531307,0.318208694],[new defaultSet(),2,0.834531307,0.681843758],[new defaultSet(),13,0.767874718,0.409117699],[new defaultSet(),13,0.767874718,0.59093523],[new defaultSet(),13,0.701218605,0.409117699],[new defaultSet(),13,0.701218605,0.59093523],[new defaultSet(),13,0.834531307,0.136391163],[new defaultSet(),13,0.767874718,0.136391163],[new defaultSet(),13,0.834531307,0.863661289],[new defaultSet(),13,0.767874718,0.863661289],[new defaultSet(),13,0.634562492,0.500026226]];
            }
            if(param2 == -7 && param3 == -7)
            {
               return [[new decalSet(),137,0.5,0.5],[new defaultSet(),20,0.234468937,0.136391163],[new defaultSet(),20,0.301125526,0.136391163],[new defaultSet(),19,0.167812347,0.136391163],[new defaultSet(),21,0.367781162,0.500026226],[new defaultSet(),18,0.434437752,0.59093523],[new defaultSet(),18,0.434437752,0.681843758],[new defaultSet(),17,0.367781162,0.59093523],[new defaultSet(),17,0.367781162,0.681843758],[new defaultSet(),19,0.301125526,0.59093523],[new defaultSet(),41,0.501093864,0.318208694],[new defaultSet(),41,0.567749977,0.227300167],[new defaultSet(),41,0.63440609,0.227300167],[new defaultSet(),41,0.63440609,0.318208694],[new defaultSet(),41,0.567749977,0.409117699],[new defaultSet(),41,0.63440609,0.500026226],[new defaultSet(),41,0.501093864,0.681843758],[new defaultSet(),41,0.63440609,0.681843758],[new defaultSet(),41,0.701062679,0.681843758],[new defaultSet(),41,0.834374905,0.59093523],[new defaultSet(),41,0.834374905,0.409117699],[new defaultSet(),41,0.767718315,0.318208694],[new defaultSet()
               ,2,0.501093864,0.500026226],[new defaultSet(),2,0.501093864,0.59093523]];
            }
            if(param2 == -4 && param3 == -8)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),29,0.700593948,0.68185091],[new defaultSet(),29,0.30065608,0.681846142],[new propertiesSet(),5,0.500624895,0.227303505],[new defaultSet(),28,0.500624895,0.500030041]];
            }
            if(param2 == -3 && param3 == -8)
            {
               return [[new decalSet(),141,0.5,0.5],[new defaultSet(),2,0.567124844,0.500030041],[new defaultSet(),38,0.900406361,0.409117222],[new defaultSet(),38,0.700437546,0.136397362],[new defaultSet(),21,0.367156267,0.500030041],[new defaultSet(),17,0.367156267,0.590939045],[new defaultSet(),19,0.300500154,0.590939045],[new defaultSet(),19,0.433812618,0.590939045],[new defaultSet(),19,0.433812618,0.136395454],[new defaultSet(),19,0.633781195,0.136395454],[new defaultSet(),18,0.367156267,0.136395454],[new defaultSet(),20,0.900406361,0.318212509],[new defaultSet(),17,0.900406361,0.500030041],[new defaultSet(),41,0.500468731,0.318212509],[new defaultSet(),41,0.633781195,0.318212509],[new defaultSet(),41,0.700437546,0.409121037],[new defaultSet(),41,0.767093897,0.500030041]];
            }
            if(param2 == -5 && param3 == -8)
            {
               return [[new decalSet(),140,0.5,0.5],[new defaultSet(),26,0.234156609,0.318211079],[new defaultSet(),41,0.100843906,0.681848526],[new defaultSet(),41,0.634093761,0.136391163],[new defaultSet(),41,0.100843906,0.13639307],[new defaultSet(),17,0.167500019,0.136395454],[new defaultSet(),17,0.300812721,0.136395454],[new defaultSet(),17,0.500781059,0.136398315],[new defaultSet(),17,0.100843906,0.409121037],[new defaultSet(),17,0.100843906,0.227303505],[new defaultSet(),17,0.100843906,0.590939045],[new defaultSet(),22,0.500781059,0.500030041],[new defaultSet(),17,0.367468834,0.136395454],[new defaultSet(),18,0.234156609,0.136395454],[new defaultSet(),18,0.567437172,0.136395454],[new defaultSet(),19,0.434124947,0.136395454],[new defaultSet(),19,0.100843906,0.318212509],[new defaultSet(),19,0.100843906,0.500030041],[new defaultSet(),2,0.634093761,0.318212509],[new defaultSet(),2,0.367468834,0.318212509]];
            }
            if(param2 == -3 && param3 == -7)
            {
               return [[new decalSet(),149,0.5,0.5],[new propertiesSet(),5,0.567124844,0.318211079],[new defaultSet(),28,0.633781195,0.500030041],[new defaultSet(),32,0.233843565,0.681844711],[new defaultSet(),33,0.767093897,0.68184042],[new defaultSet(),33,0.233843565,0.318205357],[new defaultSet(),17,0.167187452,0.863661289],[new defaultSet(),17,0.233843565,0.863661289],[new defaultSet(),17,0.767093897,0.863661289],[new defaultSet(),18,0.10053134,0.59093523],[new defaultSet(),18,0.10053134,0.681843281],[new defaultSet(),20,0.10053134,0.772752285],[new defaultSet(),20,0.300500154,0.863661289],[new defaultSet(),20,0.700437546,0.863661289],[new defaultSet(),19,0.83375001,0.863661289]];
            }
            if(param2 == -5 && param3 == -7)
            {
               return [[new decalSet(),152,0.5,0.5],[new defaultSet(),32,0.767405987,0.681844711],[new defaultSet(),34,0.434124947,0.954568863],[new defaultSet(),34,0.634093761,0.954573631],[new defaultSet(),33,0.500781059,0.500023365],[new defaultSet(),17,0.500781059,0.863661289],[new defaultSet(),17,0.567437172,0.863661289]];
            }
            if(param2 == -6 && param3 == -7)
            {
               return [[new decalSet(),154,0.5,0.5],[new defaultSet(),28,0.500937462,0.50002861],[new propertiesSet(),5,0.500937462,0.318208694],[new defaultSet(),2,0.500937462,0.772752285],[new defaultSet(),2,0.500937462,0.227300167],[new defaultSet(),36,0.500937462,0.13639164],[new defaultSet(),36,0.500937462,0.863659859],[new defaultSet(),19,0.434281349,0.500026226],[new defaultSet(),20,0.567593575,0.500026226],[new defaultSet(),18,0.434281349,0.681843758],[new defaultSet(),18,0.500937462,0.681843758],[new defaultSet(),18,0.567593575,0.227300167],[new defaultSet(),18,0.567593575,0.318208694],[new defaultSet(),20,0.434281349,0.318208694],[new defaultSet(),20,0.434281349,0.227300167],[new defaultSet(),17,0.500937462,0.318208694],[new defaultSet(),17,0.567593575,0.681843758],[new defaultSet(),17,0.567593575,0.772752285],[new defaultSet(),17,0.434281349,0.772752285],[new defaultSet(),36,0.634249687,0.681843758],[new defaultSet(),36,0.700906277,0.500026226],[new defaultSet(),36,0.700906277,0.227300167],[new defaultSet()
               ,36,0.634249687,0.0454821587],[new defaultSet(),36,0.434281349,0.0454821587],[new defaultSet(),36,0.767562389,0.409117699],[new defaultSet(),36,0.634249687,0.863661289]];
            }
            if(param2 == -1 && param3 == -7)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),41,0.300187469,0.681843758],[new defaultSet(),41,0.36684382,0.681843758],[new defaultSet(),41,0.433499992,0.681843758],[new defaultSet(),41,0.500156224,0.681843758],[new defaultSet(),41,0.566812515,0.681843758],[new defaultSet(),41,0.633468747,0.681843758],[new defaultSet(),41,0.700125039,0.681843758]];
            }
            if(param2 == 0 && param3 == -7)
            {
               return [[new decalSet(),125,0.5,0.5],[new propertiesSet(),5,0.5,0.409119606],[new defaultSet(),28,0.5,0.500030041],[new defaultSet(),2,0.5,0.227300167],[new defaultSet(),2,0.5,0.772752285],[new defaultSet(),25,0.833281279,0.590931416],[new defaultSet(),17,0.89993751,0.136391163],[new defaultSet(),17,0.833281279,0.136391163],[new defaultSet(),17,0.833281279,0.863661289],[new defaultSet(),17,0.233374998,0.681843758],[new defaultSet(),17,0.100062512,0.136391163],[new defaultSet(),17,0.233374998,0.863661289],[new defaultSet(),19,0.89993751,0.863661289],[new defaultSet(),19,0.166718751,0.136391163],[new defaultSet(),19,0.100062512,0.863661289],[new defaultSet(),20,0.166718751,0.863661289],[new defaultSet(),20,0.766624987,0.318208694]];
            }
            if(param2 == 1 && param3 == -6)
            {
               return [[new decalSet(),131,0.5,0.5],[new defaultSet(),37,0.499843836,0.590929985],[new defaultSet(),33,0.0999062061,0.590934277],[new defaultSet(),33,0.899781227,0.590931416],[new defaultSet(),33,0.499843836,0.50001955],[new propertiesSet(),6,0.499843836,0.409113407],[new defaultSet(),19,0.299875021,0.500022411],[new defaultSet(),19,0.699812531,0.500022411],[new defaultSet(),20,0.299875021,0.590931416],[new defaultSet(),17,0.299875021,0.681839943],[new defaultSet(),17,0.699812531,0.590931416],[new defaultSet(),18,0.699812531,0.681839943]];
            }
            if(param2 == -7 && param3 == -6)
            {
               return [[new decalSet(),130,0.5,0.5],[new defaultSet(),43,0.901031494,0.863658428],[new defaultSet(),43,0.101156712,0.863660812],[new defaultSet(),43,0.501093864,0.863658428],[new defaultSet(),2,0.501093864,0.500022411],[new defaultSet(),21,0.501093864,0.31820488],[new defaultSet(),23,0.501093864,0.772748947],[new defaultSet(),41,0.367781162,0.500022411],[new defaultSet(),41,0.63440609,0.500022411],[new defaultSet(),41,0.501093864,0.409113407],[new defaultSet(),41,0.501093864,0.590931416]];
            }
            if(param2 == 1 && param3 == -7)
            {
               return [[new decalSet(),151,0.5,0.5],[new defaultSet(),32,0.766468763,0.318207741],[new defaultSet(),34,0.899781227,0.500030041],[new defaultSet(),34,0.366531253,0.227297306],[new defaultSet(),36,0.63315618,0.136392117],[new defaultSet(),20,0.899781227,0.318208694],[new defaultSet(),18,0.899781227,0.500026226],[new defaultSet(),18,0.699812531,0.136391163],[new defaultSet(),19,0.433187485,0.136391163]];
            }
            if(param2 == 1 && param3 == -5)
            {
               return [[new decalSet(),142,0.5,0.5],[new defaultSet(),34,0.433187485,0.954566002],[new defaultSet(),33,0.766468763,0.681839466],[new defaultSet(),33,0.766468763,0.500022411],[new defaultSet(),33,0.63315618,0.681834221],[new defaultSet(),22,0.499843836,0.500018597],[new defaultSet(),20,0.566499949,0.318201065],[new defaultSet(),20,0.63315618,0.318201065],[new defaultSet(),18,0.366531253,0.590927601],[new defaultSet(),18,0.433187485,0.590927601],[new defaultSet(),18,0.566499949,0.86365366],[new defaultSet(),18,0.499843836,0.86365366],[new defaultSet(),20,0.63315618,0.86365366],[new defaultSet(),41,0.766468763,0.318201065],[new defaultSet(),41,0.299875021,0.681836605],[new defaultSet(),41,0.499843836,0.681836605],[new defaultSet(),41,0.566499949,0.590927601]];
            }
            if(param2 == -7 && param3 == -4)
            {
               return [[new decalSet(),161,0.5,0.5],[new defaultSet(),34,0.63440609,0.954556465],[new defaultSet(),2,0.567749977,0.50001502],[new defaultSet(),41,0.834374905,0.772742271],[new defaultSet(),16,0.701062679,0.863650084],[new propertiesSet(),1,0.501093864,0.50001502],[new defaultSet(),5,0.367781162,0.590926409],[new defaultSet(),23,0.367781162,0.318197727],[new defaultSet(),23,0.567749977,0.318197727],[new defaultSet(),20,0.434437752,0.863650084],[new defaultSet(),20,0.101156712,0.590923786],[new defaultSet(),19,0.101156712,0.50001502],[new defaultSet(),18,0.101156712,0.681832314],[new defaultSet(),18,0.567749977,0.863650084],[new defaultSet(),41,0.167812347,0.590923786],[new defaultSet(),41,0.301125526,0.681832314],[new defaultSet(),41,0.434437752,0.681832314],[new defaultSet(),41,0.567749977,0.590923786],[new defaultSet(),41,0.501093864,0.681832314],[new defaultSet(),41,0.234468937,0.681832314],[new defaultSet(),41,0.301125526,0.590923786]];
            }
            if(param2 == -7 && param3 == -5)
            {
               return [[new decalSet(),134,0.5,0.5],[new defaultSet(),28,0.63440609,0.500017166],[new propertiesSet(),5,0.501093864,0.318201065],[new defaultSet(),33,0.234468937,0.772741795],[new defaultSet(),33,0.767718315,0.772747993],[new defaultSet(),32,0.501093864,0.772745609],[new defaultSet(),23,0.434437752,0.409110069],[new defaultSet(),23,0.501093864,0.590927601]];
            }
            if(param2 == -6 && param3 == -5)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),29,0.700906277,0.681839466],[new defaultSet(),29,0.300969124,0.681839943]];
            }
            if(param2 == -5 && param3 == -5)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),2,0.500781059,0.227292538],[new defaultSet(),2,0.500781059,0.772744656],[new defaultSet(),36,0.900718689,0.136387348],[new defaultSet(),36,0.900718689,0.863655567],[new defaultSet(),42,0.834062576,0.500017643],[new defaultSet(),17,0.767405987,0.318201065],[new defaultSet(),17,0.700749874,0.409110069],[new defaultSet(),17,0.767405987,0.409110069],[new defaultSet(),17,0.234156609,0.681836605],[new defaultSet(),19,0.300812721,0.590927601],[new defaultSet(),19,0.234156609,0.590929031],[new defaultSet(),19,0.367468834,0.590927601],[new defaultSet(),41,0.567437172,0.409110069],[new defaultSet(),41,0.500781059,0.500018597],[new defaultSet(),41,0.567437172,0.590927601]];
            }
            if(param2 == -2 && param3 == -5)
            {
               return [[new decalSet(),159,0.5,0.5],[new defaultSet(),37,0.566968679,0.500020027],[new defaultSet(),34,0.633625031,0.954561234],[new defaultSet(),33,0.766937494,0.2272892],[new propertiesSet(),2,0.366999984,0.500018597],[new defaultSet(),10,0.833593726,0.500018597],[new defaultSet(),20,0.500312448,0.136383533],[new defaultSet(),20,0.633625031,0.136383533],[new defaultSet(),20,0.833593726,0.590927601],[new defaultSet(),20,0.566968679,0.86365366],[new defaultSet(),20,0.167031288,0.86365366],[new defaultSet(),19,0.833593726,0.772744656],[new defaultSet(),19,0.833593726,0.318201065],[new defaultSet(),19,0.566968679,0.136383533],[new defaultSet(),19,0.100374937,0.86365366],[new defaultSet(),18,0.700281382,0.86365366],[new defaultSet(),18,0.700281382,0.136383533],[new defaultSet(),18,0.766937494,0.136383533],[new defaultSet(),17,0.833593726,0.136383533],[new defaultSet(),17,0.833593726,0.409110069],[new defaultSet(),17,0.833593726,0.227292538],[new defaultSet(),17,0.833593726,0.681836605]];
            }
            if(param2 == -3 && param3 == -5)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),29,0.900406361,0.136386395],[new defaultSet(),29,0.10053134,0.863652706],[new defaultSet(),17,0.567124844,0.681836605],[new defaultSet(),17,0.567124844,0.772744656],[new defaultSet(),17,0.633781195,0.590927601],[new defaultSet(),17,0.300500154,0.409110069],[new defaultSet(),17,0.367156267,0.409110069],[new defaultSet(),20,0.433812618,0.227292538],[new defaultSet(),20,0.433812618,0.318201065],[new defaultSet(),19,0.433812618,0.409110069],[new defaultSet(),19,0.567124844,0.590927601],[new defaultSet(),19,0.700437546,0.590927601],[new defaultSet(),30,0.83375001,0.409110069],[new defaultSet(),30,0.83375001,0.500018597],[new defaultSet(),30,0.900406361,0.86365366]];
            }
            if(param2 == -4 && param3 == -5)
            {
               return [[new decalSet(),137,0.5,0.5],[new defaultSet(),28,0.500624895,0.500020027],[new propertiesSet(),5,0.433968782,0.68183279],[new defaultSet(),38,0.833906174,0.500017166],[new defaultSet(),33,0.700593948,0.318198204],[new defaultSet(),33,0.833906174,0.772746563],[new defaultSet(),17,0.167343855,0.136383533],[new defaultSet(),17,0.30065608,0.136383533],[new defaultSet(),18,0.233999968,0.136383533],[new defaultSet(),18,0.36731267,0.136383533],[new defaultSet(),21,0.36731267,0.500018597],[new defaultSet(),21,0.633937359,0.590927601],[new defaultSet(),20,0.633937359,0.409110069],[new defaultSet(),20,0.36731267,0.590927601],[new defaultSet(),20,0.433968782,0.590927601],[new defaultSet(),19,0.30065608,0.590927601],[new defaultSet(),19,0.567281246,0.409110069],[new defaultSet(),18,0.700593948,0.409110069]];
            }
            if(param2 == -4 && param3 == -4)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),29,0.100687504,0.227291822],[new defaultSet(),29,0.900562763,0.772738218],[new defaultSet(),38,0.500624895,0.86364603],[new defaultSet(),18,0.833906174,0.772741079],[new defaultSet(),18,0.833906174,0.40910387],[new defaultSet(),18,0.833906174,0.68183136],[new defaultSet(),18,0.167343855,0.50001502],[new defaultSet(),18,0.167343855,0.409106255],[new defaultSet(),19,0.167343855,0.318197727],[new defaultSet(),19,0.167343855,0.590923786]];
            }
            if(param2 == 0 && param3 == -5)
            {
               return [[new decalSet(),156,0.5,0.5],[new defaultSet(),2,0.233374998,0.409110069],[new defaultSet(),2,0.5,0.409110069],[new defaultSet(),2,0.766624987,0.409110069],[new defaultSet(),41,0.233374998,0.318200111],[new defaultSet(),41,0.5,0.31820488],[new defaultSet(),41,0.766624987,0.318201065],[new defaultSet(),20,0.366687506,0.0454754829],[new defaultSet(),20,0.5,0.0454754829],[new defaultSet(),19,0.566656232,0.0454754829],[new defaultSet(),17,0.433343738,0.0454754829],[new defaultSet(),17,0.633312523,0.0454754829],[new defaultSet(),17,0.0334062576,0.409110069],[new defaultSet(),17,0.0334062576,0.500018597]];
            }
            if(param2 == 0 && param3 == -4)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),34,0.233374998,0.590924263],[new defaultSet(),34,0.766624987,0.590922117],[new defaultSet(),29,0.100062512,0.500015736],[new defaultSet(),29,0.89993751,0.500014544],[new defaultSet(),17,0.100062512,0.136379957],[new defaultSet(),17,0.100062512,0.227288723],[new defaultSet(),17,0.833281279,0.772741079],[new defaultSet(),17,0.89993751,0.681832314],[new defaultSet(),17,0.89993751,0.772741079],[new defaultSet(),17,0.89993751,0.863650084],[new defaultSet(),19,0.833281279,0.863650084],[new defaultSet(),19,0.100062512,0.318197727],[new defaultSet(),19,0.166718751,0.136379957],[new defaultSet(),20,0.166718751,0.227288723]];
            }
            if(param2 == 0 && param3 == -3)
            {
               return [[new decalSet(),126,0.5,0.5],[new propertiesSet(),5,0.5,0.2272861],[new defaultSet(),28,0.5,0.409099817],[new defaultSet(),38,0.100062512,0.590921879],[new defaultSet(),38,0.89993751,0.590923786],[new defaultSet(),19,0.0334062576,0.681828737],[new defaultSet(),19,0.0334062576,0.590920925],[new defaultSet(),19,0.0334062576,0.500011206],[new defaultSet(),19,0.966593742,0.590919971],[new defaultSet(),19,0.966593742,0.500014305],[new defaultSet(),22,0.366687506,0.681828737],[new defaultSet(),21,0.699968755,0.590919971],[new defaultSet(),17,0.966593742,0.40910244],[new defaultSet(),17,0.0334062576,0.40910244],[new defaultSet(),18,0.966593742,0.681828737],[new defaultSet(),18,0.699968755,0.681828737],[new defaultSet(),18,0.766624987,0.681828737],[new defaultSet(),18,0.0334062576,0.318193913],[new defaultSet(),20,0.966593742,0.318193913],[new defaultSet(),41,0.233374998,0.772737741],[new defaultSet(),41,0.300031245,0.772737741],[new defaultSet(),41,0.766624987,0.772737741],[new defaultSet()
               ,41,0.699968755,0.772737741],[new defaultSet(),41,0.433343738,0.772737741],[new defaultSet(),41,0.566656232,0.772737741]];
            }
            if(param2 == -3 && param3 == -3)
            {
               return [[new decalSet(),141,0.5,0.5],[new defaultSet(),37,0.767093897,0.318192482],[new defaultSet(),36,0.700437546,0.136377573],[new defaultSet(),36,0.900406361,0.500011683],[new defaultSet(),36,0.433812618,0.136372089],[new defaultSet(),17,0.367156267,0.136376143],[new defaultSet(),17,0.900406361,0.318193913],[new defaultSet(),18,0.633781195,0.136376143],[new defaultSet(),18,0.900406361,0.40910244],[new defaultSet(),21,0.567124844,0.681828737],[new defaultSet(),23,0.433812618,0.500011206]];
            }
            if(param2 == -6 && param3 == -2)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),34,0.300969124,0.772733808],[new defaultSet(),34,0.700906277,0.772731066],[new defaultSet(),36,0.500937462,0.681827784]];
            }
            if(param2 == -5 && param3 == -2)
            {
               return [[new decalSet(),145,0.5,0.5],[new propertiesSet(),5,0.434124947,0.318186998],[new defaultSet(),28,0.567437172,0.500011086],[new defaultSet(),32,0.567437172,0.681823254],[new defaultSet(),42,0.367468834,0.681824207],[new defaultSet(),42,0.367468834,0.318186402],[new defaultSet(),17,0.567437172,0.318189979],[new defaultSet(),17,0.634093761,0.318189979],[new defaultSet(),18,0.634093761,0.409098864],[new defaultSet(),19,0.567437172,0.409098864]];
            }
            if(param2 == -7 && param3 == -1)
            {
               return [[new decalSet(),131,0.5,0.5],[new defaultSet(),37,0.501093864,0.499999762],[new defaultSet(),42,0.301125526,0.590914369],[new defaultSet(),42,0.701062679,0.590911686],[new defaultSet(),38,0.501093864,0.590915322],[new propertiesSet(),6,0.501093864,0.500003755],[new defaultSet(),17,0.0345001221,0.409094989],[new defaultSet(),17,0.0345001221,0.500003755],[new defaultSet(),17,0.96768713,0.409094989],[new defaultSet(),18,0.96768713,0.500003755],[new defaultSet(),19,0.96768713,0.590912461],[new defaultSet(),19,0.0345001221,0.590912461]];
            }
            if(param2 == -7 && param3 == 0)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.367781162,0.5],[new defaultSet(),2,0.63440609,0.5],[new defaultSet(),22,0.434437752,0.318184674],[new defaultSet(),20,0.701062679,0.318182498],[new defaultSet(),17,0.701062679,0.227273747],[new defaultSet(),30,0.167812347,0.227273747],[new defaultSet(),30,0.767718315,0.227273747],[new defaultSet(),12,0.234468937,0.590908766],[new defaultSet(),12,0.767718315,0.590908766],[new defaultSet(),13,0.234468937,0.409091264],[new defaultSet(),13,0.167812347,0.409091264],[new defaultSet(),13,0.167812347,0.5],[new defaultSet(),13,0.501093864,0.409091264],[new defaultSet(),13,0.767718315,0.409091264],[new defaultSet(),13,0.834374905,0.5],[new defaultSet(),13,0.501093864,0.590908766],[new defaultSet(),13,0.434437752,0.590908766]];
            }
            if(param2 == -4 && param3 == -1)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),2,0.500624895,0.227277517],[new defaultSet(),2,0.500624895,0.772729993],[new defaultSet(),29,0.500624895,0.863638937],[new defaultSet(),29,0.500624895,0.136368334],[new defaultSet(),17,0.567281246,0.227277517],[new defaultSet(),17,0.567281246,0.318186164],[new defaultSet(),17,0.433968782,0.681821227],[new defaultSet(),18,0.433968782,0.772731602],[new defaultSet(),18,0.233999968,0.681821227],[new defaultSet(),19,0.767250061,0.318187714]];
            }
            if(param2 == -5 && param3 == -1)
            {
               return [[new decalSet(),134,0.5,0.5],[new defaultSet(),33,0.434124947,0.590909779],[new defaultSet(),33,0.434124947,0.409094989],[new defaultSet(),33,0.634093761,0.500000477],[new defaultSet(),36,0.500781059,0.500004411],[new defaultSet(),20,0.167500019,0.318186164],[new defaultSet(),20,0.167500019,0.409094989],[new defaultSet(),19,0.167500019,0.500003755],[new defaultSet(),17,0.167500019,0.500003755]];
            }
            if(param2 == -6 && param3 == 3)
            {
               return [[new decalSet(),161,0.5,0.5],[new defaultSet(),37,0.500937462,0.499984741],[new propertiesSet(),2,0.434281349,0.318171263],[new defaultSet(),10,0.500937462,0.863623857],[new defaultSet(),17,0.101000309,0.409080029],[new defaultSet(),17,0.101000309,0.59089756],[new defaultSet(),17,0.567593575,0.863623857],[new defaultSet(),19,0.101000309,0.499988794],[new defaultSet(),19,0.101000309,0.681806087],[new defaultSet(),19,0.634249687,0.863623857],[new defaultSet(),20,0.101000309,0.772715092],[new defaultSet(),20,0.434281349,0.863623857],[new defaultSet(),41,0.234312534,0.227262259],[new defaultSet(),41,0.234312534,0.499988794],[new defaultSet(),41,0.367625237,0.681806087],[new defaultSet(),41,0.500937462,0.681806087],[new defaultSet(),41,0.634249687,0.681806087],[new defaultSet(),41,0.700906277,0.59089756],[new defaultSet(),41,0.767562389,0.409080029],[new defaultSet(),41,0.234312534,0.59089756],[new defaultSet(),2,0.167656422,0.772715092],[new defaultSet(),2,0.834218502,0.772715092],[new defaultSet()
               ,16,0.634249687,0.59089756],[new defaultSet(),16,0.367625237,0.681806087]];
            }
            if(param2 == -6 && param3 == 2)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),2,0.101000309,0.227266073],[new defaultSet(),2,0.900875092,0.772718906],[new defaultSet(),29,0.167656422,0.22726655],[new defaultSet(),29,0.834218502,0.77272296],[new defaultSet(),36,0.500937462,0.590904713],[new defaultSet(),36,0.500937462,0.40908742],[new defaultSet(),20,0.300969124,0.681809902],[new defaultSet(),19,0.767562389,0.318175077],[new defaultSet(),17,0.700906277,0.318175077],[new defaultSet(),17,0.234312534,0.681809902]];
            }
            if(param2 == -5 && param3 == 0)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),36,0.834062576,0.499996305],[new defaultSet(),36,0.167500019,0.499996305],[new defaultSet(),17,0.100843906,0.136364996],[new defaultSet(),17,0.100843906,0.318182498],[new defaultSet(),17,0.900718689,0.5],[new defaultSet(),17,0.900718689,0.681817472],[new defaultSet(),18,0.100843906,0.227273747],[new defaultSet(),18,0.900718689,0.590908766],[new defaultSet(),41,0.367468834,0.590908766],[new defaultSet(),41,0.634093761,0.590908766],[new defaultSet(),41,0.367468834,0.409091264],[new defaultSet(),41,0.634093761,0.409091264],[new defaultSet(),2,0.167500019,0.136364996],[new defaultSet(),2,0.900718689,0.863635004]];
            }
            if(param2 == -6 && param3 == 1)
            {
               return [[new decalSet(),137,0.5,0.5],[new propertiesSet(),5,0.500937462,0.318182707],[new defaultSet(),28,0.500937462,0.499997616],[new defaultSet(),25,0.500937462,0.499999166],[new defaultSet(),42,0.367625237,0.409086704],[new defaultSet(),42,0.634249687,0.409083962],[new defaultSet(),43,0.367625237,0.49999547],[new defaultSet(),43,0.634249687,0.499999881],[new defaultSet(),17,0.300969124,0.13636291],[new defaultSet(),17,0.234312534,0.136361837],[new defaultSet(),18,0.167656422,0.136361241],[new defaultSet(),20,0.367625237,0.136361241]];
            }
            if(param2 == -5 && param3 == 1)
            {
               return [[new decalSet(),146,0.5,0.5],[new defaultSet(),32,0.500781059,0.499994397],[new defaultSet(),33,0.300812721,0.318179369],[new defaultSet(),33,0.700749874,0.3181777],[new defaultSet(),20,0.167500019,0.863631129],[new defaultSet(),19,0.834062576,0.863631129],[new defaultSet(),17,0.900718689,0.863631129],[new defaultSet(),17,0.234156609,0.863631129],[new defaultSet(),19,0.100843906,0.863631129],[new defaultSet(),18,0.767405987,0.863631129],[new defaultSet(),41,0.300812721,0.681813836],[new defaultSet(),41,0.700749874,0.681813836],[new defaultSet(),41,0.567437172,0.772722483],[new defaultSet(),41,0.500781059,0.772722483],[new defaultSet(),41,0.434124947,0.772722483]];
            }
            if(param2 == -1 && param3 == -2)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),26,0.500156224,0.136371374],[new defaultSet(),26,0.500156224,0.863645554],[new defaultSet(),20,0.233531296,0.681825042],[new defaultSet(),18,0.766781211,0.318189979],[new defaultSet(),23,0.300187469,0.50000751],[new defaultSet(),21,0.700125039,0.590916157]];
            }
            if(param2 == -2 && param3 == -2)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),2,0.300343752,0.681825042],[new defaultSet(),2,0.700281382,0.681825042],[new defaultSet(),43,0.500312448,0.68182373],[new defaultSet(),43,0.366999984,0.681829095],[new defaultSet(),43,0.633625031,0.681826234]];
            }
            if(param2 == 0 && param3 == -2)
            {
               return [[new decalSet(),131,0.5,0.5],[new defaultSet(),37,0.5,0.772732496],[new defaultSet(),36,0.100062512,0.590917468],[new defaultSet(),36,0.89993751,0.59091568],[new defaultSet(),36,0.5,0.590912104],[new defaultSet(),18,0.966593742,0.409098864],[new defaultSet(),18,0.966593742,0.590916157],[new defaultSet(),20,0.966593742,0.50000751],[new defaultSet(),20,0.966593742,0.681825042],[new defaultSet(),36,0.566656232,0.500009775],[new defaultSet(),36,0.433343738,0.500009179],[new defaultSet(),36,0.166718751,0.500008464],[new defaultSet(),36,0.766624987,0.500009179]];
            }
            if(param2 == -3 && param3 == -2)
            {
               return [[new decalSet(),134,0.5,0.5],[new defaultSet(),28,0.633781195,0.500005603],[new propertiesSet(),5,0.500468731,0.409097552],[new defaultSet(),26,0.433812618,0.500003695],[new defaultSet(),38,0.233843565,0.500009298],[new defaultSet(),33,0.767093897,0.500010252],[new defaultSet(),19,0.367156267,0.318189979],[new defaultSet(),19,0.367156267,0.50000751],[new defaultSet(),19,0.433812618,0.681825042],[new defaultSet(),20,0.367156267,0.409098864],[new defaultSet(),20,0.367156267,0.590916157],[new defaultSet(),18,0.367156267,0.681825042],[new defaultSet(),18,0.433812618,0.59091568],[new defaultSet(),18,0.433812618,0.409096479],[new defaultSet(),17,0.433812618,0.318189979]];
            }
            if(param2 == -3 && param3 == -1)
            {
               return [[new decalSet(),135,0.5,0.5],[new defaultSet(),33,0.767093897,0.50000596],[new defaultSet(),33,0.167187452,0.50000155],[new defaultSet(),21,0.567124844,0.409094989],[new defaultSet(),18,0.433812618,0.318186164],[new defaultSet(),20,0.433812618,0.409094989],[new defaultSet(),30,0.300500154,0.318186164],[new defaultSet(),30,0.700437546,0.318186164],[new defaultSet(),30,0.700437546,0.590912461],[new defaultSet(),30,0.300500154,0.590912461]];
            }
            if(param2 == -3 && param3 == 0)
            {
               return [[new decalSet(),126,0.5,0.5],[new defaultSet(),26,0.633781195,0.590910316],[new defaultSet(),26,0.300500154,0.590912521],[new defaultSet(),41,0.367156267,0.590910733],[new defaultSet(),41,0.433812618,0.590904772],[new defaultSet(),41,0.567124844,0.590911806],[new defaultSet(),41,0.500468731,0.590904772],[new defaultSet(),20,0.500468731,0.318182498],[new defaultSet(),20,0.633781195,0.318182498],[new defaultSet(),20,0.633781195,0.409091264],[new defaultSet(),19,0.500468731,0.409091264],[new defaultSet(),18,0.433812618,0.318182498],[new defaultSet(),18,0.433812618,0.409091264],[new defaultSet(),17,0.967062473,0.5],[new defaultSet(),17,0.967062473,0.590908766],[new defaultSet(),2,0.233843565,0.409091264]];
            }
            if(param2 == -3 && param3 == 1)
            {
               return [[new decalSet(),130,0.5,0.5],[new defaultSet(),28,0.500468731,0.499993801],[new propertiesSet(),5,0.500468731,0.318181157],[new defaultSet(),43,0.167187452,0.772720695],[new defaultSet(),42,0.83375001,0.772721767],[new defaultSet(),42,0.83375001,0.681814075],[new defaultSet(),42,0.767093897,0.681816339],[new defaultSet(),42,0.767093897,0.772719145],[new defaultSet(),43,0.167187452,0.681813002],[new defaultSet(),43,0.233843565,0.681815386],[new defaultSet(),43,0.233843565,0.772726297],[new defaultSet(),23,0.500468731,0.318178296],[new defaultSet(),21,0.500468731,0.772722483]];
            }
            if(param2 == -3 && param3 == 2)
            {
               return [[new decalSet(),128,0.5,0.5],[new defaultSet(),2,0.233843565,0.681809902],[new defaultSet(),2,0.500468731,0.681809902],[new defaultSet(),2,0.767093897,0.681809902],[new defaultSet(),41,0.300500154,0.681808233],[new defaultSet(),41,0.700437546,0.681806803],[new defaultSet(),19,0.233843565,0.499992609],[new defaultSet(),18,0.500468731,0.499992609],[new defaultSet(),17,0.767093897,0.499992609]];
            }
            if(param2 == -3 && param3 == 3)
            {
               return [[new decalSet(),143,0.5,0.5],[new defaultSet(),32,0.367156267,0.681808233],[new defaultSet(),32,0.633781195,0.681802988],[new defaultSet(),23,0.633781195,0.318171263],[new defaultSet(),21,0.367156267,0.318171263]];
            }
            if(param2 == -2 && param3 == 4)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),29,0.500312448,0.136353016],[new defaultSet(),29,0.500312448,0.863620281],[new defaultSet(),33,0.500312448,0.772707462],[new defaultSet(),33,0.500312448,0.227261543],[new defaultSet(),20,0.233687639,0.681802273],[new defaultSet(),20,0.766937494,0.318167686],[new defaultSet(),19,0.700281382,0.409076214],[new defaultSet(),19,0.766937494,0.409076214],[new defaultSet(),19,0.233687639,0.590893745],[new defaultSet(),18,0.300343752,0.590893745],[new defaultSet(),18,0.366999984,0.590893745],[new defaultSet(),17,0.633625031,0.409076214],[new defaultSet(),2,0.500312448,0.499985218]];
            }
            if(param2 == -3 && param3 == 4)
            {
               return [[new decalSet(),149,0.5,0.5],[new defaultSet(),25,0.233843565,0.7727108],[new defaultSet(),41,0.633781195,0.499988079],[new defaultSet(),41,0.433812618,0.318163395],[new defaultSet(),21,0.633781195,0.318167686],[new defaultSet(),17,0.10053134,0.590893745],[new defaultSet(),17,0.10053134,0.681802273],[new defaultSet(),17,0.700437546,0.863619804],[new defaultSet(),17,0.83375001,0.863619804],[new defaultSet(),18,0.10053134,0.772711277],[new defaultSet(),18,0.167187452,0.863619804],[new defaultSet(),18,0.767093897,0.863619804],[new defaultSet(),20,0.233843565,0.863619804],[new defaultSet(),20,0.300500154,0.863619804],[new defaultSet(),28,0.700437546,0.409076214],[new propertiesSet(),5,0.567124844,0.681802273]];
            }
            if(param2 == -1 && param3 == 4)
            {
               return [[new decalSet(),123,0.5,0.5],[new defaultSet(),26,0.500156224,0.0454435349],[new defaultSet(),26,0.500156224,0.954529762],[new defaultSet(),36,0.500156224,0.227259159],[new defaultSet(),36,0.500156224,0.772707939],[new defaultSet(),17,0.700125039,0.954528809],[new defaultSet(),17,0.633468747,0.954528809],[new defaultSet(),17,0.300187469,0.0454406738],[new defaultSet(),17,0.433499992,0.0454411507],[new defaultSet(),17,0.700125039,0.0454411507],[new defaultSet(),17,0.36684382,0.954528809],[new defaultSet(),18,0.633468747,0.0454411507],[new defaultSet(),18,0.433499992,0.954528809],[new defaultSet(),20,0.36684382,0.0454411507],[new defaultSet(),20,0.566812515,0.0454411507],[new defaultSet(),20,0.300187469,0.954528809],[new defaultSet(),19,0.566812515,0.954528809],[new defaultSet(),16,0.166875005,0.954528809],[new defaultSet(),2,0.300187469,0.227258682],[new defaultSet(),2,0.766781211,0.772711277]];
            }
            if(param2 == -1 && param3 == 0)
            {
               return [[new decalSet(),160,0.5,0.5],[new defaultSet(),33,0.233531296,0.500002205],[new defaultSet(),33,0.233531296,0.318184733],[new defaultSet(),33,0.233531296,0.681813776],[new defaultSet(),34,0.233531296,0.954542577],[new defaultSet(),34,0.100218773,0.772727847],[new propertiesSet(),2,0.566812515,0.5],[new defaultSet(),10,0.100218773,0.590908766],[new defaultSet(),17,0.300187469,0.136364996],[new defaultSet(),17,0.233531296,0.136364996],[new defaultSet(),17,0.300187469,0.863635004],[new defaultSet(),17,0.766781211,0.863635004],[new defaultSet(),17,0.833437502,0.863635004],[new defaultSet(),19,0.166875005,0.136364996],[new defaultSet(),19,0.36684382,0.136364996],[new defaultSet(),19,0.166875005,0.863635004],[new defaultSet(),19,0.100218773,0.772726238],[new defaultSet(),19,0.700125039,0.863635004],[new defaultSet(),6,0.633468747,0.5]];
            }
            if(param2 == 1 && param3 == 0)
            {
               return [[new decalSet(),159,0.5,0.5],[new defaultSet(),38,0.499843836,0.136366203],[new defaultSet(),38,0.833124995,0.772723615],[new defaultSet(),33,0.699812531,0.500002205],[new propertiesSet(),1,0.433187485,0.5],[new defaultSet(),5,0.63315618,0.59091258],[new defaultSet(),20,0.63315618,0.136364996],[new defaultSet(),20,0.699812531,0.136364996],[new defaultSet(),20,0.833124995,0.136364996],[new defaultSet(),20,0.833124995,0.590908766],[new defaultSet(),20,0.566499949,0.863635004],[new defaultSet(),19,0.833124995,0.227273747],[new defaultSet(),19,0.833124995,0.318182498],[new defaultSet(),19,0.699812531,0.863635004],[new defaultSet(),19,0.166562557,0.863635004],[new defaultSet(),18,0.566499949,0.136364996],[new defaultSet(),18,0.766468763,0.136361182],[new defaultSet(),17,0.0999062061,0.863635004],[new defaultSet(),17,0.833124995,0.409091264],[new defaultSet(),17,0.833124995,0.5],[new defaultSet(),17,0.833124995,0.681817472],[new defaultSet(),41,0.433187485,0.318182498],[new defaultSet()
               ,41,0.566499949,0.318182498],[new defaultSet(),41,0.433187485,0.681817472],[new defaultSet(),41,0.566499949,0.681817472]];
            }
            if(param2 == 0 && param3 == -1)
            {
               return [[new decalSet(),127,0.5,0.5],[new defaultSet(),2,0.366687506,0.500003755],[new defaultSet(),2,0.633312523,0.500003755],[new defaultSet(),43,0.5,0.500002503],[new defaultSet(),43,0.433343738,0.500006199],[new defaultSet(),43,0.566656232,0.500001848],[new defaultSet(),21,0.366687506,0.318186164],[new defaultSet(),23,0.633312523,0.318186164],[new defaultSet(),41,0.5,0.227277517],[new defaultSet(),41,0.5,0.318186164],[new defaultSet(),41,0.233374998,0.409094989],[new defaultSet(),41,0.766624987,0.409094989]];
            }
            if(param2 == 0 && param3 == 0)
            {
               return [[new decalSet(),122,0.5,0.5],[new propertiesSet(),5,0.5,0.31817919],[new defaultSet(),28,0.5,0.499998093],[new defaultSet(),26,0.5,0.500003755],[new defaultSet(),29,0.166718751,0.500000179],[new defaultSet(),29,0.833281279,0.500000179],[new defaultSet(),21,0.5,0.318182498],[new defaultSet(),21,0.5,0.772726238],[new defaultSet(),41,0.433343738,0.5],[new defaultSet(),41,0.5,0.409091264],[new defaultSet(),41,0.566656232,0.5],[new defaultSet(),41,0.5,0.590908766]];
            }
            if(param2 == 0 && param3 == 1)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),33,0.5,0.499992728],[new defaultSet(),29,0.100062512,0.863634229],[new defaultSet(),29,0.89993751,0.863634229],[new defaultSet(),17,0.89993751,0.136361241],[new defaultSet(),17,0.89993751,0.227270007],[new defaultSet(),17,0.100062512,0.227270007],[new defaultSet(),17,0.100062512,0.136361241],[new defaultSet(),19,0.100062512,0.318178773],[new defaultSet(),19,0.89993751,0.318178773],[new defaultSet(),18,0.89993751,0.499996305],[new defaultSet(),18,0.100062512,0.409083724],[new defaultSet(),18,0.89993751,0.409087539]];
            }
            if(param2 == 0 && param3 == 3)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),2,0.100062512,0.227262259],[new defaultSet(),2,0.89993751,0.772715092],[new defaultSet(),43,0.166718751,0.227261782],[new defaultSet(),43,0.833281279,0.772714376],[new defaultSet(),43,0.833281279,0.681807518],[new defaultSet(),43,0.89993751,0.681810141],[new defaultSet(),43,0.166718751,0.318170071],[new defaultSet(),43,0.100062512,0.318169117],[new defaultSet(),19,0.766624987,0.318171263],[new defaultSet(),19,0.699968755,0.318170071],[new defaultSet(),18,0.233374998,0.681806087],[new defaultSet(),18,0.166718751,0.59089756]];
            }
            if(param2 == 0 && param3 == 2)
            {
               return [[new decalSet(),144,0.5,0.5],[new defaultSet(),34,0.233374998,0.227264643],[new defaultSet(),34,0.233374998,0.954538584],[new defaultSet(),32,0.766624987,0.499994516],[new defaultSet(),33,0.5,0.499989033],[new defaultSet(),22,0.5,0.318175077],[new defaultSet(),20,0.366687506,0.681809902],[new defaultSet(),20,0.366687506,0.590901136],[new defaultSet(),18,0.433343738,0.681809902]];
            }
            if(param2 == 0 && param3 == 4)
            {
               return [[new decalSet(),136,0.5,0.5],[new defaultSet(),28,0.5,0.318169594],[new propertiesSet(),5,0.5,0.499985695],[new defaultSet(),37,0.5,0.590897083],[new defaultSet(),41,0.433343738,0.590897083],[new defaultSet(),41,0.566656232,0.590897083],[new defaultSet(),41,0.633312523,0.59089756],[new defaultSet(),41,0.366687506,0.59089756],[new propertiesSet(),6,0.5,0.136353493],[new defaultSet(),23,0.300031245,0.318167686],[new defaultSet(),20,0.766624987,0.318167686],[new defaultSet(),20,0.699968755,0.227258682],[new defaultSet(),17,0.699968755,0.318167686]];
            }
            if(param2 == 3 && param3 == 4)
            {
               return [[new decalSet(),124,0.5,0.5],[new defaultSet(),29,0.499531269,0.681805611],[new defaultSet(),34,0.499531269,0.590897083]];
            }
            if(param2 == 4 && param3 == 3)
            {
               return [[new decalSet(),133,0.5,0.5],[new defaultSet(),43,0.899312496,0.772717953],[new defaultSet(),42,0.166093826,0.227265835],[new defaultSet(),25,0.499375343,0.590894461],[new defaultSet(),20,0.765999794,0.318171263],[new defaultSet(),20,0.699343681,0.318171263],[new defaultSet(),19,0.232749939,0.681806087],[new defaultSet(),19,0.299406052,0.681806087],[new defaultSet(),18,0.832655907,0.318171263],[new defaultSet(),18,0.832655907,0.409080029]];
            }
            if(param2 == 4 && param3 == 4)
            {
               return [[new decalSet(),142,0.5,0.5],[new defaultSet(),37,0.432718754,0.409077168],[new defaultSet(),33,0.566031456,0.499981403],[new defaultSet(),26,0.765999794,0.681800365],[new defaultSet(),16,0.632687569,0.863619804],[new defaultSet(),18,0.499375343,0.863619804],[new defaultSet(),18,0.632687569,0.863619804],[new defaultSet(),19,0.432718754,0.863619804],[new defaultSet(),20,0.566031456,0.863619804]];
            }
            if(param2 == 2 && param3 == 4)
            {
               return [[new decalSet(),146,0.5,0.5],[new defaultSet(),32,0.499687672,0.499987125],[new defaultSet(),33,0.699656248,0.318167686],[new defaultSet(),33,0.299718618,0.318171024],[new defaultSet(),34,0.166406155,0.954527378],[new defaultSet(),34,0.832968712,0.954531193],[new defaultSet(),22,0.433031321,0.318167686]];
            }
            if(param2 == 4 && param3 == 2)
            {
               return [[new decalSet(),141,0.5,0.5],[new propertiesSet(),5,0.432718754,0.318176985],[new defaultSet(),28,0.566031456,0.499989986],[new defaultSet(),36,0.899312496,0.409083366],[new defaultSet(),26,0.765999794,0.318171978],[new defaultSet(),17,0.899312496,0.318178892],[new defaultSet(),17,0.432718754,0.1363554],[new defaultSet(),19,0.366062641,0.136357546],[new defaultSet(),19,0.699343681,0.136357546],[new defaultSet(),20,0.899312496,0.499992609],[new defaultSet(),20,0.632687569,0.136357546],[new defaultSet(),2,0.432718754,0.318175077],[new defaultSet(),2,0.699343681,0.681809902]];
            }
            if(param2 == 2 && param3 == 3)
            {
               return [[new decalSet(),132,0.5,0.5],[new defaultSet(),26,0.499687672,0.227260351],[new defaultSet(),2,0.499687672,0.499988794],[new defaultSet(),29,0.099750042,0.863626957],[new defaultSet(),29,0.899625063,0.863627672],[new defaultSet(),29,0.899625063,0.136350155],[new defaultSet(),29,0.099750042,0.136351585],[new defaultSet(),20,0.166406155,0.318171263],[new defaultSet(),20,0.166406155,0.409080029],[new defaultSet(),19,0.832968712,0.681806087],[new defaultSet(),17,0.832968712,0.59089756],[new defaultSet(),41,0.099750042,0.499988794],[new defaultSet(),41,0.899625063,0.499988794]];
            }
            if(param2 == 1 && param3 == 2)
            {
               return [[new decalSet(),155,0.5,0.5],[new defaultSet(),41,0.499843836,0.136360645],[new defaultSet(),32,0.899781227,0.499993563],[new defaultSet(),2,0.499843836,0.227266073],[new defaultSet(),2,0.499843836,0.772718906],[new defaultSet(),41,0.499843836,0.318177938],[new defaultSet(),41,0.499843836,0.681807756],[new defaultSet(),41,0.499843836,0.863627672],[new defaultSet(),18,0.699812531,0.590901136],[new defaultSet(),18,0.63315618,0.590901136],[new defaultSet(),19,0.299875021,0.409083843],[new defaultSet(),19,0.366531253,0.409083843],[new defaultSet(),17,0.233218789,0.409083843],[new defaultSet(),17,0.766468763,0.590901136]];
            }
            if(param2 == 3 && param3 == 2)
            {
               return [[new decalSet(),125,0.5,0.5],[new defaultSet(),2,0.499531269,0.772718906],[new defaultSet(),2,0.499531269,0.227266073],[new defaultSet(),29,0.89946866,0.136360645],[new defaultSet(),29,0.0995936394,0.863627672],[new defaultSet(),32,0.499531269,0.499993563],[new defaultSet(),18,0.766156435,0.3181777],[new defaultSet(),19,0.232906103,0.681809902],[new defaultSet(),18,0.232906103,0.590901136],[new defaultSet(),17,0.299562454,0.590901136],[new defaultSet(),41,0.89946866,0.863627672],[new defaultSet(),41,0.832812548,0.863627672],[new defaultSet(),41,0.0995936394,0.136357546],[new defaultSet(),41,0.16624999,0.136357546]];
            }
            if(param2 == 2 && param3 == 2)
            {
               return [[new decalSet(),162,0.5,0.5],[new propertiesSet(),3,0.499687672,0.772718906],[new defaultSet(),45,0.499687672,0.318175554],[new defaultSet(),44,0.166406155,0.136360407]];
            }
         }
         return [];
      }
      
      public static function maxX(missionNum:int) : int
      {
         if(missionNum == 0)
         {
            return 6;
         }
         if(missionNum == 1)
         {
            return 8;
         }
         if(missionNum == 2)
         {
            return 5;
         }
         if(missionNum == 3)
         {
            return 9;
         }
         if(missionNum == 4)
         {
            return 9;
         }
         if(missionNum == 5)
         {
            return 7;
         }
         if(missionNum == 6)
         {
            return 3;
         }
         if(missionNum == 7)
         {
            return 6;
         }
         if(missionNum == 8)
         {
            return 5;
         }
         if(missionNum == 9)
         {
            return 5;
         }
         if(missionNum == 10)
         {
            return 11;
         }
         if(missionNum == 11)
         {
            return 4;
         }
         if(missionNum == 12)
         {
            return 4;
         }
         return 0;
      }
      
      public static function maxY(missionNum:int) : int
      {
         if(missionNum == 0)
         {
            return 4;
         }
         if(missionNum == 1)
         {
            return 7;
         }
         if(missionNum == 2)
         {
            return 5;
         }
         if(missionNum == 3)
         {
            return 5;
         }
         if(missionNum == 4)
         {
            return 5;
         }
         if(missionNum == 5)
         {
            return 5;
         }
         if(missionNum == 6)
         {
            return 12;
         }
         if(missionNum == 7)
         {
            return 10;
         }
         if(missionNum == 8)
         {
            return 6;
         }
         if(missionNum == 9)
         {
            return 5;
         }
         if(missionNum == 10)
         {
            return 13;
         }
         if(missionNum == 11)
         {
            return 3;
         }
         if(missionNum == 12)
         {
            return 4;
         }
         return 0;
      }
      
      public static function minX(missionNum:int) : int
      {
         if(missionNum == 0)
         {
            return -1;
         }
         if(missionNum == 1)
         {
            return -3;
         }
         if(missionNum == 2)
         {
            return -3;
         }
         if(missionNum == 3)
         {
            return -1;
         }
         if(missionNum == 4)
         {
            return -5;
         }
         if(missionNum == 5)
         {
            return -4;
         }
         if(missionNum == 6)
         {
            return -10;
         }
         if(missionNum == 7)
         {
            return -5;
         }
         if(missionNum == 8)
         {
            return -5;
         }
         if(missionNum == 9)
         {
            return -5;
         }
         if(missionNum == 10)
         {
            return -4;
         }
         if(missionNum == 11)
         {
            return -10;
         }
         if(missionNum == 12)
         {
            return -9;
         }
         return 0;
      }
      
      public static function minY(missionNum:int) : int
      {
         if(missionNum == 0)
         {
            return -5;
         }
         if(missionNum == 1)
         {
            return -2;
         }
         if(missionNum == 2)
         {
            return -8;
         }
         if(missionNum == 3)
         {
            return -5;
         }
         if(missionNum == 4)
         {
            return -8;
         }
         if(missionNum == 5)
         {
            return -5;
         }
         if(missionNum == 6)
         {
            return 1;
         }
         if(missionNum == 7)
         {
            return 0;
         }
         if(missionNum == 8)
         {
            return -3;
         }
         if(missionNum == 9)
         {
            return -7;
         }
         if(missionNum == 10)
         {
            return 0;
         }
         if(missionNum == 11)
         {
            return -10;
         }
         if(missionNum == 12)
         {
            return -8;
         }
         return 0;
      }
   }
}

