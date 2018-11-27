trigger SalesTargetTrigger on Sales_Target__c (before insert) {
    Map<Id,Sales_Target__C> salesTargetMap = new Map<Id,Sales_Target__c>();
    Map<Id,List<Opportunity>> opportunityMap = new Map<Id,List<Opportunity>>();
    Map<Integer,String> monthMap = new Map<Integer,String>{1=>'January',2=>'February',3=>'March',4=>'April',5=>'May',6=>'June',7=>'July',8=>'August',9=>'September',10=>'October',11=>'November',12=>'December'};
    for(Sales_Target__c objSalesTarget : Trigger.New){
        salesTargetMap.put(objSalesTarget.User__c,objSalesTarget);
        
    }
    for(Opportunity objOpportunity: [SELECT CloseDate,Amount,OwnerId FROM Opportunity WHERE 
                                     isClosed=true AND Amount!=null AND OwnerId IN:salesTargetMap.keySet()]){
                                         if(opportunityMap.get(objOpportunity.OwnerId)!=Null){
                                             
                                             opportunityMap.get(objOpportunity.OwnerId).add(objOpportunity);
                                         }    
                                         else{
                                             
                                             opportunityMap.put(objOpportunity.OwnerId,new List<Opportunity>{objOpportunity});
                                         }
                                         
                                         
                                     }
    for(Id userId:salesTargetMap.keySet()) {
        Sales_Target__c objSt = new Sales_Target__c();
        objSt = salesTargetMap.get(userId);
        objSt.January_Achieved__c = 0.0;
        objSt.February_Achieved__c = 0.0;
        for(Opportunity objOpp : opportunityMap.get(userId)){
            Date closeDate = objOpp.CloseDate;                        
            if(closeDate.year()==Integer.valueOf(objSt.Year__c)){
                objSt.put(monthMap.get(closeDate.month())+'_Achieved__c', (Decimal)objST.get(monthMap.get(closeDate.month())+'_Achieved__c')+objOpp.Amount);  
            }
        }
        
    }
}