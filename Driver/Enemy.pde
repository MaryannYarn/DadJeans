public abstract class Enemy {

//instance vars
private static final int BASEHP;
private static final int BASECUTE;
private int HP;
private int withstoodCuteness;

//methods
//i don't think we should have isDefeated--in that case can we just remove it from the stack?
public boolean isDefeated() {
  return false;
}

public void setHP(int x) {
  HP = x;
}

public void getHP() {
  return HP;
}

//I think there's also supposed to be a setCute method but i don't get what it's supposed to do so leaving it out rn

public void getWithstoodCute() {
  return withstoodCuteness;
}

}
