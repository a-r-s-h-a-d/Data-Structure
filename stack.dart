class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class Stack {
  Node? top;

  void push(data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top == null) {
      print("stack underflow");
      return;
    }
    top = top!.next;
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);

  stack.pop();

  stack.display();
}


/*
input
stack.push(1);
stack.push(2);
stack.push(3);

stack.pop();
output-->2 1
 */