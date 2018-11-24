public abstract class Kompositum extends Gartenkomponente
{
  private ArrayList <Gartenkomponente> vektor;
  
  public Kompositum(){
    vektor = new ArrayList();
  }
  
  public ArrayList <Gartenkomponente> liefereElemente()
  {
    return this.vektor;
  }
  
  public void hinzufuegen(Gartenkomponente komponente)
  {
    this.vektor.add(komponente);
  }
  
  public void entfernen (Gartenkomponente komponente)
  {
    for(int i = 0; i< vektor.size(); i++){
      if(vektor.get(i) == komponente)
        vektor.remove(i);
    }
  }
  
}
  
  
