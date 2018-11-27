public class CalculatorClass
{
    public Decimal input1 {get;set;}
    public Decimal input2 {get;set;}
    public Decimal result {get;set;}
    public void sub()
    {
        result = input1-input2;
        
     
    }
    public void add()
    {
        result = input1+input2;
        
    
    }
    public void mul()
    {
        result = input1*input2;
   
    }
    public void div()
    {
        result = input1/input2;
       

    }
}