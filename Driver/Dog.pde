public class Dog {

public final int MAXSCARED;

//instance vars
private int cuteness;
private int agility;
private int loud; //loudness
private int power;
public int scared;
public boolean isDefeated;
public String name;

public Dog(int cute,int agile,int bork, int strong, String inName){
  cuteness=cute;
  agility=agile;
  loud=bork;
  power=strong;
  name=inName;
  MAXSCARED = 50;
}

//modifier methods
public int getCuteness() {
	return cuteness;
}

public int getAgility() {
	return agility;
}

public int getLoud() {
	return loud;
}

public int getPwr() {
	return power;
}

public int getScared() {
	return scared;
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

public void setScared(int x) {
	scared = x;
}
*/

public String winMessage(){
 return "Your good boy defeated the enemy! Give them some treats tonight";
}

public String loseMessage() {
  return "Nooo! Your dog was so scared they ran away... good luck finding them ;)";
}

//public String dogImage();

}