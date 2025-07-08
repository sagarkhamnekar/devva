public virtual class Parent {
    
    public Parent(){
        
        System.debug('Parent constructor');
    }
    
         public String name;
         public integer rollno;
    	 public string add;
    	
    public void walk(){
        
        system.debug(name +'.....  is parents walking....');
    }
    public virtual void raha(){
        system.debug(name +' .... is parents rahing...');
    }      
    

}