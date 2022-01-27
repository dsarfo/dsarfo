public abstract class Cars extends Vehicle {
   public Cars(){
        system.debug('Testing Constructor!');
    }
   /* public Cars(integer a,integer b)
    {
        system.debug(a,b);
    }*/
    
    public integer suv=0;
    public integer automatic=0;
    public void method1(){
        this.setup1(4,2,4);
        system.debug('new car added with '+this.wheel+' wheels, '+this.doors+' doors and '+this.seats+' seats');
    }

}