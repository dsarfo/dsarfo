public abstract class Vehicle {
public integer wheel;
    public integer doors;
    public integer seats;
    
    public void setup1(integer x,integer y,integer z)
    {
        this.wheel=x;
        this.doors=y;
        this.seats=z;
    }
    public void setup2(integer n,integer m){
        this.wheel=n;
        this.seats =m;
    }
}