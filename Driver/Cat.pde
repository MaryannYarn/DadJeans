public Cat extends Enemy {

public Cat(){
BASEHP = random(250,300);
BASECUTE = random(250,300);
}

//methods 

public String winMessage(){
String msg = "The cat defeated the dog!"
return msg;
}

public String loseMessage(){
String msg = "The dog defeated the cat!"
return msg;
}

} // end class Cat 
