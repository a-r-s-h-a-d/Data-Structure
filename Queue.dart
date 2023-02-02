class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class Queue {
  Node? front = null;
  Node? rear = null;

  void enqueue(data) {
    Node newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
    }
    rear!.next = newNode;
    rear = newNode;
  }

  void dequeue() {
    if (front == null) {
      print('empty');
    }
    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }

  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue q = Queue();
  q.enqueue(1);
  q.enqueue(2);
  q.enqueue(3);
  q.enqueue(4);

  q.dequeue();

  q.display();
}


/* 

Output-->2  3  4

*/