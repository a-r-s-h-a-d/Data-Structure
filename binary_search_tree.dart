class Node {
  int? data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BST {
  Node? root = null;

  //insertion
  void insert(int data) {
    Node? currentNode = root;

    if (currentNode == null) {
      root = Node(data);
      return;
    }

    while (true) {
      if (data < currentNode!.data!) {
        if (currentNode.left == null) {
          currentNode.left = Node(data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

  //contains
  bool contains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data == currentNode.data) {
        return true;
      } else if (data < currentNode.data!) {
        currentNode = currentNode.left;
      } else {
        currentNode = currentNode.right;
      }
    }
    return false;
  }

  //inorder
  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  //preorder
  void preOrder() {
    preOrderHelper(root);
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  //postOrder
  void postOrder() {
    postOrderHelper(root);
  }

  void postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data);
    }
  }
}

void main(List<String> args) {
  BST tree = BST();
  tree.insert(10);
  tree.insert(8);
  tree.insert(11);
  tree.insert(4);
  tree.insert(9);

  print(tree.contains(9));

  tree.inOrder();
  tree.preOrder();
  tree.postOrder();
}
