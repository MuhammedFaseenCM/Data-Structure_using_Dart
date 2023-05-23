import 'dart:io';

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();

  bst.insert(10);
  bst.insert(8);
  bst.insert(9);

  bst.insert(11);
  bst.insert(6);
  bst.remove(9);
  bst.remove(1);
// print(bst.contains(5));
  //print(bst.getMinValue(bst.root));
  // print("Inorder");
  // bst.inOrder();
  // print("\n Pre-order");
  // bst.preOrder();
  // print("\nPost-order");
  // bst.postOrder();
  // print("");
  // print(bst.findClosest(7));

  print(bst.checkBST(bst.root));
}

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
    root = deleteNode(root, data);
  }

  deleteNode(Node? root, value) {
    if (root == null) {
      return root;
    }
    if (value < root.data) {
      root.left = deleteNode(root.left, value);
    } else if (value > root.data) {
      root.right = deleteNode(root.right, value);
    } else {
      if (root.left == null && root.right == null) {
        return null;
      }
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }
      root.data = getMinValue(root.right);
      root.right = deleteNode(root.right, root.data);
    }
    return root;
  }

  int getMinValue(Node? currentNode) {
    if (currentNode!.left == null) {
      return currentNode.data;
    } else {
      return getMinValue(currentNode.left);
    }
  }

  int getMaxValue(Node? temp) {
    if (temp!.right == null) {
      return temp.data;
    } else {
      return getMaxValue(temp.right);
    }
  }

  void inOrder() {
    inOrderHelper(root);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      stdout.write("${node.data} ");
      inOrderHelper(node.right);
    }
  }

  void preOrder() {
    preOrderHelper(root);
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      stdout.write("${node.data} ");
      preOrderHelper(node.left);

      preOrderHelper(node.right);
    }
  }

  void postOrder() {
    postOrderHelper(root);
  }

  void postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);

      postOrderHelper(node.right);
      stdout.write("${node.data} ");
    }
  }

  int findClosest(int target) {
    Node? temp = root;
    int closest = temp!.data;

    while (temp != null) {
      if ((target - closest).abs() > (target - temp.data).abs()) {
        closest = temp.data;
      }
      if (target < temp.data) {
        temp = temp.left;
      } else if (target > temp.data) {
        temp = temp.right;
      } else {
        break;
      }
    }
    return closest;
  }

  checkBST(Node? node) {
    if (node == null) {
      return true;
    }

    if (node.left != null && getMaxValue(node.left) > node.data) {
      return false;
    }
    if (node.right != null && getMinValue(node.right) < node.data) {
      return false;
    }

    if (checkBST(node.left) != true || checkBST(node.right) != true) {
      return false;
    }

    return true;
  }
}
