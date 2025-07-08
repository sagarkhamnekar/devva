@RestResource(urlMapping='/studentApi')
global class MyFirstRestResource {
    
    @Httpget
    global static List<Student__c>getstudent(){
        
        return[select Name, Student_Name__c,Student_Email__c,Student_Phone__c from Student__c];      
    }
    @HttpPost
    global static List <Student__c> createStudent(){
        
        RestRequest req =RestContext.request;
        
       System.debug(req);
        
      String body = req.requestBody.toString();
        
       system.debug (body);
        
        List<Object> listOb = (List<Object>) JSON.deserializeUntyped(body);
    
        List<Student__c> stdList= new List<Student__c>();
       
        for(Object o:listOb){           
           
        Map<String, Object> obj = (Map<String,Object>)o;
          
            Student__c std = new Student__c();
       
        std.Student_Name__c =(String)obj.get('Name');
        std.Student_Email__c =(String)obj.get('Email');
         std.Student_Phone__c= (String)obj.get('phone');
		
            stdList.add(std);
            
        } 
        
        insert stdList;
     return stdList;
        }
    }