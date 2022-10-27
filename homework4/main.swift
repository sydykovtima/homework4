import Foundation
var string0 = "кратные2:  "
var string1 = "кратные3:  "
var string2 = "кратные4:  "
var string3 = "кратные5:  "
    for number in 1...1000{
        if number % 2 == 0{
            string0 += ("\(number),")
            print(string)
        }
        if number % 3 == 0 {
            string1 += ("\(number),")
            print(string1)
        }
        if number % 4 == 0 {
            string2 += ("\(number),")
            print(string2)
        }
        if number % 5 == 0 {
            string3 += ("\(number),")
            print(string3)
        }
    }


var string = "айфон,макбук,учиться,телефон,микрофон,камера,петь,танцевать,кола,нитро,магазин,дорога,машина,крышка,дом,дверь,зубачистка,руль,рука,нога,голова"
var slovo = ""
var slova = ""
func wuy(){
    for i in string {
        if i != "," && i != "."{
            slovo += "\(i)"
        }else{
            slova += slovo
            slova += (" \(slovo.count) Букв, ")
            slovo = ""
        }
    }
}
wuy()
print(slova)

//Калькуялтор

func plus(num1: Double, num2: Double) {
    print(num1 + num2)
}

func minus(num1: Double, num2: Double) {
    print(num1 - num2)
}

func multiply(num1: Double, num2: Double) {
    print(num1 * num2)
}

func devide(num1: Double, num2: Double) {
    print(num1 / num2)
}

var sin = 0.0
var cos = 0.0
var tg = 0.0
var ctg = 0.0

func sinus(num: Double) {
    sin = (((4.0 * num)*(180.0 - num)) / (40500.0 - (180.0 - num)))
}

func cosinus(num:Double) {
    sinus(num: (3.14159 / 2 - num))
    cos = sin
}
func tangenc(num: Double) {
    sinus(num: num)
    cosinus(num: num)
    tg = sin / cos
}

func cotangenc(num: Double) {
    sinus(num: num)
    cosinus(num: num)
    ctg = cos / sin
}

cosinus(num: 90)
print( cos)


print("Введите первое число:")
var numb1 = readLine()!

print("Что сделать? (плюс, минус, делить, умножить, синус, косинус, тангенс, котангенс)")
var action = readLine()!

print("Введите второе число:")
var numb2 = readLine()!

func action1(word:String) {
    switch word {
    case "плюс", "+": plus(num1: Double(numb1) ?? 0, num2: Double(numb2) ?? 0)
    case "минус", "-" : minus(num1: Double(numb1) ?? 0, num2: Double(numb2) ?? 0)
    case "умножить", "*" : multiply(num1: Double(numb1) ?? 0, num2: Double(numb2) ?? 0)
    case "делить", ":", "/" : devide(num1: Double(numb1) ?? 0, num2: Double(numb2) ?? 0)
    case "синус" : sinus(num: Double(numb1) ?? 0); print(sin)
    case "косинус" : cosinus(num: Double(numb1) ?? 0); print(cos)
    case "тангенс" : tangenc(num: Double(numb1) ?? 0); print(tg)
    case "котангенс" : cotangenc(num: Double(numb1) ?? 0); print(ctg)
    default:
        print("Что то пошло пошло не так")
    }
}

print("Ответ:")
action1(word: action)




