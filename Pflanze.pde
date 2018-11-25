public class Pflanze extends Blatt
{
  private BoundingBox box;
  protected ArrayList<float[]> pts;
  protected Grammar grammar;
  protected int age;
  protected String axiom;
  protected TurtleStack ts;  
  
  public Pflanze()
  {
  }
  
  public BoundingBox getBoundingBox()
  {
    return box;
  }
  
  public void setBoundingBox(float n, float e, float s, float w)
  {
    box = new BoundingBox(n,e,s,w);
  }
}
