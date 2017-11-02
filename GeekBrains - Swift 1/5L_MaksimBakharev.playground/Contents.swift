// 1. Создать протокол Car и описать свойства, общие для автомобилей, а также метод действия.
protocol Car {
    func DoorAreOpen() -> String
    func IsItWork() -> String
}

protocol ConsolePrintable: CustomStringConvertible {
    func printDescription()
}


// 2. Создать расширения для протокола Car и реализовать в нем методы конкретных действий с автомобилем - открыть/закрыть окно, запустить/заглушить двигатель и т.д. По одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей.

extension Car {
    func windowOpen() -> String {
        return("Окно открыто")
    }
    func engineStart() -> String {
        return("Двигатель запущен")
    }
}

extension ConsolePrintable{
    func printDescription( ) {
        description
            print(description)
        CustomStringConvertible.self
    }
}

// 3. Создать два класса, имплементирующих протокол Car - tunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
// 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.



class TunkCar: ConsolePrintable {
    let volume: Int
    let model: String
    
    init(name: String, petrol: Int, passengers: Int, volume: Int, model: String) {
        self.volume = volume
        self.model = model
    }
    var description: String {
        return String(describing: model)
    }
}

class SportCar: ConsolePrintable {
    let model: String
    let power: Int
    let name: String
    let passengers: Int
    
    init(name: String, petrol: Int, passengers: Int, model: String, power: Int) {
        self.model = model
        self.power = power
        self.name = name
        self.passengers = passengers
    }
    
    var description: String {
        return String(describing: model)
    }
}

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
let bmv = SportCar (name: "BMV CAR", petrol: 92, passengers: 2, model: "x5", power: 333)
let man = TunkCar (name: "ferrerro rochier", petrol: 99, passengers: 4, volume: 600, model: "xT")

// 6. Вывести сами объекты в консоль.

bmv.printDescription()
man.printDescription()


