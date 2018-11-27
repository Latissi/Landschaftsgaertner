/*public static class BeetKonfigurator
 {
  private ArrayList <Pflanze> pflanzen;
  private String farbe;
  private float x_pos = 0;
  private float y_pos = 0;
  private float breite = 5;
  private float hoehe = 5;
  
  public BeetKonfigurator()
  {
    pflanzen = new ArrayList();
  }
  
  public BeetKonfigurator addPflanze( Pflanze pflanze)
  {
    pflanzen.add(pflanze);
    return this;
  }
  
  public BeetKonfigurator setCoordinates(float x_pos, float y_pos)
  {
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    return this;
  }
  
  public BeetKonfigurator setSize(float breite, float hoehe)
  {
    this.hoehe = hoehe;
    this.breite = breite;
    return this;
  }
  
  public BeetKonfigurator setFarbe(String farbe)
  {
    this.farbe = farbe;
    return this;
  }
  
  public Landschaftsgaertner.Beet beetErstellen(Landschaftsgaertner gaertner)
  {
        return gaertner.new Beet(x_pos, y_pos, breite, hoehe, farbe);  //processing erforedert, dass die zurückgegebene Klasse innerhalb einer Instanz von Main liegt:
                                                              //No enclosing instance is accessible. Must qualify the allocation with an enclosing instance of type (e.g. x.new A() where x is an instance of )
  }
  
  private boolean konfigurationPruefen()
  {
      boolean intersection = false;
   /* 
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
  
}*/
