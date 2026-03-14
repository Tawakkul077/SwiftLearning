import Foundation

// ============================================
// БОСС-ЗАДАЧА: Профиль пользователя
// ============================================

// Часть 1: Создай словарь профиля
// Ключи: "name", "age", "city", "email"
// Значения: твои данные

// Часть 2: Создай массив навыков (минимум 5)

// Часть 3: Создай Set увлечений (минимум 4)

// Часть 4: Работа с профилем
// - Добавь ключ "country"
// - Измени "city"
// - Получи "name" с ??
// - Получи "phone" с ?? (его нет)
// - Выведи количество полей

// Часть 5: Работа с навыками
// - Добавь навык в конец
// - Вставь "English" на позицию 0
// - Удали последний
// - Проверь есть ли "Swift"
// - Выведи количество, первый и последний

// Часть 6: Работа с увлечениями
// - Добавь увлечение
// - Проверь есть ли "Спорт"
// - Создай Set увлечений друга
// - Найди общие (intersection)
// - Найди все вместе (union)
// - Выведи количество общих

// Часть 7: Финальный вывод
// Выведи всё красиво

var profile = ["name": "emi", "age": "19", "city": "Moscow", "email": "tawakkull13@gmail.com"]

var skills = [
    "Problem Solving",
    "Critical Thinking",
    "Team Collaboration",
    "Communication",
    "Continuous Learning",
    "Swift"
]

var myhobbies: Set = [
    "Football",
    "Chess",
    "Programming",
    "Reading"
]

profile["country"] = "Russia"
profile["city"] = "Tokyo"

let name = profile["name"] ?? "Не указано"
let phone = profile["phone"] ?? "Не указано"
print(profile.count)

skills.append("Working")
skills.insert("English", at: 0)
skills.removeLast()
skills.contains("Swift")
print(skills.count)
print(skills.first)
print(skills.last)


myhobbies.insert("Valleyball")
myhobbies.contains("Спорт")
var friendsHobbies: Set = [
    "Football",
    "Gym",
    "Basketball",
    "Running"
]
myhobbies.intersection(friendsHobbies)
let hobbies = myhobbies.union(friendsHobbies)
print(myhobbies.intersection(friendsHobbies))

print("Мой профиль: \(profile)")
print("Мои навыки: \(skills)")
print("Мои хобби:\(myhobbies)")


