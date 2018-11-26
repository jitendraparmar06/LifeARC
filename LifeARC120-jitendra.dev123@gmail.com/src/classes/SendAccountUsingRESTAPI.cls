public class SendAccountUsingRESTAPI {
  private final String clientId = '3MVG9YDQS5WtC11r4kK1nC312KcmGaS8NgN4UBPGhm6tiaoK0pnFSZE74EKONEWidYWiRyR4PtuocYIs_rZh5';
   private final String clientSecret = '8955385999721658195';
   private final String username = 'proventeq.jit@gmail.com';
   private final String password = 'Jitendra321#@!';
  public class deserializeResponse
   {
      public String id;
      public String access_token;
   }
  public String ReturnAccessToken (SendAccountUsingRESTAPI acount)
   {
      String reqbody = 'grant_type=password&client_id='+acount.clientId+'&client_secret='+acount.clientSecret+'&username='+acount.username+'&password='+acount.password;
      Http h = new Http();
      HttpRequest req = new HttpRequest();
      req.setBody(reqbody);
      req.setMethod('POST');
      req.setEndpoint('https://jitproventeq-dev-ed.my.salesforce.com/oauth2/token');
      HttpResponse res = h.send(req);
      system.debug('results:'+res);
      deserializeResponse resp1 = (deserializeResponse)JSON.deserialize(res.getbody(),deserializeResponse.class);
      system.debug('access_token1223'+resp1 );
      return resp1.access_token;
   }
   public static list<Contact> callgetContact (String accId)
   {
           SendAccountUsingRESTAPI acount1 = new SendAccountUsingRESTAPI();
           String accessToken;
           accessToken = acount1.ReturnAccessToken (acount1);
           list<Contact> LstContact=new List<Contact>();
           System.debug('this is rest');
           if(accessToken!= null){
           String endPoint = 'https://jitproventeq-dev-ed.my.salesforce.com/services/apexrest/v1/GetContacts/' +accId;
           //String jsonstr = '{"accId" : "' + accId+ '"}';
           Http h2 = new Http();
           HttpRequest req1 = new HttpRequest();
           req1.setHeader('Authorization','Bearer ' + accessToken);
           req1.setHeader('Content-Type','application/json');
           req1.setHeader('accept','application/json');
           //req1.setBody(jsonstr);
           req1.setMethod('GET');
           req1.setEndpoint(endPoint);
           HttpResponse res1 = h2.send(req1);
               if(res1.getstatusCode() == 200 && res1.getbody() != null){
                  System.debug(json.deserializeUntyped(res1.getBody()));
                 }   
          JSONParser parser = JSON.createParser(res1.getBody());
           set<Contact> contList=new set<Contact>();
            while (parser.nextToken() != null) {
                if((parser.getCurrentToken() == JSONToken.FIELD_NAME) ){
                    Contact cont;
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && (parser.getText() == 'Id')) {
                    // Get the value.
                    parser.nextToken();
                    // Compute the grand total price for all invoices.
                    string sId= parser.getText();
                    cont=new Contact();
                    cont.Id=sId;
                    system.debug('Id@@@' + sId);
                    parser.nextToken();
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'Name')) {
                        // Get the value.
                        parser.nextToken();
                        // Compute the grand total price for all invoices.
                        string sName= parser.getText();
                        cont.LastName=sName;
                        system.debug('Name@@@' + sName );
                    }
                    parser.nextToken();
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'Email')) {
                        // Get the value.
                        parser.nextToken();
                        // Compute the grand total price for all invoices.
                        string sEmail= parser.getText();
                        cont.Email=sEmail;
                        system.debug('Email@@@' + sEmail);
                    }
                }
                contList.add(cont); 
                }
                contList.remove(null);  
            }
            LstContact.AddAll(contList);
            system.debug('ContList@@@@'+Json.serialize(LstContact));        
        }
        return LstContact;
   }
   
}