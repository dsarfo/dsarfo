public WITH SHARING class aaPage52 {
    //declaring property in apex
    //its kind of similar to variables but does a lot more by(data validation before a change is made). 
    // property definition can have one or two blocks thus the code in a get accessor executes when the property is read.
    //The code in a set accessor executes when the property is assigned a new value.
public Integer X { get; set; }
public Integer X2 { get; set; }
    //using the constructor to set values for the property 
public aaPage52() {
X = 0;
X2 = 0;
}
 //this is a function with return type PageReference  
public PageReference TestX() {
    /*
    List<Account> acc  = new list<Account>();
    acc=[select iD,firstname,Lastname,contactID from Account];
    console.log(acc.lastname);*/
    //Assign the value in the X property to a string variable using the get accessor 
String strX = ApexPages.currentPage().getParameters().get('X');
if (strX != null) {
    //passing a string leteral to an integer explicitly
this.X = Integer.ValueOf(strX);
}
return null;
}
public PageReference TestX2() {
return null;
}
}