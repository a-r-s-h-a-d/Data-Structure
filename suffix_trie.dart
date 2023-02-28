class TrieNode {
  late Map<String, TrieNode> children;
  late bool isEnd;
  TrieNode() {
    children = {};
    isEnd = false;
  }
}

class Trie {
  late TrieNode root;

  Trie() {
    root = TrieNode();
  }

  void suffix(String str) {
    for (int i = 0; i < str.length; i++) {
      insert(i, str);
    }
  }

  void insert(int index, String word) {
    TrieNode? node = root;
    for (int i = index; i < word.length; i++) {
      String char = word[i];
      if (!node!.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char];
    }
    node!.isEnd = true;
  }

  bool search(String word) {
    TrieNode? node = root;
    for (String char in word.split('')) {
      if (!node!.children.containsKey(char)) {
        return false;
      }
      node = node.children[char];
    }
    return node!.isEnd;
  }
}

void main() {
  Trie trie = Trie();
  trie.suffix('apple');
  print(trie.search('apple'));
  print(trie.search('app'));
  print(trie.search('pple'));
}
