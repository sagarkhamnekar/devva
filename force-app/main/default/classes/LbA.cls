public class LbA {
  // 1. Basic Logical Conditions in Apex  
    Account acc =[SELECT id,name,industry From Account];
    {  
    if (acc.Industry == 'Technology'){
        acc.Rating= 'hot';
    }
    else {
             acc.Rating='cold';
        }
    
       update acc;
    }
//  2. Logical Loop with Condition

    List<Account> acc1 = [SELECT id,name,industry From Account];
    {
        for (Account acc2 : acc1)
        {      
            if (acc.Industry == 'Technology'){
        acc.Rating= 'hot';
    }
    else {
             acc.Rating='cold';
        
        }
  // 3. Complex Logic in Apex Trigger         
            //trigger Opportunity on opportunity(before insert ,before update)
            //{
            //		for (opportunity opp: trigger.new)
            //		
            //		if (opp.amount >10000 && opp.stage='prospecting')
            //		{
            //			opp.rating__c ='high value lead'
      		//  }
      		//  
      		//  
      		//  opp.amount >500000;
      		//  acc.high_value =true;
      		//  
      		//  
      		//  
      		//:::::::::::    trigger       ::::::::::::
      		//  
            //  trigger Triggeropp on opportunity (after insert){
      		//  
            // if (trigger.isAfter && trigger.isInsert)
            // {
            // oppHandler.handlerMethod(trigger.new)
        	//  }
      		//  
      		//  ::::::::::::::::  Handler class :::::::::::::::::::
            //  public class oppHandler{
      		//	public static void handlerMethod(List<Opportunity> oopList)  
      		//	serviceclass.serviceclassMethod(oppList)
      		//	
      		//	//  ::::::::::::::::::::::: service class  ::::::::::::::::::::::::
      		//  
            //  public class serviceclass{
            //	 public static void serviceClassmethod(List<Opportunity> oopList)
            //	 { 
            //	  // Step 1: Collect Account Ids where Opportunity Amount > 5L
            //	  
            //	  set<ID> highvalueAccountId = new set<ID> (){
            //	  	
            //	  	for(Opportunity opp:oppList)
            //	  
            //	  		{
            //	  		if(opp.Amount!=null && opp.Amount >500000 
            //	  	&& opp.AccountId != null)
            //	  	{
            //	  	highvalueAccountId.add(opp.AccountId);
            //	  	
            //	  	}}
            //		 
            //		 Step 2: Query Accounts
            //		 
            //		  List<Account> Acctoupdate=[Select Id,Highvalue__c SFrom Account Where ID IN:highvalueAccountId];
            //		 
       		// }	Step 3: Update field
       		// 
       		// 		for(Account acc:Acctoupdate )
            // 		{ 
            // 		acc.Highvalue__c = true;
            // 		}
       		// 
       		// 		Step 4: DML
       		// 		
       		// 		if (!Acctoupdate.isEmpty())
       		// 			update Acctoupdate:
       		// 
			//		}
        	//			}
      		//
      		//
      		// Challenge 2: Auto Create Case on Contact Email Change
      		// 
      		//:::::::::::::    trigger   ::::::::::::::::::::
      		// 
      		// trigger contacttrigger on contact(after update)
            //	if (trigger.isAfter&& trigger.isUpdate){  
            //	
            //	handlerclass.handlermethod(trigger.new,trigger.oldmap){   
            //	
            //	
            //	}
            //	
            //	::::::::::::::: Handler Class ::::::::::::::::::
            //	 
            //	 public  class handler {  
            //	 public static void handlermethod( List<Contact> newList, Map<Id, Contact> oldMap ){   
            //	 	serviceclass.servicemethod(newlist,oldmap)																															)
            //	 
            //	 
            //	 }
            //	 
            //	 :::::::::::::::::    serviceclass   :::::::::::::::::::
            //	 
            //	 public class service {   
            //	   public static void  servicemethod ( List<Contact> newList, Map<Id, Contact> oldMap)
            //	 	 
            //	 	 List<case> casetoInsert  = new List<case>(){    
            //	 	 
            //	 	 for(Contact con:trigger.new){    
            //	 	  contact oldcon =oldMap.get(newcon.id);
            //	 	  
            //	 	  if (newcon.Email != oldcon.Email){    
            //	 	  	 case c =new case(subject= 'Email changed',status ='New',ContactId= newcon.id);
            //	 	  	 
            //	 	  casetoInsert.add(c)
            //	 	  
            //	 	  }
            //	 	  if(!casetoInsert.isEmpty()){ 
            //	 	  insert casetoInsert;
            //	 	  }
            //	 	  }
            //	 	 
            //	 	 
            //	 	 }
            //	 
            //	 }
            //	 
            //	 
            //	 
            //	 
            //	 }
            //	
            //	
            //	}
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//
      		//  
            //  
        }}}