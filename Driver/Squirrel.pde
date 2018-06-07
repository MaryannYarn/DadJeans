class Squirrel extends Enemy {

public Squirrel(){
BASEHP = random(150,200);
BASECUTE = random(150,200);
}

//methods 

public String winMessage(){
String msg = "The squirrel defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the squirrel!";
return msg;
}

} // end class Squirrel 
