import Foundation

class Node {
    var value: String
    var next: Node?

    init(_ value: String) {
        self.value = value
    }
}

func printLinkedList(_ startingNode: Node?) {
    guard let validNode = startingNode else { return }
    print(validNode.value)
    printLinkedList(validNode.next)
}

func main() {
    let node1 = Node("node1")
    let node2 = Node("node2")
    let node3 = Node("node3")

    node1.next = node2
    node2.next = node3
    node3.next = nil

    printLinkedList(node1)
}

main()
