public abstract class Kompositum extends Gartenkomponente
{
  private ArrayList <Gartenkomponente> komponenten;
  
  public Kompositum(float x , float y, float b, float h, String farbe){
    super(x,y,b,h,farbe);
    komponenten = new ArrayList();
  }
  
  public ArrayList <Gartenkomponente> liefereElemente()
  {
    print("liefereElemente von Kompositum\n");
    return this.komponenten;
  }
  
  public void hinzufuegen(Gartenkomponente komponente)
  {
    this.komponenten.add(komponente);
  }
  
  public void entfernen (Gartenkomponente komponente)
  {
    for(int i = 0; i< komponenten.size(); i++){
      if(komponenten.get(i) == komponente)
        komponenten.remove(i);
    }
  }
  
}
  
  
