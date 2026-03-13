import Foundation

// ============================================
// ТЕОРЕТИЧЕСКИЙ БЛОК
// ============================================

// Вопрос 1: Что выведет этот код и почему?
//let a: Int? = 5
//let b: Int? = 10
//let sum = a + b
// print(sum)

// Твой ответ:
//15



// Вопрос 2: В чём разница между этими двумя способами?
// Способ 1:
//let score1: Int? = 100
//let result1 = score1!
//
// Способ 2:
//let score2: Int? = 100
//let result2 = score2 ?? 0

// Твой ответ:
//В том что в первом способе мы рискуем и разворачиваем скор1 зная что там находится инт, это небезопасный метод и в случае если в скор1 был бы нил все крашнулось бы. Во втором случае если скор2 был нил то он вернёт 0, если же нет то вернёт значение скор2, в данном случае выдаст 100 так как скор2 не нил.


// Вопрос 3: Что выведет и почему?
//let text: String? = "hello"
//print(text?.count)

// Твой ответ:
//Выведет 5 так как у текста 5 символов. Если бы был бы текст нил, то выведет nil.




//============================================
// ПРАКТИКА
// ============================================
// ЗАДАЧА 1: Безопасное преобразование
// ============================================
// Дано: строка с возрастом пользователя
//let userAge = "25"

// Задание:
// 1. Преобразуй в Int используя Int()
// 2. Используй if let для проверки
// 3. Если преобразование успешно — выведи "Вам {возраст} лет"
// 4. Если не успешно — выведи "Неверный формат возраста"

// Твой код:
//let userAge = "25"
//    if let age = Int(userAge){
//        print("Вам \(age) лет")
//   } else {
//        print("Неверный формат возраста")
//}
        



// ============================================
// ЗАДАЧА 2: Значение по умолчанию
// ============================================
// Дано:
//let savedNickname: String? = nil
//let savedLevel: Int? = 5

// Задание:
// Создай переменные с значениями по умолчанию:
// - displayNickname (если nil → "Игрок")
// - displayLevel (если nil → 1)
// Выведи: "Никнейм: ..., Уровень: ..."

// Твой код:
//let savedNickname: String? = nil
//let savedLevel: Int? = 5
//
//let displayNickname = savedNickname ?? "Игрок"
//let displayLevel = savedLevel ?? 1
//print("Никнейм \(displayNickname), Уровень: \(displayLevel)")




// ============================================
// ЗАДАЧА 3: Калькулятор с проверкой
// ============================================
// Дано: два числа в виде строк
//let number1Str = "10"
//let number2Str = "20"

// Задание:
// 1. Преобразуй обе строки в Int
// 2. Используй if let с запятой для проверки ОБОИХ
// 3. Посчитай сумму, разность, произведение
// 4. Выведи результаты
// 5. Если хотя бы одно не число — выведи "Ошибка ввода"

// Твой код:
//let number1Str = "10"
//let number2Str = "20"
//    if let p1 = Int(number1Str), let p2 = Int(number2Str){
//        print(p1 + p2)
//        print(p1 - p2)
//        print(p1 * p2)
//   } else {
//        print("Ошибка ввода")
//}
//            




// ============================================
// ЗАДАЧА 4: Обработка цены
// ============================================
// Дано: цена товара из базы данных (может быть nil)
//let priceFromDB: Double? = 99.99

// Задание:
// 1. Используй ?? для установки цены
// 2. Если цена nil → используй 0.0
// 3. Посчитай цену со скидкой 10%
// 4. Выведи: "Цена: ..., Со скидкой: ..."

// Твой код:
//let priceFromDB: Double? = 99.99
//let price = priceFromDB ?? 0.0
//let sk = price / 100.0 * 10.0
//let pricesk = price - sk
//print("Цена: \(price), Со скидкой: \(pricesk)")
//


// ============================================
// ЗАДАЧА 5: Работа со строкой
// ============================================
// Дано:
//let userInput: String? = "  SwIfT  "

// Задание:
// 1. Используй Optional Chaining для:
//    - Убрать пробелы (.trimmingCharacters(in: .whitespaces))
//    - Сделать lowercase
//    - Посчитать количество символов
// 2. Выведи результаты
// 3. Проверь что будет если userInput = nil

// Твой код:
//let userInput: String? = "  SwIfT  "
//let without = userInput?.trimmingCharacters(in: .whitespaces)
//let lowercase = userInput?.lowercased()
//let count = userInput?.count
//print("\(without)")
//print("\(lowercase)")
//print("\(count)")
//let userInput: String? = " 123  "
//let without = userInput?.trimmingCharacters(in: .whitespaces)
//let lowercase = userInput?.lowercased()
//let count = userInput?.count
//print("\(without)")
//print("\(lowercase)")
//print("\(count)")




// ============================================
// ЗАДАЧА 6: Конвертер температуры (с Optional)
// ============================================
// Дано: температура в виде строки
//let tempCelsius = "25"

// Задание:
// 1. Преобразуй в Double
// 2. Если успешно — преобразуй в Fahrenheit (F = C * 9/5 + 32)
// 3. Выведи оба значения
// 4. Если ошибка — выведи "Неверный формат температуры"

// Твой код:
//let tempCelsius = "25"
//if let cels = Double(tempCelsius){
//    let far = cels * 9/5 + 32
//    print("Цельсии: \(cels), Фаренгейты: \(far)")
//} else {
//    print("Неверный формат температуры")
//}



// ============================================
// ЗАДАЧА 7: Проверка данных пользователя
// ============================================
// Дано:
//let username: String? = "Эмир"
//let userAge: String? = "20"
//let userEmail: String? = nil

// Задание:
// 1. Проверь username (if let) — выведи "Имя: ..."
// 2. Проверь userAge, преобразуй в Int — выведи "Возраст: ..."
// 3. Для email используй ?? с "Не указан"
// 4. Выведи всю информацию красиво

// Твой код:
//let username: String? = "Эми"
//let userAge: String? = "20"
//let userEmail: String? = nil
//if let name = username{
//    print("Имя: \(name)")
//}
// if let str = userAge, let age = Int(str){
//    print("Возраст: \(age)")
//}
//let email = userEmail ?? "Не указан"
//print ("Емайл - \(email)")




// ============================================
// БОСС-ЗАДАЧА: Валидатор регистрации
// ============================================
// Дано: данные регистрации пользователя
//let regUsername: String? = "emi_dev"
//let regAge: String? = "19"
//let regEmail: String? = "emi@gmail.com"

// Задание:
// Создай систему валидации:
//
// 1. Проверь username:
//    - Если nil → "Ошибка: Имя не указано"
//    - Если длина < 3 символов → "Ошибка: Имя слишком короткое"
//    - Иначе → ✅
//
// 2. Проверь age:
//    - Преобразуй в Int
//    - Если не число → "Ошибка: Неверный формат возраста"
//    - Если < 18 → "Ошибка: Вам должно быть 18+"
//    - Иначе → ✅
//
// 3. Проверь email:
//    - Если nil или пустой → "Ошибка: Email не указан"
//    - Если не содержит "@" → "Ошибка: Неверный email"
//    - Иначе → ✅
//
// 4. Если ВСЕ проверки пройдены:
//    Выведи: "✅ Регистрация успешна! Добро пожаловать, {username}!"
//
// Подсказки:
// - Используй if let, ??, Optional Chaining
// - string.contains("@") — проверяет наличие символа
// - string.count — длина строки

// Твой код:
let regUsername: String? = "emi_dev"
let regAge: String? = "19"
let regEmail: String? = "emi@gmail.com"


if let username = regUsername{
    print(username)
} else {
    print("Ошибка: Имя не указано")
}

if let countUsername = regUsername?.count, countUsername >= 3{
    print("Все верно")
} else {
    print("Ошибка: Имя слишком короткое")
}

if let str = regAge, let age = Int(str){
    print(age)
} else {
    print("Ошибка: Неверный формат возраста")
}
if let str = regAge, let age = Int(str){
    if age < 18{
        print("Ошибка: Вам должно быть 18+")
    } else {
        print("Все верно")
    }

if let email = regEmail{
    print(email)
} else {
    print("Ошибка: Email не указан")
}
if let email = regEmail, email.contains("@"){
        print("Все верно")
    } else {
        print("Ошибка: Неверный email")
}


if let username = regUsername, let countUsername = regUsername?.count, countUsername >= 3,let str = regAge, let age = Int(str),let str = regAge, let age = Int(str), let email = regEmail,let email = regEmail, email.contains("@"){
        print("✅ Регистрация успешна! Добро пожаловать, {username}!")
    }


