//Generated by wsdl2apex

public class AsyncSoapSforceComSchemasClassAccountser {
    public class createCustomerResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            soapSforceComSchemasClassAccountser.createCustomerResponse_element response = (soapSforceComSchemasClassAccountser.createCustomerResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncAccountService {
        public String endpoint_x = 'https://ap4.salesforce.com/services/Soap/class/AccountService';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassAccountser.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassAccountser.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassAccountser.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public soapSforceComSchemasClassAccountser.DebuggingInfo_element DebuggingInfo;
        public soapSforceComSchemasClassAccountser.CallOptions_element CallOptions;
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/AccountService';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/AccountService';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/AccountService';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/AccountService';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/AccountService';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/AccountService', 'soapSforceComSchemasClassAccountser'};
        public AsyncSoapSforceComSchemasClassAccountser.createCustomerResponse_elementFuture beginCreateCustomer(System.Continuation continuation,String name,String phone,String city) {
            soapSforceComSchemasClassAccountser.createCustomer_element request_x = new soapSforceComSchemasClassAccountser.createCustomer_element();
            request_x.name = name;
            request_x.phone = phone;
            request_x.city = city;
            return (AsyncSoapSforceComSchemasClassAccountser.createCustomerResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapSforceComSchemasClassAccountser.createCustomerResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/AccountService',
              'createCustomer',
              'http://soap.sforce.com/schemas/class/AccountService',
              'createCustomerResponse',
              'soapSforceComSchemasClassAccountser.createCustomerResponse_element'}
            );
        }
    }
}