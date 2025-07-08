public class Day1 {
    
    public Static void day1()
    {
     string name =  ' sagar';
     integer id =10;
        system.debug('My data'  + name);
    }


public static void mymethod()
{
    Date costumedate = Date.newInstance(1997,1,16);			// for custom date use Date.NewInstance....// same for time only class changed Time.newInstance ....used
    system.debug(costumedate);

    Time costumeTime = Time.newInstance(10,50,55,678);
    system.debug('show time '+ costumeTime);
    
     DateTime dttoday = DateTime.now();		// currrent date and time is variable according time zone....
    system.debug('show todays date ' + dttoday);
     
    DateTime livetoday = DateTime.now();
    string formatedate = livetoday.format('dd-MM-yyyy,HH,mm,ss');
    system.debug('slow.....'+ livetoday);
    
}}