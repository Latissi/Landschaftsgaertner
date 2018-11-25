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
  
  public BeetKonfigurator setCoordinates(int x_pos, int y_pos)
  {
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    return this;
  }
  
  public BeetKonfigurator setSize(int breite, int hoehe)
  {
    this.hoehe = hoehe;
    this.breite = breite;
    return this;
  }
  
  public BeetKonfigurator setColour(Farbe farbe)
  {
    this.farbe = farbe;
    return this;
  }
  
  public Beet beetErstellen()
  {
    KonfigurationPruefen();
    new(
    return 
  }
  
  private void konfigurationPruefen()
  {
  }
  
}
