trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tList = new List<Task>();
    for(Opportunity opp : Trigger.New){
        if(opp.StageName=='Closed Won'){
            Task t = new Task(Subject='Follow Up Test Task',WhatId=opp.Id);
            tList.add(t);
        }
    }
    if(tlist.size()>0){
        insert tList;
    }
}