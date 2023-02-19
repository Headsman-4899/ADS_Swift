//struct Queue<T>: CustomStringConvertible {
//    
//    private var list = LinkedList<T>()
//    
//    mutating func enqueue(element: T) {
//        list.append(element)
//    }
//    
//    mutating func dequeue() -> T? {
//        guard !list.isEmpty, let element = list.first else { return nil }
//        list.remove(element)
//        return element.value
//    }
//    
//    mutating func peek() -> T? {
//        return list.first?.value
//    }
//    
//    var description: String {
//        return list.description
//    }
//}
//
//var queue = Queue<Int>()
