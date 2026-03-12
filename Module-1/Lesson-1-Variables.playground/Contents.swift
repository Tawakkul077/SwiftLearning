import Foundation

// ============================================
// ЧАСТЬ 1: КОНСТАНТЫ И ПЕРЕМЕННЫЕ
// ============================================

// КОНСТАНТА (let) - значение нельзя изменить после создания
let language = "Swift"
let currentYear = 2024

print("Язык: \(language)")
print("Год: \(currentYear)")

// ПЕРЕМЕННАЯ (var) - значение можно менять
var score = 0
print("Начальный счёт: \(score)")

score = 10
print("Счёт изменился: \(score)")

score = score + 5
print("Счёт после прибавления: \(score)")

// Короткая запись:
score += 10  // то же самое что score = score + 10
print("Счёт после += 10: \(score)")


// ============================================
// ЧАСТЬ 2: ТИПЫ ДАННЫХ
// ============================================

// Swift автоматически определяет тип (Type Inference)
let autoNumber = 42        // Int
let autoPrice = 99.99      // Double
let autoText = "Привет"    // String
let autoFlag = true        // Bool

// Можно указать тип явно
let explicitNumber: Int = 42
let explicitPrice: Double = 99.99
let explicitText: String = "Привет"
let explicitFlag: Bool = true


// Основные типы:
let age: Int = 25                  // Целое число
let temperature: Double = 36.6     // Дробное число (точное)
let name: String = "Эмир"          // Текст
let isStudent: Bool = true         // true или false


// ============================================
// ЧАСТЬ 3: РАБОТА СО СТРОКАМИ
// ============================================

let firstName = "Стив"
let lastName = "Джобс"

// Объединение строк (конкатенация)
let fullName = firstName + " " + lastName
print(fullName)

// Интерполяция - вставка значений в строку
let userAge = 20
let greeting = "Привет! Меня зовут \(firstName), мне \(userAge) лет"
print(greeting)

// Многострочная строка
let longText = """
Это длинный текст,
который занимает
несколько строк
"""
print(longText)

// Полезные методы для строк
print("Длина строки: \(fullName.count)")
print("Верхний регистр: \(fullName.uppercased())")
print("Нижний регистр: \(fullName.lowercased())")


// ============================================
// ЧАСТЬ 4: РАБОТА С ЧИСЛАМИ
// ============================================

let a = 10
let b = 3

print("Сложение: \(a + b)")       // 13
print("Вычитание: \(a - b)")      // 7
print("Умножение: \(a * b)")      // 30
print("Деление: \(a / b)")        // 3 (целочисленное!)
print("Остаток: \(a % b)")        // 1

// Для точного деления нужен Double
let x: Double = 10.0
let y: Double = 3.0
print("Точное деление: \(x / y)") // 3.333...


// ============================================
// ЧАСТЬ 5: ПРЕОБРАЗОВАНИЕ ТИПОВ
// ============================================

// Строка в число
let numberText = "123"
let number = Int(numberText)      // Optional(123) - пока не обращай внимания
print("Число из строки: \(number!)")  // 123

// Дробное в целое (обрезает дробную часть)
let pi = 3.14159
let piInt = Int(pi)
print("Pi как целое: \(piInt)")   // 3

// Целое в дробное
let wholeNumber = 100
let decimalNumber = Double(wholeNumber)
print("Целое как дробное: \(decimalNumber)")  // 100.0

// Число в строку
let amount = 500
let message = "У вас \(amount) рублей"
print(message)


// ============================================
// ЧАСТЬ 6: ПРАКТИЧЕСКИЕ ПРИМЕРЫ
// ============================================

// Пример 1: Расчёт площади прямоугольника
let width = 10.5
let height = 7.2
let area = width * height
print("Площадь прямоугольника: \(area) кв.м")

// Пример 2: Расчёт скидки
let originalPrice = 1000.0
let discount = 20.0  // 20%
let discountAmount = originalPrice * discount / 100
let finalPrice = originalPrice - discountAmount
print("Цена со скидкой: \(finalPrice) руб")

// Пример 3: Конвертер валют
let usd = 100.0
let exchangeRate = 92.5  // 1 USD = 92.5 RUB
let rub = usd * exchangeRate
print("\(usd) долларов = \(rub) рублей")
