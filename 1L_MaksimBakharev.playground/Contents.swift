//: Playground - noun: a place where people can play

import UIKit

//Формат файла ДР: «1l_ФИ.playground»
// 1. Решить квадратное уравнение.
var a = 1
var b = -2
var c = -3
var Descr = b*b - 4*a*c
if Descr < 0 {
    print("There is no roots")
} else if Descr == 0 {
    print("The only answer is", -b/(2*a))
} else {
    print ("The first answer is", (-Double(b)+sqrt(Double(Descr)))/(2*Double(a)))
    print ("The second answer is", (-Double(b)-sqrt(Double(Descr)))/(2*Double(a)))
}

// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let kat1 = 3
let kat2 = 4
var square = kat1*kat2/2
var hyp = sqrt(Double(kat1*kat1) + Double(kat2*kat2))
var per = Double(kat1) + Double(kat2) + hyp


// 3. *Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var summ = 40000.0
let percent = 7.5
//let years = 5
for i in 1...5 {
    summ = summ + (summ * percent/100)
//    print ("It will be", summ, "in", i, "years on your deposite")
}
print("It will be",summ.rounded(),"in 5 years on your deposite")

