// 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия. СУПЕРКЛАСС

class Car {
    let name: String
    let petrol: Int
    let passengers: Int
    
    init(name: String, petrol: Int, passengers: Int) {
        self.name = name
        self.petrol = petrol
        self.passengers = passengers
    }
    
    func drive(_ km: Int) {
        print("Проехала", km, "километров")
    }
}

// 2. Описать пару его НАСЛЕДНИКОВ tunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
// 3. В каждом подклассе реализовать метод действия с автомобилем в соответствии с его классом.

class truckCar: Car {
    let volume: Int

    init(name: String, petrol: Int, passengers: Int, volume: Int) {
        self.volume = volume
        super.init(name: name, petrol: petrol, passengers: passengers)
    }
    override func drive(_ km: Int) {
        print("Этот мощный грузовик проехал", km, "километров")
    }

}

class sportCar: Car {
    let model: String
    let power: Int
    
    init(name: String, petrol: Int, passengers: Int, model: String, power: Int) {
        self.model = model
        self.power = power
        super.init(name: name, petrol: petrol, passengers: passengers)
    }
    
    override func drive(_ km: Int) {
        print("Эта крутая спортивная машина проехала", km, "километров")
    }
}

// 4. Создать несколько объектов каждого класса. Применить к ним различные действия.
let bmv = sportCar(name: "BMV X5", petrol: 92, passengers: 2, model: "x5", power: 300)
let man = truckCar(name: "MAN", petrol: 80, passengers: 4, volume: 20000)

// 5. Вывести значения свойств экземпляров в консоль.
print(bmv.name)
print(bmv.model)
bmv.drive(1000)

print(man.name)
print(man.petrol)
man.drive(300)


