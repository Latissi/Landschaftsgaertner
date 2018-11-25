public static class BeetKonfigurator
 {
  public Pflanze[] pflanzen;
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
    if (!konfigurationPruefen())
    {
    new(
    return 
    }
    else
    
  }
  
  private boolean konfigurationPruefen()
  {
    boolean intersection = false;
    
    for(int i=0; i<(pflanzen.length-1); i++)
    {
      BoundingBox test1 = pflanzen[i].getBoundingBox();
      for(int j=i+1; j<pflanzen.length; j++)
      {
        BoundingBox test2 = pflanzen[j].getBoundingBox();
        if  ((test1.getEast() < test2.getWest()) &&
            (test1.getWest() > test2.getEast()) &&
            (test1.getNorth() < test2.getSouth()) &&
            (test1.getSouth() > test2.getNorth()))
            {
              intersection = true;
              break;
            }
      }
      if (intersection==true)
        break;
    }
    
    return intersection;
    
  }
  
}
