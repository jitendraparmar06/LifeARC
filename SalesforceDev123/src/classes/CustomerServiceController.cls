public class CustomerServiceController {
    public Account objA{set;get;}
    public CustomerServiceController(){
        objA= new Account();
    }
    public pageReference doSave(){
        // Establish connection
        partnerSoapSforceCom.soap myPartnerSoap = new partnerSoapSforceCom.soap();
	    partnerSoapSforceCom.LoginResult partnerLoginResult = myPartnerSoap.login('proventeq.jit@gmail.com','Jitendra321#@!wcqJyIyW4MKas4SGA7elLslP');
        System.debug('Jit'+partnerLoginResult);
        System.debug('Session Id:'+partnerLoginResult.SessionId);
        String sessionId= partnerLoginResult.SessionId;
        // pass the parameters for bussiness logic
        soapSforceComSchemasClassAccountser.SessionHeader_element webServiceSessionHeader = new  soapSforceComSchemasClassAccountser.SessionHeader_element();
        webServiceSessionHeader.sessionId= sessionId;
        soapSforceComSchemasClassAccountser.AccountService objA1 =  new soapSforceComSchemasClassAccountser.AccountService();
        objA1.SessionHeader = webServiceSessionHeader;
        String status = objA1.createCustomer(objA.Name,objA.Phone,objA.BillingCity);
        
        if(status=='success'){
                               insert objA;
                               System.debug('record is inserted succesfully');
          }
        else
            {
               System.debug('record is not created');
            }
        
        return null;
    }
  
    
}