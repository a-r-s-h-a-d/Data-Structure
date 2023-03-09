class TrieNode {
  late Map<String, TrieNode> children;
  late bool isWord;

  TrieNode() {
    children = {};
    isWord = false;
  }
}

class Trie {
  late TrieNode root;
  Trie() {
    root = TrieNode();
  }

  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }
    node.isWord = true;
  }

  bool search(String word) {
    late TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return true;
  }

  bool startWith(String prefix) {
    late TrieNode node = root;
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return true;
  }
}

void main() {
  Trie trie = Trie();

  trie.insert('apple');
  trie.insert('banana');
  trie.insert('pear');

  print(trie.search('apple'));
  print(trie.search('orange'));

  print(trie.startWith('app'));
  print(trie.startWith('pple'));
}
