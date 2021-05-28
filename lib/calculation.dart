import 'dart:math';

class Calculation{
  Calculation({this.height, this.weight});
  int height;
  int weight;
  double result;

  String bmiresult(){
    result = (weight/(height*height));
    return result.toString();
  }

  String feedback(){
    if(result > 30)
    {
      return "Obese";
    }
    else if(result > 25){
      return "over weight";
    }
    else if(result > 18)
    {
      return"Normal";
    }
    else
    {
      return"under weight";
    }
  }

  String suggestion()
  {
    if(result > 30)
    {
      return "Do hard work";
    }
    else if(result > 25){
      return "Eat less";
    }
    else if(result > 18)
    {
      return"You are fit";
    }
    else
    {
      return"Eat more";
    }
  }

}