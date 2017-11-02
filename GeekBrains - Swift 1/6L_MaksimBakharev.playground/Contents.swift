//1. Реализовать свой тип коллекции очередь (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка полезных для этой коллекции (пример: filter для массивов)

struct PhoneBox {
    var sideA, sideB: Int
    
    func getSize() -> Int {
        return sideA * sideB
    }
}

struct Watch {
    let sideA, sideB: Int
    
    func getSize() -> Int {
        return sideA * sideB
    }
}

struct Queue<T> {
    private var items = [T](){
        didSet {
                print("В очереди", items.count, "объекта", "типа \(items.first.debugDescription)")
        }
    }
    mutating func push(_ item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeFirst()
    }
}

var phoneQueue = Queue<PhoneBox>()
var watchQueue = Queue<Watch>()

phoneQueue.push(PhoneBox(sideA: 3, sideB: 3))
phoneQueue.push(PhoneBox(sideA: 2, sideB: 1))
phoneQueue.push(PhoneBox(sideA: 1, sideB: 5))

phoneQueue.pop()
phoneQueue.pop()

watchQueue.push(Watch(sideA: 1, sideB: 1))

var array  = [1,2,3,4,5,6,7,8,9,10]
array.sort {$0  > $1}
array.map {$0 *  $0}
array.reduce(0) { $0  + $1 }
array.reduce(1) { $0 *  $1 }
array.forEach{
    print($0)
}
