import Foundation

// ============================================
// ЧАСТЬ 1: Создание Optional
// ============================================

var username: String? = "Эмир"
var score: Int? = nil

print(username)  // Optional("Эмир")
print(score)     // nil

// Разница между типами:
let a: Int = 5    // Обычный Int
let b: Int? = 5   // Optional Int
// a и b — РАЗНЫЕ типы!

// ============================================
// ЧАСТЬ 2: Force Unwrap (!) — ОПАСНО
// ============================================

let definiteValue: String? = "Точно есть"
print(definiteValue!)  // "Точно есть" ✅

// let empty: String? = nil
// print(empty!)  // 💥 CRASH! (раскомментируй — увидишь)

// ============================================
// ЧАСТЬ 3: if let — БЕЗОПАСНО ✅
// ============================================

let possibleNumber = Int("42")

if let number = possibleNumber {
    print("Это число: \(number)")
} else {
    print("Не число")
}

let notNumber = Int("abc")

if let number = notNumber {
    print("Это число: \(number)")
} else {
    print("Не число")  // Выведется
}

// ============================================
// ЧАСТЬ 4: guard let — ДЛЯ ФУНКЦИЙ ✅
// ============================================

func greet(name: String?) {
    guard let unwrappedName = name else {
        print("Имя не указано")
        return
    }
    print("Привет, \(unwrappedName)!")
}

greet(name: "Эмир")  // Привет, Эмир!
greet(name: nil)     // Имя не указано

// ============================================
// ЧАСТЬ 5: Оператор ?? (nil-coalescing)
// ============================================

let savedUsername: String? = nil
let displayName = savedUsername ?? "Гость"
print("Привет, \(displayName)!")  // Привет, Гость!

let actualScore: Int? = 250
let finalScore = actualScore ?? 0
print("Счёт: \(finalScore)")  // Счёт: 250

// ============================================
// ЧАСТЬ 6: Optional Chaining
// ============================================

let message: String? = "hello world"
let uppercased = message?.uppercased()
print(uppercased)  // Optional("HELLO WORLD")

let emptyMessage: String? = nil
let result = emptyMessage?.uppercased()
print(result)  // nil (не крашится!)

// Цепочка:
let text: String? = "Swift"
let count = text?.uppercased().count
print(count)  // Optional(5)

// ============================================
// ЧАСТЬ 7: Множественный unwrap
// ============================================

let input = "42"
let price = "99.5"

if let number = Int(input), let cost = Double(price) {
    print("Число: \(number), Цена: \(cost)")
    let total = Double(number) * cost
    print("Итого: \(total)")
}

// ============================================
// ЧАСТЬ 8: Implicitly Unwrapped Optional (!)
// ============================================

var apiKey: String! = "secret_key_12345"
print(apiKey)  // secret_key_12345 (без Optional)

// Используется редко, в основном для UI элементов
// var button: UIButton!  // "Я знаю, что он будет создан позже"
