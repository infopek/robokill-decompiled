set FLEX_SDK=C:\apache-flex-sdk-4.16.1-bin
set PLAYERGLOBAL_HOME=C:\flashlibs\playerglobal
%FLEX_SDK%\bin\mxmlc.bat ^
  -source-path=src ^
  -default-size 800 600 ^
  -default-frame-rate 60 ^
  -default-background-color=0x000000 ^
  -output=Main.swf ^
  src/Main.as
pause