@isTest
public class wrapperClass_Test {
    public static testMethod void wrapperMethod(){
        Account ac = new Account();
        ac.Name='syabase';
        ac.Type= 'Platinum';
        ac.Website='www.google.com';
        ac.AnnualRevenue=2005;
        insert ac;
        List<wrapperClass.accountwrapper> wrapperList = new List<wrapperClass.accountwrapper>();
        wrapperClass objwrapperClass = new wrapperClass();
       
        wrapperClass.accountwrapper objaccountwrapper = new  wrapperClass.accountwrapper(ac);
        objaccountwrapper.selected = true;
        wrapperList.add(objaccountwrapper);
        objwrapperClass.accwrap= wrapperList;
        
        objwrapperClass.getSelected();
        objwrapperClass.anacc.AnnualRevenue = 300;
        objwrapperClass.Changetype();
        objwrapperClass.anacc.AnnualRevenue = 500;
        objwrapperClass.Changetype();
    }

}