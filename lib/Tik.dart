import 'dart:io';

 List l1= [1 , 2 , 3];
 List l2= [4 , 5 , 6];
 List l3= [7 , 8 , 9];

void main(){
  print('If you enter wrong letter , you will try again');
  print('What do you want :');
  print('1 - "x"');
  print('2 - "o"');
  int ?num_of_letter;
  try{
     num_of_letter =int.parse(stdin.readLineSync()!);
    if(num_of_letter != 1 && num_of_letter !=2)
      print('you chose wrong number , try again');
  }
  catch(e){
    print('wrong , you entered  letter ,you should chose 1 or 2 . try again');
  }
  String ?letter;
  switch(num_of_letter){
    case 1:
      letter='x';
      break;
    case 2 :
      letter='o';
      break;
  }
  if(letter == 'x' || letter == 'o'){
    print(l1);
    print(l2);
    print(l3);
    game(num_of_letter!);
  }

}

void Putting_the_letter_in_their_place(int num , String letter){
  if(num >0 && num <=3)
    l1[num-1]=letter;
  else if(num >3 && num <=6)
    l2[num-4]=letter;
  else if(num >6 && num <=9)
    l3[num-7]=letter;

  print(l1);
  print(l2);
  print(l3);
}

void game (int num_of_letter) {

  for (int i = 1; i <= 9; i++) {
    bool end =false;
    print("Chose the place :  ");
    int num_of_place = int.parse(stdin.readLineSync()!);
    print('Enter your letter : ');
    String letter = stdin.readLineSync()!;
    if(num_of_letter %2 !=0 ){
      if(letter =='x' )
        Putting_the_letter_in_their_place(num_of_place, letter);
      else{
        print('Yoe entered another letter , you should enter x , try again ');
         break;
      }
    }
    else {
      if(letter =='o' )
        Putting_the_letter_in_their_place(num_of_place, letter);
      else{
        print('Yoe entered another letter , you should enter o , try again ');
        break;
      }
    }

    if(i>4){

      //chick win
      if(letter=='x'){
        if(
        (l1[0]=='x' && l1[1]=='x' && l1[2]=='x') ||
            (l2[0]=='x' && l2[1]=='x' && l2[2]=='x') ||
            (l3[0]=='x' && l3[1]=='x' && l3[2]=='x')
        )
        {
          print("you win ");
          end =true;
          break ;
        }
        else if(
        (l1[0]=='x' && l2[0]=='x' && l3[0]=='x') ||
            (l1[1]=='x' && l2[1]=='x' && l3[1]=='x') ||
            (l1[2]=='x' && l2[2]=='x' && l3[2]=='x')
        )
        {
          print("you win ");
          end =true;
          break ;
        }
        else if(
        (l1[0]=='x' && l2[1]=='x' && l3[2]=='x') ||
            (l1[2]=='x' && l2[1]=='x' && l3[0]=='x')
        )
        {
          print("you win ");
          end =true;
          break ;
        }
      }

      //chick win
     else if(letter=='o'){
        if(
            (l1[0]=='o' && l1[1]=='o' && l1[2]=='o') ||
            (l2[0]=='o' && l2[1]=='o' && l2[2]=='o') ||
            (l3[0]=='o' && l3[1]=='o' && l3[2]=='o')
        )
        {
          print("you win ");
          end =true;
          break ;
        }
        else if(
            (l1[0]=='o' && l2[0]=='o' && l3[0]=='o') ||
            (l1[1]=='o' && l2[1]=='o' && l3[1]=='o') ||
            (l1[2]=='o' && l2[2]=='o' && l3[2]=='o')
        )
        {
          print("you win ");
          end =true;
          break ;
        }
        else if(
            (l1[0]=='o' && l2[1]=='o' && l3[2]=='o') ||
            (l1[2]=='o' && l2[1]=='o' && l3[0]=='o')
        )
        {
          print("you win ");
          end =true;
          break ;
        }
      }
    }
    num_of_letter++;
  }
}