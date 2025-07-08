public class handlerclass {
    public static void updateDesc(List<Opportunity>oppList){
        for(Opportunity opp :oppList){
            if(opp.Amount!=null && opp.Amount >=1000 && opp.Amount<=5000){
                opp.Description='Hot opportunity';
            }
        }
        
    }

}