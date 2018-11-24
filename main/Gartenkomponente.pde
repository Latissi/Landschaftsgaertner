public abstract class Gartenkomponente
{
  
  private Pos position;
  private Size groesse;
  private Anzeige anz;
  
  public Gartenkomponente(int x , int y, int b, int h)
  {
    this.position = new Pos(x,y);
    this.groesse = new Size(b,h);
    anz = new Anzeige();
  }
  
  public Gartenkomponente()
  {
    position = new Pos();      //evtl. vorinitialisieren
    groesse = new Size();     //evtl. vorinitialisieren
    anz = new Anzeige();
  }
  
  public void zeichnen()
  {
    //"anz...." noch zu implementieren
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
