//this is my main class @P0B
public class P0B {
    /*
 * 1. Return the nth Fibonacci number
 * Test Cases:
 * Input: 0     Output: 0
 * Input: 1    Output: 1
 * Input: 2     Output: 1
 * Input: 10    Output: 55
*/
    //first method which is static and has one integer parameter/Argument.
    public static  integer nFibonacci(integer n){
        //3 integer variables to help manage data 
        integer a=0,b=1,f=0;
        //an if statement to check the value of the parameter
        //if the value is "0" then the function will return the value in variable a; 
        if(n==0)
        {
            f=a;
            return f;
        }
        //if the value is "1" then the function will return the value in variable b;
        else if (n==1)
        {
            f=b;
            return f;
        }
        //if the value is any other positive number then the funtion will then enter a loop  
        else{
            for(integer i=1;i<n;i++){
                //using a for loop the program initialize a counter starting at 1 and running till n(the parameter value )
                //first variable is added to the second variable and then passed to f(thus fibonacci) variable
                f=a+b;
                //the program now updates the variables with the new data and then returns back to the for loop.
                a=b;
                b=f;
                //for loop ends and the then the program returns f
            }
            return f;
        }
    }
    
/*
 * 2. Sort an array of integers.
 * Test Cases:
 * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
 * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
 *
 * Don't use the sort() method... that would be lame.
*/
    public static Integer[] sortArray( Integer[] intList ) {
       //declare varibles for the program data;
       //array list variable that will return the list of the sort.
        integer[] a1=new list<integer>();

        a1=intlist;
        //integer variable to hold temporary value
        integer t=0;
        //integer to store the size(number of items in the list)
        integer p=a1.size();
        //for loop to loop through the list item to sort
        for (integer i=0;i<p;i++)
        {
            //for loop to sort the individual list item
            for(integer j=p-1;j>0;j--)
            {
                if(a1[j]<a1[j-1])
                {
                    t=a1[j-1];
                    a1[j-1]=a1[j];
                    a1[j]=t;
                }
            }
        }
        return a1;
    } 
 /*
 * 3. Return the factorial of n.
 * Test Cases:
 * Input: 0    Output: 1
 * Input: 1    Output: 1
 * Input: 3    Output: 6
*/
@Invocablemethod (label='Sample method1')
    public static void nFactorial( List<id> n) {
       system.debug('Ids of methoid innvocation'+n);
       
        //declare integer variable
        integer f=1;
        //for loop to loop and accumulate the multiples of the counter;
      /*  for(integer i =1;i<=n;i++)
        {
            f *=i;
        }
       return f;*/
        
    }
/*
 * 4. Rotate left
 * Given an array, array, and an integer, n, rotate the values in array left n times and return array
 * Test Cases:
 * Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
 * Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
 * Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
*/
    public static Integer[] rotateLeftNTimes( Integer[] aray, Integer n) {
       //declare variables for the program.
        integer[] ar = new list <integer>();
        ar=aray;
        integer t=0;
        //for loop to loop until the number of left shift 
        for(integer i=0;i<n;i++)
        {
            //a temperor variable stores the first item in the list
            t=ar[0];
            //integer counter and variable to store the number of items in the list
            integer j=0;
            integer x= ar.size();
            //while loop to loop through list item. (x-1)- represent the last but one item in the list
            while(j<(x-1))
            {
                ar[j]=ar[j+1];
                j++;
            }
            //after the loop have shifted all the values to the new position
            //the program then assign the temperor value to the last position of the list
            ar[j]=t;
        } 
        return ar;
    }
/*
 * 5. Balanced Brackets
 * A bracket is any one of the following: (, ), {, }, [, or ]
 * 
 * The following are balanced brackets:
 *    ( )
 *    ( ) ( )
 *    ( ( ) )
 *    ( { [ ] } )
 *
 * The following are NOT balanced brackets:
 *   (
 *   )
 *   ( ( )
 *   ( [ ) ]
 *
 * Return true if balanced
 * Return false if not balanced
*/    
public static Boolean bracketsAreBalanced( String s ) {
boolean found=true;
integer n=s.length();
list<string>e=new list<string>();
for(integer i=0;i<n;i++)
{ 
    e.add(s.mid(i,1));
for(integer j=n;j>n;j--)
{
   
if(s.mid(j,1)==')'||s.mid(j,1)=='}'||s.mid(j,1)==']')
{
    e.remove(j);   
}

}
    if(e.isEmpty()){
    found=true;
}
    else{
        found=false;}
}
return found;
}   
    
/*
 * 6. Create a method that retrieves a list of all accounts and updates those accounts.
 *      Create a custom field on the Account standard object called Size__c that will be a 
 * picklist containing small/medium/large.
 *     Create a method that retrieves a list of all accounts. 
 *         - If an account has between 1-1000 employees then it is classified as small.
 *         - If an account has between 1001-10000 employees it is classified as medium.
*         - If an account has more than 10000 employees it is classified as large.
 *     Update the Size__c field on each account to reflect the amount of employees in the Account.
*/    
   public static void updateAccountSize( ) {
    list < Account> ac = new list <Account>();
       ac=[Select Id,name,NumberOfEmployees from Account];
       
       for(Account a:ac)
       {
       if(a.NumberOfEmployees > 10000){
           Account st = new Account(size__c='Large');
           UPDATE st;
       }
           else if (a.NumberOfEmployees > 1001){
               Account st = new Account(size__c='Medium');
           UPDATE st;
           }
           else
           {
               Account st = new Account(size__c='Small');
           UPDATE st;
           }
       }
} 

/* 
 * 7. Create a method that will find all leads that contain 'ca' in their fields. 
 *     If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
 * Converted' and their description should display the message, "We are no longer doing 
 * business in California."
 */

 public static void updateCALeads( ) {
 //THIS IS A MULTI LIST OR LIST IN A LIST 
 //THE PROGRAM MAKE USE OF FIND TO SEARCH THROUGH THE LEAD THUS "Lead(id,Status,Description)" AND RETURN
 //THOSE WITH CA INTO THE MULTI LIST
     list<list<sObject>> a = [FIND 'CA' IN ALL FIELDS RETURNING  Lead(id,Status,Description)];
     //SINCE WE HAVE MUTIPLE TABLES RETURNING THE PRIOGRAM  
     //ASSIGN THE VERY FIRST TABLE THUS " (lead[])a[0]" TO AN ARRAY LIST THUS "lead[] searc"
     lead[] searc = (lead[])a[0];
     //USING ADVANCE FOR LOOP TO UPDATE THE RECORDS IN THE LEAD TABLE  EXCTRACTED FROM THE MULTI LIST
     for(Lead l:searc)
     {
         l.Status='Closed - Not Converted';
         l.Description='"We are no longer doing business in California."';
          update l;
     }
     
}
    public static void closePastDueOpportunities( ) {
        List <Opportunity> ops = new list <Opportunity>();
        ops=[SELECT ID,CloseDate,StageName FROM Opportunity WHERE CloseDate<Today];
        
        for(Opportunity o: ops)
        {
            if(o.StageName!='Closed Won')
            {
                o.StageName='Closed Lost';
                update o;
            }
        }
 
}

    
}