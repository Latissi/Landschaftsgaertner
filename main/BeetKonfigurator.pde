public static class BeetKonfigurator
{
  private ArrayList <Pflanze> pflanzen;
  //private static Pflanzenzuechter;
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
  
  public void pruefeUeberschneidung()
  {
  }
  
}
