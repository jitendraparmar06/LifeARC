public with sharing class Sample {

    public String mem {
       get { return 'getter';}  
       set;
    }

    public sample() {
        mem = 'constructor';
    }
    
    public void sav() {
        mem = 'action';
    }    
}