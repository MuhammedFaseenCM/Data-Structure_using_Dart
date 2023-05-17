class Node {
  Node? left, right;

  int data;

  Node(this.data) {
    left = null;
    right = null;
  }
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node newNode = Node(data);

    Node? currentNode = root;
    if (currentNode == null) {
      root = newNode;
      return;
    }

    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = newNode;
          return;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = newNode;
          return;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

  bool contains(int data) {
    Node? temp = root;
    while (temp != null) {
      if (data < temp.data) {
        temp = temp.left;
      } else if (data > temp.data) {
        temp = temp.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void remove(int data) {
    removeHelper(data, root, null);
  }

  void removeHelper(int data, Node? currentNode, Node? parentNode) {
    while (currentNode != null) {
      if (data < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        if (currentNode.left != null && currentNode.right != null) {}
      }
    }
  }

  int getMinValue(Node? currentNode) {
    if (currentNode!.left == null) {
      return currentNode.data;
    } else {
      return getMinValue(currentNode.left);
    }
  }
}

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();

  bst.insert(5);
  bst.insert(10);
  bst.insert(4);
  bst.insert(2);
  bst.insert(10);
  print(bst.contains(11));
  print(bst.getMinValue(bst.root));
}
