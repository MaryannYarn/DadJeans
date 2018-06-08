class Dog {

public static final int MAXSCARED=10000;

//instance vars
private int cuteness;
private int agility;
private int loud; //loudness
private int power;
public int scared;
public boolean isDefeated;
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
  return ("Name: "+name+"  cuteness: "+cuteness+"  agility: "+agility+"  loudness: "+loud+"  power: "+power + "  scaredness: "+scared);
}

public void displayDog(){
  fill(color(0,0,255));
  ellipse(250,350,100,100);

}

//public String dogImage();

}
