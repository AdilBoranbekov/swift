import Foundation

var stop = false

while !stop {
    print("""
    ======= Lab 2 =======
    1 - FizzBuzz
    2 - Prime Numbers
    3 - Temperature Converter
    4 - Shopping List
    5 - Word Counter
    6 - Fibonacci
    7 - Grades
    8 - Palindrome
    9 - Calculator
    10 - Unique Characters
    0 - Exit
    """)
    print("Выбери номер:")

    if let c = readLine(), let n = Int(c) {
        if n == 1 { problem1() }
        else if n == 2 { problem2() }
        else if n == 3 { problem3() }
        else if n == 4 { problem4() }
        else if n == 5 { problem5() }
        else if n == 6 { problem6() }
        else if n == 7 { problem7() }
        else if n == 8 { problem8() }
        else if n == 9 { problem9() }
        else if n == 10 { problem10() }
        else if n == 0 {
            print("Пока!")
            stop = true
        } else {
            print("Неверный выбор")
        }
    } else {
        print("Ошибка ввода")
    }
}

