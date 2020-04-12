//
//  CoffeeMachine.swift
//  Coffee machine
//
//  Created by Yaroslav Koniukvoh on 12.04.2020.
//  Copyright © 2020 Yaroslav Koniukvoh. All rights reserved.
//

import Foundation

class CoffeeMachine {
    var water: Int = 12
    var beans: Int = 8
    var milk: Int = 6
    
    init(water: Int = 12,
         beans: Int = 8,
         milk: Int = 6) {
        self.water = water
        self.beans = beans
        self.milk = milk
    }
    
    func addWater() -> String {
        let status = ""
        switch water {
        case 0...3:
            water += 2
            return "Вода добавлена, ёмкость заполнена на 25%"
        case 3..<7:
            water += 2
            return "Вода дабавлена, ёмкость заполнен на 50%"
        case 6...9:
            water += 2
            return "Вода дабавлена, ёмкость заполнен на 75%"
        case 10...water:
            water += 1
            return "Ёмкость с водой заполнен на 100%"
        default:
            print("Что-то пошло не так")
        }
        return status
    }
    
    func addBeans() -> String {
        let status = ""
        switch beans {
        case 0..<3:
            beans += 2
            return "Зерна добавлены, контейнер заполнен на 25%"
        case 3...5:
            beans += 2
            return "Зерна добавлены, контейнер заполнен на 50%"
        case 5...6:
            beans += 1
            return "Зерна добавлены, контейнер заполнен на 75%"
        case 7...beans:
            beans += 1
            return "Зерна добавлены, контейнер заполнен на 100%"
        default:
            print("Что-то пошло не так")
        }
        return status
    }
    
    func addMilk() -> String {
        let status = ""
        switch milk {
        case 0..<3:
            milk += 1
            return "Молоко добавлено, ёмкость заполнена на 25%"
        case 3..<5:
            milk += 1
            return "Молоко добавлено, ёмкость заполнен на 50%"
        case 4...5:
            milk += 1
            return "Ёмкость с молоком заполнана на 75%"
        case 5...milk:
            milk += 1
            return "Ёмкость с молоком заполнана на 100%"
        default:
            print("Что-то пошло не так")
        }
        return status
    }
    
    func makeCoffee() -> String {
        if water <= 3 {
            return "Закончилась вода"
        } else if beans <= 3 {
            return "Закончились зерна"
        } else {
            water -= 3
            beans -= 3
            return "Кофе сделано"
        }
    }
    
    func makeCapuchino() -> String {
        if water <= 3 {
            return "Закончилась вода"
        }
        else if beans <= 3 {
            return "Закончились зерна"
        }
        else if milk <= 2 {
            return "Закончилось молоко"
        } else {
            water -= 3
            beans -= 3
            milk -= 2
            return "Капучино сделано"
        }
    }
    
    func makeEspresso() -> String {
        if water <= 2 {
            return "Закончилась вода"
        }
        else if beans <= 3 {
            return "Закончились зерна"
        } else {
            water -= 2
            beans -= 3
            return "Еспрессо сделано"
        }
    }
}
