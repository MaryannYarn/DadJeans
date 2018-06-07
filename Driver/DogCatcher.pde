class DogCatcher extends Enemy {

public DogCatcher(){
BASEHP = random(300,500);
BASECUTE = random(300,500);
}

//methods 

public String winMessage(){
String msg = "The dog catcher defeated the dog!";
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the dog catcher!";
return msg;
}

} // end class DogCatcher 
