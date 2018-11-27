public abstract class Blatt extends Gartenkomponente
{
  
  public Blatt(float x , float y, float b, float h, String farbe)
  {
    super(x,y,b,h,farbe);
  }
  
  public ArrayList <Gartenkomponente> liefereElemente()
  {
    print("liefereElemente von Blatt\n");
    return komponenten;
  }
}
