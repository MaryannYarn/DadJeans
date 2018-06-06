public Bird extends Enemy {

public Bird(){
BASEHP = random(250,300);
BASECUTE = random(250,300);
}

//methods 

public String winMessage(){
String msg = "The bird defeated the dog!"
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the bird!"
return msg;
}

} // end class Bird 
