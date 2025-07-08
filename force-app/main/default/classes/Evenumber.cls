public class Evenumber {
    public void m1(){
        integer totalsum=0;
    List<integer> inlist= new list <integer>();
        for(integer i=1;i<=10;i++){
        inlist.add(i);
        }
    system.debug('list val:'+inlist);
        for(integer i=0;i<inlist.size();i++){
            if(math.mod(inlist[i], 2)==0){
                totalsum=totalsum+inlist[i];
                system.debug('totalsum'+totalsum);
            }
            
        }
    }
}