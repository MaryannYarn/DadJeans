abstract class Enemy {

//instance vars
private final int BASEHP;
private final int BASECUTE;
private int HP;
private int withstoodCuteness;
public int scared;
public String name;
public int attackStrength;


//methods

public void modifyHP(int damage){
HP -= damage; 
}

public void modifyCute(int cuteness){ //as in cuteness of the dog
withstoodCuteness -= cuteness; //?? is this how it works 
}

public void modifyScared(int fear){
scared -= fear; 
}


public int getHP() {
return HP;
}

public int getWithstoodCute() {
return withstoodCuteness;
}

public int getScared(){
return scared;
}

public int attack(){
  return attackStrength;
}

public abstract String winMessage() {
}

public abstract String loseMessage(){
}
}
