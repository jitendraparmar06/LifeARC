public class FibonacciSeriesApex {
    public String fibonacci(Integer N){
        String fib= '';
        Integer f1=0 ,f2=1, f3=0;
         fib= String.valueOf(f1) + ',' + String.valueOf(f2);
        for(Integer i=0; i<N; i++){
        f3=f1+f2;
       
        fib = fib +','+String.valueOf(f3);
        }
        return fib;
    }

}