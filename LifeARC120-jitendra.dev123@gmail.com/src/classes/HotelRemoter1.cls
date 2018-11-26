global class HotelRemoter1 {
    public Hotel1__c c;
    public HotelRemoter1(){
        Hotel1__c c= new Hotel1__c();
    }
    public void saveAll(){
        insert c;
    }
    @RemoteAction
    global static List<Hotel1__c> findAll() {
        return [SELECT Id, Name, Location__Latitude__s, Location__Longitude__s
                    FROM Hotel1__c];
    }

}