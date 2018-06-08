class Dog {

public static final int MAXSCARED=100;

//instance vars
private int cuteness;
private int agility;
private int loud; //loudness
private int power;
public int scared;
public boolean isDefeated;
public String name;

public Dog(String inName){
  cuteness = (int)random(10,100);
  agility = (int)random(10,100);
  loud = (int)random(10,100);
  power = (int)random(10,100);
  name=inName;
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
	scared -= x;
}

public void resetScared() {
  scared =0;
}


public String winMessage(){
 return "Your good boy defeated the enemy! Give them some treats tonight";
}

public String loseMessage() {
  return "Nooo! Your dog was so scared they ran away... good luck finding them ;)";
}

public String stats(){
  return ("Name: "+name+"  cuteness: "+cuteness+"  agility: "+agility+"  loudness: "+loud+"  power: "+power + "  scared: "+scared);
}

public void displayDog(){
  fill(color(0,0,255));
  ellipse(250,350,100,100);

}

//public String dogImage();

}
