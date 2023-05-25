import 'dart:io';

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();

  bst.insert(10);
  bst.insert(8);
  bst.insert(9);

  bst.insert(11);
  bst.insert(6);
  bst.delete(9);

  bst.insertToBst(1);
  bst.delete(1);

  // print(bst.bfs());

  print(bst.contains(1));
  bst.insertToBst(100);
  bst.insertToBst(5);
  print("smallest value :  ${bst.getMinValueBst(bst.root)}");
  print("Largest value  :  ${bst.getMaxValueBst(bst.root)}");
  print("Inorder");
  bst.inOrder();
  print("");
  // print("\n Pre-order");
  // bst.preOrder();
  // print("\nPost-order");
  // bst.postOrder();
  // print("");
  // print(bst.findClosest(7));

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
  breadthFirstSearch() {
    List<Node> queue = [];
    List<int> data = [];
    queue.add(root!);
    while (queue.isNotEmpty) {
      var value = queue.removeAt(0);
      data.add(value.data);
      if (value.left != null) {
        queue.add(value.left!);
      }
      if (value.right != null) queue.add(value.right!);
    }
    return data;
  }

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

  insertToBst(int value) {
    Node newNode = Node(value);

    Node? tempNode = root;
    if (tempNode == null) {
      root = newNode;
      return;
    }

    while (true) {
      if (value < tempNode!.data) {
        if (tempNode.left == null) {
          tempNode.left = newNode;
          return;
        } else {
          tempNode = tempNode.left;
        }
      } else {
        if (tempNode.right == null) {
          tempNode.right = newNode;
          return;
        } else {
          tempNode = tempNode.right;
        }
      }
    }
  }

  delete(int data) {
    root = deleteNodeBst(root, data);
  }

  deleteNodeBst(Node? root, data) {
    if (root == null) {
      return root;
    }
    if (data < root.data) {
      root.left = deleteNodeBst(root.left, data);
    } else if (data > root.data) {
      root.right = deleteNodeBst(root.right, data);
    } else {
      if (root.right == null && root.left == null) {
        return null;
      }
      if (root.right == null) {
        return root.left;
      } else if (root.left == null) {
        return root.right;
      }

      root.data = getMinValue(root.right);
      root.right = deleteNodeBst(root.right, root.data);
    }

    return root;
  }

  getMinValueBst(Node? root) {
    if (root == null) {
      return null;
    }
    if (root.left == null) {
      return root.data;
    }
    return getMinValueBst(root.left);
  }

  getMaxValueBst(Node? root) {
    if (root == null) {
      print("Empty tree");
      return null;
    }
    if (root.right == null) {
      return root.data;
    }

    return getMaxValueBst(root.right);
  }

  checkBst(Node? node) {
    if (node == null) {
      return true;
    }
    if (node.left != null && getMinValueBst(node.left) > node.data) {
      return false;
    }
    if (node.right != null && getMaxValueBst(node.right) < node.data) {
      return false;
    }
    if (checkBst(node.left) != true || checkBst(node.right) != true) {
      return false;
    }
    return true;
  }
}
