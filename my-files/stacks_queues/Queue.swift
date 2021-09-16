class Queue {
    var queueArray = [String]() 
    var size = 0 
    
    func length() -> Int{
        return self.size
    }
    // enqueue 
    // add new item at the top of the stack
    func enqueue(item:String){
        self.queueArray.append(item)
        self.size += 1
    }
    
    // dequeue 
    // remove first item and return it 
    func dequeue() ->String?{ // return String or null
        let removed = self.queueArray.first   
        if removed != nil {
            self.queueArray.removeFirst()
            self.size -= 1
            return removed!
        }
        return nil
    }

    // peek 
    // return first item 
    func peek() ->String?{
        return self.queueArray.first
    }
    
    func  description() ->String {
        if self.queueArray.first == nil {return "[ ]"}
        
        var stackString = "["
        for item in self.queueArray {
            stackString += item + " , " 
        } 
        stackString += "]"
        return stackString
    }
    
}

// create new queue 
var studentNames:Queue = Queue()
// add data to the queue 
studentNames.enqueue(item:"mohamed")
studentNames.enqueue(item:"ali")
studentNames.enqueue(item:"hossam")


print(studentNames.description())               // print string version iof stack 
print("Queue size: ",studentNames.length())      //print queue size before removing 

print("peek:" + studentNames.peek()!)           // get first item of the stack 
print("pop: " + studentNames.dequeue()!)        // remove first item from the stack 
print("peek:" + studentNames.peek()!)           // get first item from the stack 

print(studentNames.description())               // print string version iof stack 
print("Queue size: " , studentNames.length())  // print queue size after removing 

