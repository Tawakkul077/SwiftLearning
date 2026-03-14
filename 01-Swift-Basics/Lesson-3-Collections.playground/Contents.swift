import Foundation

// ============================================
// СОЗДАНИЕ МАССИВА
// ============================================

// Способ 1: Массив с элементами
let numbers = [1, 2, 3, 4, 5]
let names = ["Эмир", "Алиса", "Боб"]

print(numbers)  // [1, 2, 3, 4, 5]
print(names)    // ["Эмир", "Алиса", "Боб"]

// Способ 2: Пустой массив (нужно указать тип!)
var emptyStrings: [String] = []
var emptyNumbers = [Int]()

print(emptyStrings)  // []
print(emptyNumbers)  // []

// Способ 3: Массив с одинаковыми элементами
let fiveZeros = Array(repeating: 0, count: 5)
print(fiveZeros)  // [0, 0, 0, 0, 0]


// ============================================
// ДОСТУП ПО ИНДЕКСУ
// ============================================

let fruits = ["Яблоко", "Банан", "Апельсин"]
//               [0]       [1]       [2]

print(fruits[0])  // "Яблоко"
print(fruits[1])  // "Банан"
print(fruits[2])  // "Апельсин"

// ⚠️ ОСТОРОЖНО! Если индекса нет — программа крашнется:
// print(fruits[3])  // 💥 CRASH! Index out of range


// ============================================
// СВОЙСТВА МАССИВА
// ============================================

let numbers = [10, 20, 30, 40, 50]

// Количество элементов
print(numbers.count)  // 5

// Пустой ли массив?
print(numbers.isEmpty)  // false

let empty: [Int] = []
print(empty.isEmpty)  // true

// Первый элемент (Optional!)
print(numbers.first)  // Optional(10)
print(empty.first)    // nil

// Последний элемент (Optional!)
print(numbers.last)   // Optional(50)
print(empty.last)     // nil


// ============================================
// ИЗМЕНЕНИЕ МАССИВА
// ============================================

// let — нельзя менять!
// var — можно менять

var scores = [10, 20, 30]

// Добавить в конец
scores.append(40)
print(scores)  // [10, 20, 30, 40]

// Добавить несколько элементов
scores.append(contentsOf: [50, 60])
print(scores)  // [10, 20, 30, 40, 50, 60]

// Вставить на определённую позицию
scores.insert(5, at: 0)  // Вставить 5 на индекс 0
print(scores)  // [5, 10, 20, 30, 40, 50, 60]

// Изменить элемент по индексу
scores[0] = 100
print(scores)  // [100, 10, 20, 30, 40, 50, 60]


// ============================================
// УДАЛЕНИЕ ЭЛЕМЕНТОВ
// ============================================

var numbers = [10, 20, 30, 40, 50]

// Удалить по индексу
numbers.remove(at: 2)  // Удаляет элемент с индексом 2 (это 30)
print(numbers)  // [10, 20, 40, 50]

// Удалить последний
numbers.removeLast()
print(numbers)  // [10, 20, 40]

// Удалить первый
numbers.removeFirst()
print(numbers)  // [20, 40]

// Удалить все
numbers.removeAll()
print(numbers)  // []


// ============================================
// ПОЛЕЗНЫЕ МЕТОДЫ
// ============================================

var numbers = [3, 1, 4, 1, 5, 9, 2, 6]

// Сортировка (создаёт новый массив)
let sorted = numbers.sorted()
print(sorted)   // [1, 1, 2, 3, 4, 5, 6, 9]
print(numbers)  // [3, 1, 4, 1, 5, 9, 2, 6] — оригинал не изменился!

// Сортировка на месте (меняет сам массив)
numbers.sort()
print(numbers)  // [1, 1, 2, 3, 4, 5, 6, 9]

// Переворот массива
let reversed = numbers.reversed()
print(Array(reversed))  // [9, 6, 5, 4, 3, 2, 1, 1]

// Перемешать
numbers.shuffle()
print(numbers)  // [случайный порядок]

// Минимум и максимум (Optional!)
let nums = [5, 2, 8, 1, 9]
print(nums.min())  // Optional(1)
print(nums.max())  // Optional(9)











import Foundation

// ============================================
// СОЗДАНИЕ СЛОВАРЯ
// ============================================

// Способ 1: Словарь с элементами
let ages = [
    "Эмир": 20,
    "Алиса": 22,
    "Боб": 19
]
print(ages)  // ["Эмир": 20, "Алиса": 22, "Боб": 19]

// Способ 2: Пустой словарь (нужно указать типы!)
var emptyDict: [String: Int] = [:]
var anotherEmpty = [String: String]()

print(emptyDict)  // [:]

// Тип словаря: [ТипКлюча: ТипЗначения]
// [String: Int] — ключи String, значения Int
// [Int: String] — ключи Int, значения String



// ============================================
// ДОСТУП К ЗНАЧЕНИЯМ
// ============================================

let scores = [
    "Математика": 95,
    "Физика": 88,
    "История": 92
]

// Доступ по ключу — ВСЕГДА возвращает Optional!
print(scores["Математика"])  // Optional(95)
print(scores["Химия"])       // nil (ключа нет)

// Почему Optional?
// Потому что ключа может не быть в словаре

// Безопасный доступ с ??
let math = scores["Математика"] ?? 0
print(math)  // 95

let chemistry = scores["Химия"] ?? 0
print(chemistry)  // 0



// ============================================
// ИЗМЕНЕНИЕ СЛОВАРЯ (только var!)
// ============================================

var prices = [
    "Хлеб": 50,
    "Молоко": 80
]

// Добавить новый элемент
prices["Яйца"] = 120
print(prices)  // ["Хлеб": 50, "Молоко": 80, "Яйца": 120]

// Изменить существующий
prices["Хлеб"] = 55
print(prices)  // ["Хлеб": 55, "Молоко": 80, "Яйца": 120]

// Удалить элемент
prices["Молоко"] = nil
print(prices)  // ["Хлеб": 55, "Яйца": 120]



// ============================================
// СВОЙСТВА СЛОВАРЯ
// ============================================

let user = [
    "name": "Эмир",
    "city": "Москва",
    "job": "iOS Developer"
]

// Количество пар
print(user.count)  // 3

// Пустой ли?
print(user.isEmpty)  // false

// Получить все ключи
print(user.keys)  // ["name", "city", "job"]

// Получить все значения
print(user.values)  // ["Эмир", "Москва", "iOS Developer"]




// ============================================
// ПРОВЕРКА НАЛИЧИЯ КЛЮЧА
// ============================================

let inventory = [
    "яблоки": 10,
    "бананы": 5,
    "апельсины": 8
]

// Способ 1: Проверить через if let
if let apples = inventory["яблоки"] {
    print("Яблок: \(apples)")
} else {
    print("Яблок нет")
}

// Способ 2: Проверить наличие ключа
if inventory["бананы"] != nil {
    print("Бананы есть!")
}

// Способ 3: Проверить через keys
if inventory.keys.contains("апельсины") {
    print("Апельсины в наличии")
}




// ============================================
// УДАЛЕНИЕ ЭЛЕМЕНТОВ
// ============================================

var data = [
    "a": 1,
    "b": 2,
    "c": 3
]

// Способ 1: Присвоить nil
data["a"] = nil
print(data)  // ["b": 2, "c": 3]

// Способ 2: removeValue
let removed = data.removeValue(forKey: "b")
print(removed)  // Optional(2) — возвращает удалённое значение
print(data)     // ["c": 3]

// Удалить все
data.removeAll()
print(data)  // [:]







import Foundation

// ============================================
// СОЗДАНИЕ SET
// ============================================

// Способ 1: Set с элементами
let fruits: Set = ["Яблоко", "Банан", "Апельсин"]
print(fruits)  // {"Банан", "Яблоко", "Апельсин"} — порядок случайный!

// Способ 2: Пустой Set (нужно указать тип!)
var emptySet = Set<String>()
var anotherEmpty: Set<Int> = []

// Способ 3: Set из массива (дубликаты удалятся!)
let numbers: Set = [1, 1, 2, 2, 3, 3, 3]
print(numbers)  // {1, 2, 3} — только уникальные!
print(numbers.count)  // 3, не 7!



// ============================================
// ДУБЛИКАТЫ УДАЛЯЮТСЯ
// ============================================

let withDuplicates = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
let uniqueSet: Set = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

print(withDuplicates.count)  // 10 (Array сохраняет дубликаты)
print(uniqueSet.count)       // 4 (Set удаляет дубликаты)

// Практическое применение:
let visitors = ["Эмир", "Алиса", "Эмир", "Боб", "Алиса", "Эмир"]
let uniqueVisitors: Set = ["Эмир", "Алиса", "Эмир", "Боб", "Алиса", "Эмир"]
print("Всего визитов: \(visitors.count)")        // 6
print("Уникальных посетителей: \(uniqueVisitors.count)")  // 3



// ============================================
// ОСНОВНЫЕ ОПЕРАЦИИ
// ============================================

var skills: Set = ["Swift", "iOS", "Xcode"]

// Количество элементов
print(skills.count)  // 3

// Пустой ли?
print(skills.isEmpty)  // false

// Добавить элемент
skills.insert("Git")
print(skills)  // {"Swift", "iOS", "Xcode", "Git"}

// Удалить элемент
skills.remove("Xcode")
print(skills)  // {"Swift", "iOS", "Git"}

// Проверить наличие (ОЧЕНЬ БЫСТРО!)
print(skills.contains("Swift"))  // true
print(skills.contains("Python")) // false

// Удалить все
skills.removeAll()
print(skills)  // []



// ============================================
// ОПЕРАЦИИ НАД МНОЖЕСТВАМИ (математика!)
// ============================================

let frontend: Set = ["HTML", "CSS", "JavaScript"]
let backend: Set = ["Python", "JavaScript", "SQL"]

// Объединение (union) — все элементы из обоих
let allSkills = frontend.union(backend)
print(allSkills)  // {"HTML", "CSS", "JavaScript", "Python", "SQL"}

// Пересечение (intersection) — только общие элементы
let common = frontend.intersection(backend)
print(common)  // {"JavaScript"}

// Разность (subtracting) — элементы из первого, которых нет во втором
let onlyFrontend = frontend.subtracting(backend)
print(onlyFrontend)  // {"HTML", "CSS"}

// Симметричная разность — элементы, которые НЕ общие
let unique = frontend.symmetricDifference(backend)
print(unique)  // {"HTML", "CSS", "Python", "SQL"}



// ============================================
// ПРЕОБРАЗОВАНИЕ
// ============================================

// Array → Set (удалить дубликаты)
let arrayWithDups = [1, 2, 2, 3, 3, 3]
let setFromArray = Set(arrayWithDups)
print(setFromArray)  // {1, 2, 3}

// Set → Array
let setOfNames: Set = ["Боб", "Алиса", "Эмир"]
let arrayOfNames = Array(setOfNames)
print(arrayOfNames)  // ["Боб", "Алиса", "Эмир"] — порядок случайный!

// Практика: убрать дубликаты из массива
let messyArray = [5, 1, 3, 1, 5, 2, 3, 4, 2, 1]
let cleanArray = Array(Set(messyArray))
print(cleanArray)  // [1, 2, 3, 4, 5] — уникальные, но порядок случайный!

// Если нужен порядок — сортируем:
let sortedClean = Array(Set(messyArray)).sorted()
print(sortedClean)  // [1, 2, 3, 4, 5]
