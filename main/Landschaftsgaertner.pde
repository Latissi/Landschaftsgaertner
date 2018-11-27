public class Landschaftsgaertner
{
  //public BeetKonfigurator konfigurator;
  //private ArrayList <Beet> beete;
  private Pflanzenzuechter zuechter;
  
  public Landschaftsgaertner()
  {
    zuechter = new Pflanzenzuechter();
  }
  
 
  
  public Garten gartenErstellen()
  {
    float gartenxPos = width/8;
    float gartenyPos = height/8;
    float gartenBreite = 3*width/4;
    float gartenHoehe = 3*height/4;
    String gartenFarbe = "HELLGRUEN";
    float beetBreite = 4*gartenBreite/9;
    float beetHoehe = 4*gartenHoehe/9;
    float beetxPos2 = gartenxPos + 5*gartenBreite/9;
    float beetyPos2 = gartenyPos + 5*gartenHoehe/9;
    String beetFarbe = "DUNKELGRUEN";
    
    Garten garten = new Garten(gartenxPos, gartenyPos, gartenBreite, gartenHoehe, gartenFarbe);
    /*Beet beet1 = konfigurator
    .setCoordinates(width/8, height/8)
    .setSize((4/9)*gartenBreite, (4/9)*gartenBreite)
    .setFarbe("RANDOM")
    .beetErstellen(this);*/
    Beet beet1 = new Beet(gartenxPos, gartenyPos,  beetBreite, beetHoehe, beetFarbe);
    beetBepflanzen(beet1);                //HIERRRR!!!! funktioniert nur manchmal!
    garten.hinzufuegen(beet1);
    Beet beet2 = new Beet(beetxPos2, beetyPos2, beetBreite, beetHoehe, beetFarbe);
    //beetBepflanzen(beet2);
    garten.hinzufuegen(beet2);
    Beet beet3 = new Beet(beetxPos2, gartenyPos, beetBreite, beetHoehe, beetFarbe);
    //beetBepflanzen(beet3);
    garten.hinzufuegen(beet3);
    Beet beet4 = new Beet(gartenxPos, beetyPos2, beetBreite, beetHoehe, beetFarbe);
    //beetBepflanzen(beet4);
    garten.hinzufuegen(beet4);
    Weg weg1 = new Weg(gartenxPos+4*gartenBreite/9, gartenyPos, gartenBreite/9, gartenHoehe, "BRAUN");
    garten.hinzufuegen(weg1);
    Weg weg2 = new Weg(gartenxPos, gartenyPos + 4*gartenHoehe/9, gartenBreite, gartenHoehe/9, "BRAUN");
    garten.hinzufuegen(weg2);
    return garten;
    
  }
  
  
  public void beetBepflanzen(Beet beet) 
  {     
       int rand_gattung = (int)random(1,4);
       int rand_age = (int)random(0,10);
       ArrayList <Pflanze> pflanzen = new ArrayList<Pflanze>();
       float beetAnfangX = beet.getPos().x;
       float beetEndeX = beet.getPos().x + beet.getSize().breite;
       float beetAnfangY = beet.getPos().y;
       float beetEndeY = beet.getPos().y + beet.getSize().hoehe;
       String farbe = "RANDOM";

     
        do{
          
          switch(rand_gattung)
          {
            case(1):                      
            for (int i= int (beetAnfangX); i<int(beetEndeX); i = int (i + Pflanze1.breite))
              {
                for (int j = int(beetAnfangY); j< int(beetEndeY); j = int(j + Pflanze1.hoehe))
                {
                  pflanzen.add(zuechter.pflanzen(rand_gattung,i,j,Pflanze1.breite, Pflanze1.hoehe, farbe, rand_age));
                }
              }
            case(2):
              for (int i=int(beetAnfangX); i<int(beetEndeX); i=int(i+Pflanze2.breite))
              {
                for (int j=int(beetAnfangY); j<int(beetEndeY); j=int(j+Pflanze2.hoehe))
                {
                pflanzen.add(zuechter.pflanzen(rand_gattung,i,j,Pflanze2.breite, Pflanze2.hoehe, farbe, rand_age));
                }
              }
            case(3):
              for (int i=int(beetAnfangX); i<int(beetEndeX); i=int(i+Pflanze3.breite))
              {
                for (int j=int(beetAnfangY); j<int(beetEndeY); j=int(j+Pflanze3.hoehe))
                {
                  pflanzen.add(zuechter.pflanzen(rand_gattung,i,j,Pflanze3.breite, Pflanze3.hoehe, farbe, rand_age));
                }
              }
            case(4):
              for (int i=int(beetAnfangX); i<int(beetEndeX); i=int(i+Pflanze4.breite))
              {
                for (int j=int(beetAnfangY); j<int(beetEndeY); j=int(j+Pflanze4.hoehe))
                {
                  pflanzen.add(zuechter.pflanzen(rand_gattung,i,j,Pflanze4.breite, Pflanze4.hoehe, farbe, rand_age));
                }
              }
          } 
        }while (!konfigurationPruefen(pflanzen));
        
        for( Pflanze p : pflanzen){
          beet.hinzufuegen(p);
        }
  }
  
 private boolean konfigurationPruefen(ArrayList <Pflanze> pflanzen)
  {
      boolean intersection = false;
    
    for(int i=0; i<(pflanzen.size()-1); i++)
    {
      BoundingBox test1 = pflanzen.get(i).getBoundingBox();
      for(int j=i+1; j<pflanzen.size(); j++)
      {
        BoundingBox test2 = pflanzen.get(j).getBoundingBox();
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
