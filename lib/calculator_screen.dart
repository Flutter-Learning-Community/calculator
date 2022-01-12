import 'package:flutter/material.dart';

class calculator_screen extends StatefulWidget {
  const calculator_screen({ Key? key }) : super(key: key);

  @override
 _calculator_screenState createState() => _calculator_screenState();
}

class _calculator_screenState extends State<calculator_screen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),
      backgroundColor: Colors.black,
      ),
      
      body: Container(
        alignment: Alignment.bottomRight,
        child:Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(text,style: TextStyle(
                  fontSize: 30.0,fontWeight:FontWeight.w700
                ),),
              ),
            ),
            Row(
              children: [
            customOutlineButton("9"),
            customOutlineButton("8"),
            customOutlineButton("7"),
            customOutlineButton("+"),
              ],
            ),
            Row(
              children: [
            customOutlineButton("6"),
            customOutlineButton("5"),
            customOutlineButton("4"),
            customOutlineButton("-"),
              ],
            ),
            Row(
              children: [
            customOutlineButton("3"),
            customOutlineButton("2"),
            customOutlineButton("1"),
            customOutlineButton("*"),
              ],
            ),
            Row(
              children: [
            customOutlineButton("C"),
            customOutlineButton("0"),
            customOutlineButton("="),
            customOutlineButton("/"),
              ],
            ),
            
           
          ],
        ),
      ),
    );
  }

Widget customOutlineButton(String val)
{
  // ignore: deprecated_member_use
  return Expanded(
    // ignore: deprecated_member_use
    child: OutlineButton(
      padding: EdgeInsets.all(25.0),
      onPressed:()=>button(val),
      child: Text(val,
      style: TextStyle(fontSize: 25.0),
      ),
      ),
  );           

  
}
late int first,second;
late String result, text = " ";
late String opp;
void button(String btnText){
  if(btnText == "C"){
    result='';
    text="";
    first = 0;
    second = 0; 
    
  }else if(btnText == "+" || btnText=="-" ||btnText== "*" || btnText=="/"){
    first = int.parse(text);
    result = "";
    opp = btnText;
    
  }else if(btnText == "=" ){
      second = int.parse(text);
      if(opp=="+"){
        result = (first+second).toString();
      }
       if(opp=="-"){
        result = (first-second).toString();
      }
       if(opp=="/"){
        result = (first/second).toString();
      }
       if(opp=="*"){
        result = (first*second).toString();
      }
  }
  else
  {
    result=int.parse(text+btnText).toString();

  }
    setState(() {
      text = result;
    });

}
}