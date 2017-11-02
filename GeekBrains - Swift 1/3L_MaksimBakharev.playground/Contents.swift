//: Playground - noun: a place where people can play

import UIKit
// 1. Описать несколько структур - любой легковой автомобиль и любой грузовик.
// 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, состояние запущен ли двигатель, открыты ли окна, заполненный объем багажника.

struct Car {
    let name: String
    let year: Int
    let volume: Double
    let engineState: engineStates
    var windows: windowsStates
    var occupiedVolume: Double
    
    mutating func openWind() {
        self.windows = .open
    }
    
    mutating func closeWind() {
        self.windows = .closed
    }
    
    mutating func gruzik (_ car : Car, _ kuda: String, _ volume: Double) {
        if kuda == "vnutr" {
            self.occupiedVolume -= volume
        } else if kuda == "naruzhu" {
            self.occupiedVolume += volume
        }
    }

}

struct Truck {
    let name: String
    let year: Int
    let volume: Double
    let engineState: engineStates
    var windows: windowsStates
    var occupiedVolume: Double
    
    mutating func openWind() {
        self.windows = .open
    }
    
    mutating func closeWind() {
        self.windows = .closed
    }
}


// 3. Описать перечисление с возможными действиями с автомобилем - запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

enum engineStates: String {
    case on
    case off
    case error = "Двигатель сломан"
}

enum windowsStates: String {
    case open
    case closed
    case broken = "Нет у вас никакого окна"
}

enum kuda: String {
    case vnutr, naruzhu
}




// 4. Добавить в ваши структуры метод с одним аргументом типа вашего перечисления, который будет менять свойства структуры в зависимости от действия.

// 5. Инициализировать несколько экземпляров ваших структур. Применить к ним различные действия.

var bmv = Car(name: "BMV", year: 1995, volume: 30, engineState: .on, windows: .open, occupiedVolume: 13.0)
var kiasp = Car(name: "Kia Sportage", year: 2013, volume: 50, engineState: .on, windows: .open, occupiedVolume: 24.0)
var man = Truck(name: "MAN", year: 2001, volume: 3000, engineState: .on, windows: .open, occupiedVolume: 400.0)
var kamaz = Truck(name: "Kamaz", year: 1997, volume: 4000, engineState: .on, windows: .open,occupiedVolume: 2300)

bmv.closeWind()
print (bmv.windows)

// 6. Вывести значения свойств экземпляров в консоль.
print (bmv)
print (man)
