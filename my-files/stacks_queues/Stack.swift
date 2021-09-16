class Stack {
    var stackArray = [String]() 
    
    // push 
    // add new item at the top of the stack
    func push(item:String){
        self.stackArray.append(item)
    }
    
    // pop 
    // remove last item and return it 
    func pop() ->String?{ // return String or null
        let removed = self.stackArray.last   
        if removed != nil {
            self.stackArray.removeLast()
            return removed!
        }
        return nil
    }
    
    // peek 
    // return last item 
    func peek() ->String?{
        return self.stackArray.last
    }
    
    func  description() ->String {
        if self.stackArray.last == nil {return "[ ]"}
        
        var stackString = "["
        for item in self.stackArray {
            stackString += item + " , " 
        } 
        stackString += "]"
        return stackString
    }
    
}

// create new stack 
var studentNames:Stack = Stack()
// add data to the stack 
studentNames.push(item:"mohamed")
studentNames.push(item:"ali")
studentNames.push(item:"hossam")


print(studentNames.description())       // print string version iof stack 

print("peek:" + studentNames.peek()!)  // get last item of the stack 
print("pop: " + studentNames.pop()!)   // remove last item from the stack 
print("peek:" + studentNames.peek()!)  // get last item from the stack 

print(studentNames.description())       // print string version iof stack 

