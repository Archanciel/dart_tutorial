void main(){
   var fruits = ['apple','mango','banana'];
   var fruit = fruits.iterator;

   while(fruit.moveNext()){
      print(fruit.current);
   }
}
