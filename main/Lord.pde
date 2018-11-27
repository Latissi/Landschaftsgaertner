public class Lord
{
  private Landschaftsgaertner gaertner;
  private Garten garten;
  
  public Lord(Landschaftsgaertner gaertner, Anzeige anz)
  {
    this.gaertner = gaertner;
  }
  
  public void betrachten()
  {
    garten.anzeigen();
  }
  
  public void gartenAnlegenLassen()
  {
    this.garten = gaertner.gartenErstellen();
  }
  
  public void neuBepflanzenLassen()
  {
  }
}
