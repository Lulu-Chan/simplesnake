class Border implements Observer{
  
  Vector2D borders = new Vector2D(1000,650);
  
  public void renderBorder()
  {
    noFill();
    strokeWeight(5);
    stroke(255,255,255);
    rect(0,0, borders.x(),borders.y());
  }
  
  void onNotify(Vector2D snakePosition)
  {
    if(_hitsMe(snakePosition))
      GameOver.initiate();
     else 
      println(snakePosition.x(),snakePosition.y());
  }
  
  private boolean _hitsMe(Vector2D other)
  {
       return (other.x() > borders.x() || other.x() < 0 || other.y() > borders.y() || other.y() < 0);

  }
}
