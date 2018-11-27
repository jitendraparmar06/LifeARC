trigger AccountDelete on Account (before delete) {
 for(Account Acc:[SELECT Id FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity) AND Id IN :Trigger.old])
 {
 acc.adderror('You Cannot Delete the Account Record');
 }
 }