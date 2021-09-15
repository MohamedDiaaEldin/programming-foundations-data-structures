// import Linked in class from java.util lib
import java.util.LinkedList;

// linked list class 
public class SingleLinkedList {
    Node head ;
    
    // Node class
    class Node {
        int data ;
        Node next ;
        
        Node(int data){
            this.data = data ;
        }
    }
    
    
    // add new node at the front of linked list
    public void add(int data){
        if (isEmpty()){
            this.head = new Node(data) ;
        } 
        else{
            Node newNode = new Node(data) ;
            newNode.next = this.head ;
            this.head = newNode ;
        }
    }
    
    private boolean isEmpty(){
        return  this.head == null ;
    }
    
    // override to string methods 
    // it returns a string version of linked list elements 
    @Override
    public String toString(){
        if (isEmpty()){
            return "[ ]" ;
        }
        Node current = this.head ;
        String listString =  "[" ;
        
        while (current.next != null){
            listString += current.data + " , " ;
            current = current.next ;
        }
        
        listString += current.data;
        listString += "]" ;
        return listString ;
    }
    
    // strat point in java
    public static void main(String args[]) {
        // create linkedlist 
        SingleLinkedList list = new SingleLinkedList() ;
        // add data
        list.add(5);
        list.add(6);
        list.add(7);
        
        // print string version of linked list 
        // it will call toString method in linked list class  
        System.out.println(list) ;
        


        /// using LinkedList class that provided by java 
        // create new linked list of type string 
        LinkedList<String> linked  = new LinkedList<>();        
        linked.add("mohamed") ;     // add new node to linked list  
        linked.add("ali") ;         //  add new node to the end of the linked list         
        linked.add(1 ,"alia") ;         //  add new node to the end of the linked list         
        linked.addFirst("hosaam") ; // add new node at index 1 the linked list         
        linked.addLast("zakria") ;  //  add new node to the end of the linked list         

        System.out.println(linked);
        
    }
}