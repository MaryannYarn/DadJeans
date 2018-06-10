class Dog {

public static final int MAXSCARED=100;

//instance vars
private int cuteness;
private int agility;
private int loud; //loudness
private int power;
public int scared;
public String name;


public Dog(String inName, int level){
  cuteness = (int)random(10,75*level);
  agility = (int)random(10,75*level);
  loud = (int)random(10,75*level);
  power = (int)random(10,75*level);
  name=inName;
  scared=0;
}

//modifier methods
public boolean isDefeated(){
  if (scared == MAXSCARED){
  return true;
  }
  return false;
}
public Integer getCuteness() {
	return new Integer(cuteness);
}

public Integer getAgility() {
	return new Integer(agility);
}

public Integer getLoud() {
	return new Integer(loud);
}

public Integer getPwr() {
	return new Integer(power);
}

public Integer getScared() {
	return new Integer(scared);
}

public String getNombre(){
  return name;
}

//modifier methods
/*
public void setCuteness(int x) {
	cuteness = x;
}

public void setAgility(int x) {
	agility = x;
}

public void setLoud(int x) {
	loud = x;
}

public void setPwr(int x) {
	power = x;
}
*/
public void setScared(int x) {
	scared += x;
}

public void resetScared() {
  scared =0;
}


public String winMessage(String input){
 return "Your good boy, "+name+" defeated the enemy, "+input+"! Give them some treats tonight";
}

public String loseMessage() {
  return "Nooo! Your dog was so scared they ran away... good luck finding them ;)";
}

public String stats(){
  textSize(25);
  String s = "Name: "+name;
  text(s,420,20);
  textSize(18);
  s = "Cuteness: "+cuteness;
  text(s,440,50);
  s = "Agility: "+agility;
  text(s,440,80);
  s = "Loudness: "+loud;
  text(s,440,110);
  s = "Power: "+power;
  text(s,440,150);
  s = "Scaredness: "+scared;
  text(s,440,180);
  textSize(30);
  return ("Name: "+name+"  cuteness: "+cuteness+"  agility: "+agility+"  loudness: "+loud+"  power: "+power + "  scaredness: "+scared);
}

public void displayDog(){
  fill(color(0,0,255));
  ellipse(250,350,100,100);

}


}
