public abstract class Enemy {

//instance vars
private static final int BASEHP;
private static final int BASECUTE;
private int HP;
private int withstoodCuteness;
public int scared;
public String name;


//methods
//i don't think we should have isDefeated--in that case can we just remove it from the stack?
public boolean isDefeated() {
return false;
}

public abstract modifyHP(int damage){
HP -= damage; 
}

public abstract modifyCute(int charmed){
withstoodCuteness -= charmed; //?? is this how it works 
}

public abstract modifyScared(int fear){
scared -= fear; 
}


public void getHP() {
return HP;
}

public void getWithstoodCute() {
return withstoodCuteness;
}

public void getScared(){
return scared;
}

public abstract attack(){
}

public abstract winMessage(){
}

public abstract loseMessage(){
}

}
