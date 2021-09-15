# node class 
class Node:   
    def __init__(self, data, next=None) -> None:
        self.next = None
        self.data = data

# linked list class 
class SingleLinkedList:
    # head node 
    # the first node in linked list 
    head = None

    ## add first 
    def add(self, data):
        if self.head == None:
            self.head = Node(data)
        else:
            new_node = Node(data)
            new_node.next = self.head
            self.head = new_node

    # convert linked list node's data into string  
    def __str__(self) -> str:
        if self.head == None:
            return '[ ]'
    
        current = self.head
        list_string = '['
        while current.next != None:
            list_string += str(current.data) + ' , '
            current = current.next
        
        list_string += str(current.data)
        list_string += ']'
        return list_string


# create linkedlist
linked = SingleLinkedList()
## add data
linked.add(5)
linked.add(6)
linked.add(7)

# print string version of linked list 
# it will call __str__ method in linked list class  
print(linked)


