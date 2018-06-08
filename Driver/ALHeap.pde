/*****************************************************
 * class ALHeap
 * SKELETON
 * Implements a min heap using an ArrayList as underlying container
 *****************************************************/

import java.util.ArrayList;

class ALHeap
{

  //instance vars
  private ArrayList<Dog> _heap;
  int sortingMethod;//0 is cute, 1 is agility, 2 is loudness, 3 is power

  /*****************************************************
   * default constructor  ---  inits empty heap
   *****************************************************/
  public ALHeap(int input) 
  {
    _heap = new ArrayList<Dog>();     
    sortingMethod = input;
  }



  /*****************************************************
   * toString()  ---  overrides inherited method
   * Returns either 
   * a) a level-order traversal of the tree (simple version)
   * b) ASCII representation of the tree (more complicated, more fun)
   *****************************************************/
  public String toString() 
  {
    //simple version:
    //return _heap.toString(); 

    //prettier version:
    String lvlOrdTrav = "heap size " + _heap.size() + "\n";

    if ( _heap.size() == 0 ) return lvlOrdTrav;

    int h = 1; //init height to 1
    if (sortingMethod==0) {
      for ( int i = 0; i < _heap.size(); i++ ) {
        lvlOrdTrav += i + ":" + _heap.get(i).getNombre()+","+ _heap.get(i).getCuteness() + " ";
        if ( i >= Math.pow(2, h) - 2 ) {
          lvlOrdTrav += "\n";
          h++;
        }
      }
    }
    if (sortingMethod==1) {
      for ( int i = 0; i < _heap.size(); i++ ) {
        lvlOrdTrav += i + ":" + _heap.get(i).getNombre()+","+ _heap.get(i).getAgility() + " ";
        if ( i >= Math.pow(2, h) - 2 ) {
          lvlOrdTrav += "\n";
          h++;
        }
      }
    }
    if (sortingMethod==2) {
      for ( int i = 0; i < _heap.size(); i++ ) {
        lvlOrdTrav += i + ":" + _heap.get(i).getNombre()+","+ _heap.get(i).getLoud() + " ";
        if ( i >= Math.pow(2, h) - 2 ) {
          lvlOrdTrav += "\n";
          h++;
        }
      }
    }
    if (sortingMethod==3) {
      for ( int i = 0; i < _heap.size(); i++ ) {
        lvlOrdTrav += i + ":" + _heap.get(i).getNombre()+","+ _heap.get(i).getPwr() + " ";
        if ( i >= Math.pow(2, h) - 2 ) {
          lvlOrdTrav += "\n";
          h++;
        }
      }
    }
    return lvlOrdTrav;
  }//O(n)


  /*****************************************************
   * boolean isEmpty()
   * Returns true if no meaningful elements in heap, false otherwise
   *****************************************************/
  public boolean isEmpty() { 
    return _heap.isEmpty();
  } //O(1)


  /*****************************************************
   * Integer peekMin()
   * Returns min value in heap
   * Postcondition: Heap remains unchanged.
   *****************************************************/
  public Dog peekMin()
  { 
    if ( _heap.size() < 1 )
      return null;
    else
      return _heap.get(0);
  } //O(1)


  /*****************************************************
   * add(Integer) 
   * Inserts an element in the heap
   * Postcondition: Tree exhibits heap property.
   *****************************************************/
  public void add( Dog addVal )
  { 

    //Add value as last node, to maintain balance, completeness of tree
    _heap.add( addVal );

    int addValPos = _heap.size() - 1;
    int parentPos;
    if (sortingMethod==0) {
      while ( addValPos > 0 ) { //potentially swap until reach root

        //pinpoint parent
        parentPos = (addValPos-1) / 2;

        if ( addVal.getCuteness().compareTo(_heap.get(parentPos).getCuteness()) < 0 ) {//addVal < parent
          swap( addValPos, parentPos );
          addValPos = parentPos;
        } else 
        break;
      }
    }
    if (sortingMethod==1) {
      while ( addValPos > 0 ) { //potentially swap until reach root

        //pinpoint parent
        parentPos = (addValPos-1) / 2;

        if ( addVal.getAgility().compareTo(_heap.get(parentPos).getAgility()) < 0 ) {//addVal < parent
          swap( addValPos, parentPos );
          addValPos = parentPos;
        } else 
        break;
      }
    }
    if (sortingMethod==2) {
      while ( addValPos > 0 ) { //potentially swap until reach root

        //pinpoint parent
        parentPos = (addValPos-1) / 2;

        if ( addVal.getLoud().compareTo(_heap.get(parentPos).getLoud()) < 0 ) {//addVal < parent
          swap( addValPos, parentPos );
          addValPos = parentPos;
        } else 
        break;
      }
    }
    if (sortingMethod==3) {
      while ( addValPos > 0 ) { //potentially swap until reach root

        //pinpoint parent
        parentPos = (addValPos-1) / 2;

        if ( addVal.getPwr().compareTo(_heap.get(parentPos).getPwr()) < 0 ) {//addVal < parent
          swap( addValPos, parentPos );
          addValPos = parentPos;
        } else 
        break;
      }
    }
  } //O(logn)


  /*****************************************************
   * removeMin()  ---  means of removing an element from heap
   * Removes and returns least element in heap.
   * Postcondition: Tree maintains heap property.
   *****************************************************/
  public Dog removeMin()
  { 
    if ( _heap.size() == 0 ) 
      return null;

    //store root value for return at end of fxn
    Dog retVal = peekMin();

    //store val about to be swapped into root
    Dog foo = _heap.get( _heap.size() - 1);

    //swap last (rightmost, deepest) leaf with root
    swap( 0, _heap.size() - 1 );

    //lop off last leaf
    _heap.remove( _heap.size() - 1);

    // walk the now-out-of-place root node down the tree...
    int pos = 0;
    int minChildPos;
    if (sortingMethod==0) {
      while ( pos < _heap.size() ) {

        //choose child w/ min value, or check for child
        minChildPos = minChildPos(pos);

        //if no children, then i've walked far enough
        if ( minChildPos == -1 ) 
          break;
        //if i am less than my least child, then i've walked far enough
        else if ( foo.getCuteness().compareTo( _heap.get(minChildPos).getCuteness() ) <= 0 ) 
          break;
        //if i am > least child, swap with that child
        else {
          swap( pos, minChildPos );
          pos = minChildPos;
        }
      }
    }
    if (sortingMethod==1) {
      while ( pos < _heap.size() ) {

        //choose child w/ min value, or check for child
        minChildPos = minChildPos(pos);

        //if no children, then i've walked far enough
        if ( minChildPos == -1 ) 
          break;
        //if i am less than my least child, then i've walked far enough
        else if ( foo.getAgility().compareTo( _heap.get(minChildPos).getAgility() ) <= 0 ) 
          break;
        //if i am > least child, swap with that child
        else {
          swap( pos, minChildPos );
          pos = minChildPos;
        }
      }
    }
    if (sortingMethod==2) {
      while ( pos < _heap.size() ) {

        //choose child w/ min value, or check for child
        minChildPos = minChildPos(pos);

        //if no children, then i've walked far enough
        if ( minChildPos == -1 ) 
          break;
        //if i am less than my least child, then i've walked far enough
        else if ( foo.getLoud().compareTo( _heap.get(minChildPos).getLoud() ) <= 0 ) 
          break;
        //if i am > least child, swap with that child
        else {
          swap( pos, minChildPos );
          pos = minChildPos;
        }
      }
    }
    if (sortingMethod==3) {
      while ( pos < _heap.size() ) {

        //choose child w/ min value, or check for child
        minChildPos = minChildPos(pos);

        //if no children, then i've walked far enough
        if ( minChildPos == -1 ) 
          break;
        //if i am less than my least child, then i've walked far enough
        else if ( foo.getPwr().compareTo( _heap.get(minChildPos).getPwr() ) <= 0 ) 
          break;
        //if i am > least child, swap with that child
        else {
          swap( pos, minChildPos );
          pos = minChildPos;
        }
      }
    }
    //return removed value
    return retVal;
  }//O(logn)


  /*****************************************************
   * minChildPos(int)  ---  helper fxn for removeMin()
   * Returns index of least child, or 
   * -1 if no children, or if input pos is not in ArrayList
   * Postcondition: Tree unchanged
   *****************************************************/
  private int minChildPos( int pos )
  { 
    int retVal;
    int lc = 2*pos + 1; //index of left child
    int rc = 2*pos + 2; //index of right child

    //pos is not in the heap or pos is a leaf position
    if ( pos < 0 || pos >= _heap.size() || lc >= _heap.size() )
      retVal = -1;
    //if no right child, then left child is only option for min
    else if ( rc >= _heap.size() )
      retVal = lc;
    //have 2 children, so compare to find least 
    else if ( getRightVal(_heap.get(lc)).compareTo(getRightVal(_heap.get(rc))) < 0 )
      retVal = lc;
    else
      retVal = rc;
    return retVal;
  }//O(1)

  private Integer getRightVal(Dog input){
    if (sortingMethod==0){
      return input.getCuteness();
    }
    if (sortingMethod==1){
      return input.getAgility();
    }
    if (sortingMethod==2){
      return input.getLoud();
    }
    else{
      return input.getPwr();
    }
  }

  //************ aux helper fxns ***************
  private Dog minOf( Dog a, Dog b )
  {
    if (sortingMethod ==0) {
      if ( a.getCuteness().compareTo(b.getCuteness()) < 0 )
        return a;
      else
        return b;
    }
    else if (sortingMethod ==1) {
      if ( a.getAgility().compareTo(b.getAgility()) < 0 )
        return a;
      else
        return b;
    }
    else if (sortingMethod ==2) {
      if ( a.getLoud().compareTo(b.getLoud()) < 0 )
        return a;
      else
        return b;
    }
    else {
      if ( a.getPwr().compareTo(b.getPwr()) < 0 )
        return a;
      else
        return b;
    }
  }

  //swap for an ArrayList
  private void swap( int pos1, int pos2 )
  {
    _heap.set( pos1, _heap.set( pos2, _heap.get(pos1) ) );
  }
  //********************************************
}//end class ALHeapp
