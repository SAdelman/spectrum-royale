package com.unhurdle.spectrum.typography
{

  public class Heading extends Typography
  {
    public function Heading()
    {
      super();
    }
    override protected function getSuffix():Array{
      var suffix:Array = [];
      if(size == 1 || size == 2){
        if(quiet){
          suffix.push("--quiet");
        } else if(strong){
          suffix.push("--strong");
        }
        if(display){
          suffix.push("--display");
        }
      }
      return suffix;
    }

    private var _quiet:Boolean;

    /**
     * The quiet varient of Heading1 or Heading2
     */
    public function get quiet():Boolean
    {
    	return _quiet;
    }

    public function set quiet(value:Boolean):void
    {
      if(value != !!_quiet){
        _strong = false;
      	_quiet = value;
        setTypeNames();
      }
    }
    private var _strong:Boolean;

    /**
     * The strong varient of Heading1 or Heading2
     */
    public function get strong():Boolean
    {
    	return _strong;
    }

    public function set strong(value:Boolean):void
    {
      if(value != !!_strong){
      	_strong = value;
        _quiet = false;
        setTypeNames();
      }
    }
    private var _display:Boolean;

    /**
     * The display varient of Heading1 or Heading2
     */
    public function get display():Boolean
    {
    	return _display;
    }

    public function set display(value:Boolean):void
    {
      if(value != !!_display){
        _display = value;
        setTypeNames();
      }
    }
    override protected function getMax():int{
      return 6;
    }

    override protected function getTypographySelector():String{
      return "spectrum-Heading";
    }

  }
}