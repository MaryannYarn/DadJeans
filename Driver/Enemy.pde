abstract class Enemy {

//instance vars

public int HP;
public int withstoodCuteness;
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

public abstract String winMessage();

public abstract String loseMessage();

public void displayEnemy(){
  fill(color(255,0,0));
  ellipse(750,350,100,100);

}

}
