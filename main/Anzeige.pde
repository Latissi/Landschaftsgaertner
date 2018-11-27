public class Anzeige
{
  private Size groesse;
  private Pos position;
  private String farbe;
  
  public Anzeige()
  {
  }
  
  public void anzeigeErstellen(Gartenkomponente k)
  {
    zeichnen(k);
    
    if (k.liefereElemente().size() >= 1)
    {
      print("Starte Rekursion \n");
    for(Gartenkomponente g : k.liefereElemente())
    {
      g.anzeigen();
    }
    }
  }
    
  
  
  
  private void zeichnen(Gartenkomponente k)
  {
    faerben(k.farbe);
    rect(k.position.x, k.position.y, k.groesse.breite, k.groesse.hoehe);
  }
  
  private void faerben(String farbe)
  {
    switch(farbe)
    {
      case "ROT": fill(238,0,0);break;
      case "BLAU": fill(0,191,255);break;
      case "BRAUN": fill(165,42,42);break;
      case "GRAU": fill(179,179,179);break;
      case "WEISS": fill(255,255,255);break;
      case "SCHWARZ": fill(0,0,0);break;
      case "HELLGRUEN": fill(127,255,0);break;
      case "DUNKELGRUEN": fill(0,139,0);break;
      case "RANDOM": fill((int)random(255), (int)random(255), (int)random(255));break;
      default: fill((int)random(255), (int)random(255), (int)random(255));break;
    }
  }
}
