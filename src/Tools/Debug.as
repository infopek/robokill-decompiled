package Tools
{
    import flash.text.TextField;
    import flash.display.Stage;
    import flash.text.TextFormat;

    public class Debug
    {
        public static var outputField:TextField;

        public static function init(stage:Stage):void
        {
            // outputField = new TextField();
            // outputField.width = 600;         // Smaller width
            // outputField.height = 80;          // Smaller height
            // outputField.x = 10;               // A little padding from the left
            // outputField.y = stage.stageHeight - outputField.height - 10; // 10px from bottom
            // outputField.textColor = 0xFFFFFF;
            // outputField.background = true;
            // outputField.backgroundColor = 0x000000;
            // outputField.multiline = true;
            // outputField.wordWrap = true;
            // outputField.selectable = false;

            // // Optional: nice monospaced font for debug feel
            // var format:TextFormat = new TextFormat();
            // format.font = "_typewriter"; // built-in monospace font
            // format.size = 12;
            // outputField.defaultTextFormat = format;

            // stage.addChild(outputField);
        }

        public static function log(message:String):void
        {
            // outputField.appendText(message + "\n");
        }
    }
}