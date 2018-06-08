class Bird extends Enemy {

public Bird(){
HP = (int)random(250,300);
withstoodCuteness = (int)random(250,300);
}

//methods 

public String winMessage(){
String msg = "The bird defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the bird!";
return msg;
}

} // end class Bird 
