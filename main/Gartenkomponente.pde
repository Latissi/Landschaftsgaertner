public abstract class Gartenkomponente
{
  
  public Pos position;
  public Size groesse;
  public String farbe;
  public ArrayList <Gartenkomponente> komponenten;
  public Anzeige anz;
  
  public Gartenkomponente(float x , float y, float b, float h, String farbe)
  {
    this.position = new Pos(x,y);
    this.groesse = new Size(b,h);
    this.farbe = farbe;
    komponenten = new ArrayList<Gartenkomponente>();
    anz = new Anzeige();
  }
  
  public void anzeigen(){
    anz.anzeigeErstellen(this);
  }
  
  public abstract ArrayList <Gartenkomponente> liefereElemente();

  
  public Size getSize(){
    return this.groesse;
  }
  
  public Pos getPos()
  {
    return this.position;
  }
  
  public String getFarbe()
  {
    return this.farbe;
  }
  
  public void setFarbe(String farbe)
  {
    this.farbe = farbe;
  }
  
  public void setSize(float b, float h)
  {
    this.groesse.breite = b;
    this.groesse.hoehe = h;
  }
  
  public void setPos(float x, float y)
  {
    this.position.x = x;
    this.position.y = y;
  }
  
  public boolean isKompositum()
  {
    return false;
  }
}
