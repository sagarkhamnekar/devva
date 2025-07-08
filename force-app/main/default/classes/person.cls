global class person {
    
     public string name;
      public integer id;
    
   public person(){
        
        system.debug('default called');
   }
    public person (string name,integer Id){
        system.debug('para called');
        
      this.name =  name;
      this.id = Id;        
    }
      
}