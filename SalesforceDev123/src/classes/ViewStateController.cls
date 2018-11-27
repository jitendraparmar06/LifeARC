public with sharing class ViewStateController {

public Integer a {get;set;}
private Integer b {get;set;}
Transient Integer c {get;set;}
private Integer d{get;set;}
public Opportunity opp {get;set;}

public ViewStateController()
{
    a = 20;
    b = 30;
    c = 40; //It will not visible in ViewState
    opp = new Opportunity(name='Test',StageName='Test');
}
//Call this method in Postback
public void changeData()
{
    system.debug('before If a -->'+a);
    if(a == 20)
    {
         system.debug('IN IF a --->');
        a = 2;
    }
    system.debug('After If a -->'+a);
    system.debug('before If b -->'+b);
    if(b == 30)
    {
    system.debug('IN IF b --->');
        b = 3;
    }
    system.debug('After If b -->'+b);
    //As c is declared as Transient, it will not persist the value in Postback
    system.debug('before If c -->'+c);
    if(c == 40)
    {
      system.debug('IN If c -->');
        d = 4;
         system.debug('After If d -->'+d);
    }
    else{
     system.debug('before If d -->'+d);
        d= 40;//As C value not persisted, else block will execute
         system.debug('After If d -->'+d);
    }
}
}