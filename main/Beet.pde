public class Beet extends Kompositum
{
  
  public Beet()
  {
  }
  
  public static class BeetKonfigurator
 {
  private ArrayList <Pflanze> pflanzen;
  private Farbe farbe;
  private int x_pos;
  private int y_pos;
  private int breite;
  private int hoehe;
  public BeetKonfigurator()
  {
    pflanzen = new ArrayList();
  }
  
  public void setCoordinates(int x_pos, int y_pos)
  {
    this.x_pos = x_pos;
    this.y_pos = y_pos;
  }
  
  public void setSize(int breite, int hoehe)
  {
    this.hoehe = hoehe;
    this.breite = breite;
  }
  
  public void setColour(Farbe farbe)
  {
    this.farbe = farbe;
  }
  
  public void beetErstellen()
  {
  }
  
  private void pruefeUeberschneidung()
  {
  }
  
}
}
