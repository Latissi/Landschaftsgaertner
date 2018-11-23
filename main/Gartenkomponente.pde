public abstract class Gartenkomponente
{
  
  private Pos position;
  private Size groesse;
  
  public Gartenkomponente(int x = 0, int y = 0, int b = 10, int h =10){
    this.position = new Pos(x,y);
    this.groesse = new Size(b,h);
  }
  
  public Size getSize(){
    return this.groesse;
  }
  
  public Pos getPos()
  {
    return this.position;
  }
  
  public void setSize(int b, int h)
  {
    this.groesse.breite = b;
    this.groesse.hoehe = h;
  }
  
  public void setPos(int x, int y)
  {
    this.position.x = x;
    this.position.y = y;
  }
}
