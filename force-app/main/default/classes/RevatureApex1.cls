public class RevatureApex1 {
    static integer val1=0;
    integer val=0;
    public RevatureApex1()
    {
        val1 +=1;
        val +=1;
    }
    static{
        system.debug('Static block!');
    }
    public void updaval(integer a)
    {
       val1=a;
    }
   /* public integer getval()
    {
       return val1;
    }*/
 
    
    public void method1()
    {
        list <string> listdays = new list<string>();
        listdays.add('Monday');
        listdays.add('Tuesday');
        listdays.add('Monday');
        listdays.add('Thursday');
        listdays.add('Friday');
        map <integer,string> mapd = new map<integer,string>();
        for(integer i=0;i<listdays.size();i++){
            mapd.put(i+1,listdays[i]);
        }
        system.debug(mapd);
        for(integer i:mapd.keyset())
        {
            system.debug(mapd.get(i));
        }
        
    }
    public void method2()
    {
        //mapping data
        map<integer,string> mapofdays = new map<integer,string>();
        mapofdays.put(1, 'Monday');
        mapofdays.put(2,'Tuesdasy');
        mapofdays.put(3, 'Wednesday');
        mapofdays.put(4, 'Thursday');
        mapofdays.put(5, 'Friday');
        system.debug(mapofdays);
        for(integer i:mapofdays.keyset())
        {
            system.debug(mapofdays.get(i));
        }
     //Array List Collections
string []arr1=new list<string>();
    arr1.add('Monday');
arr1.add('Tuesday');
arr1.add('Wednesday');
arr1.add('Thursday');    
for(string x:arr1){
    system.debug(x);
}
        
    }
    public long factorial(integer a)
    {
        long f=1;
        for(integer i =1;i<=a;i++)
        {
            f *=i;
        }
        return f;
    }
}