public abstract class Enemy {

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

public String winMessage();

<<<<<<< HEAD
public abstract String loseMessage();
}
=======
public String loseMessage();
}
>>>>>>> d6165adbe6c38795e0b2df540f0619d18078c4f7
