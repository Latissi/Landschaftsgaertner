class Pflanze3 extends Pflanze
{
  final float PHI = PI/7;
  final float startLength = 30;
  final float x_offset = 40;
  final float y_offset = 70;
  float drawLength;
  
  public Pflanze3(Pos position, int age)
  {
    super();
    this.age = age;  
    this.position = new Pos(position.x, position.y);
    this.pts = new ArrayList<float[]>();
    this.ts = new TurtleStack();
    createLSystem();
    darstellen();
  }
  
  private void createLSystem()
  {
    this.axiom  = "X";
    this.grammar = new SimpleGrammar(axiom);
    this.grammar.addRule('F', "FF");                 // add char substitution rules
    this.grammar.addRule('X', "F-[[X]-X]+F[-FX]-X");
    this.grammar.generateGrammar(age);
    this.drawLength = this.startLength * pow(0.5, age);
  }
  
  private void darstellen()
  {
    float x_temp, y_temp, maxX, maxY, minX, minY;
    int repeat = 1;
    Turtle turtle = new Turtle(0.4 * height, 0.98 * width, HALF_PI);
    turtle.setX(this.position.x + x_offset);
    turtle.setY(this.position.x + y_offset);
    maxX = minX = turtle.getX();
    maxY = minY = turtle.getY();
    System.out.println("Start x: " + turtle.getX() + "Start y: " + turtle.getY());
    CharacterIterator it = grammar.getIterator(); // re-use grammar iterator
    for (char ch = it.first(); ch != CharacterIterator.DONE; ch = it.next()) {
      switch (ch) {
      case 'F':
        x_temp = turtle.getX();
        y_temp = turtle.getY();
        turtle.setX(x_temp - drawLength * cos(turtle.getTheta()));
        if (turtle.getX()<=minX)
        {
          minX = turtle.getX();
        }
        if (turtle.getX()>=maxX)
        {
          maxX = turtle.getX();
        }
        turtle.setY(y_temp - drawLength * sin(turtle.getTheta()));
        if (turtle.getY()<=minY)
        {
          minY = turtle.getY();
        }
        if (turtle.getY()>=maxY)
        {
          maxY = turtle.getY();
        }
        float[] temp = {x_temp, y_temp, turtle.getX(), turtle.getY()};
        pts.add(temp);
        break;
      case '+':
        turtle.setTheta(turtle.getTheta() + PHI * repeat);
        repeat = 1;
        break;
      case '-':
        turtle.setTheta(turtle.getTheta() - PHI * repeat);
        repeat = 1;
        break;
      case '[':
        ts.push(new Turtle(turtle)); 
        break;
      case ']':
        turtle = ts.pop();
        break;
      case 'X':   // confirm W,X,Y&Z as valid grammar
        break;
      case '2':   // set repeat using char ascii code 
      case '3':   // 48 = ascii '0'
      case '4':
        repeat = (int)ch - 48;
        break;  
      default:
        System.err.println("character " + ch + " not in grammar");
        break;
      }
    }
    //System.out.println(" Min X: " + minX + " Max X: " + maxX + " Min Y: " + minY + " Max Y: " + maxY);
    //hier muss BoundingBox erstellt werden!!
    setBoundingBox(minY, minX, maxY, maxX);
    this.groesse = new Size((int)(maxX-minX), (int)(maxY-minY));  
  }

  public void zeichnen() 
  {
    for (float[] pt : pts) {
      stroke(0,0,0);
      line(pt[0], pt[1], pt[2], pt[3]);
    }
  }
}
