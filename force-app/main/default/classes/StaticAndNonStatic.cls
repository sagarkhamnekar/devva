public class StaticAndNonStatic {
    
     
    public  integer loanAmount;
    
    public integer creditscore;
    
    public string accountholder;
    	
    public void setloanamount(integer loan,integer score,string name ){
         
        this.loanAmount=loan;
        this.creditscore=score;
        this.accountholder=name;   
        
    }
   
    public static integer age =77;
  
   	public static string name='samir';
       
    public static void mymethod1(){
              
  
     system.debug('myageis...................................'+age);
    system.debug('mynameis..................................'+name);
        
    }	
    
}