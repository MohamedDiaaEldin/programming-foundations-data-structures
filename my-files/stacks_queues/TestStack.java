import java.util.Stack;

public class TestStack{
    
    public static void main(String[] args) {

        Stack<String> stack = new Stack<>() ;    

        // add data 
        stack.push("mohamed") ;
        stack.push("Ali") ;
        stack.push("Hossam") ;

        System.out.println(stack);          // print stack elements 


        System.out.println(stack.peek()) ;  // get last element 
        System.out.println(stack.pop()) ;   // remove last element 
        System.out.println(stack.pop()) ;   // remove last element
        System.out.println(stack.pop()) ;
        
       // System.out.println(stack.pop()) ; // will thorw EmptyStackException because stack is empty 
        
        System.out.println(stack) ;
        
    }

}