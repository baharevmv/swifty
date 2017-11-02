//: Playground - noun: a place where people can play

import UIKit

// 1. Написать функцию, которая определяет четное число или нет.
func IsItOdd(_ number: Int) -> Bool {
    if number % 2 == 0 {
        print("Число", number, "четное")
        return(true)
    } else {
        print("Число", number, "нечетное")
        return (false)
    }
}
IsItOdd(85)

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func IsIt3devided(_ number: Int) -> Bool {
    if number % 3 == 0 {
        print("Число", number, "делится на 3")
        return(true)
    } else {
        print("Число", number, "не делится на 3")
        return (false)
    }
}
IsIt3devided(37)


// 3. Создать возрастающий массив из 100 чисел.
// Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

// var Massiv = [Int]()

var Massi = [Int]()
for i in 1...100 {
    Massi.append(i)
}

var x = 1
var n = 1
while n < 100 {
    if IsItOdd(Massi[x]) || IsIt3devided(Massi[x]) {
        Massi.remove(at: x)
//        print("Убрали")
        n += 1
//        print(Massi)
    } else {
        x = x + 1
        n += 1
//        print("идем дальше")
    }
}
print(Massi)


// ====Cheating way=====
// for x in Massi {
//    if !IsItOdd(x) && !IsIt3devided(x) {
//        Massiv.append(x)
//    }
//}
//print(Massiv)



// 4. * Написать функцию, которая добавляет в массив новое число Фибоначчи и добавить при помощи нее 100 элементов: 5. Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

var FibArr = [Double]()
FibArr.append(0)
FibArr.append(1)

func AddingFib (_ another: Int ) {
    let NewNumb = FibArr[another-1] + FibArr[another-2]
    FibArr.append(NewNumb)
}
var m = 2
for m in (2...99) {
    AddingFib(m)
}
print(FibArr)
print(FibArr.count)













