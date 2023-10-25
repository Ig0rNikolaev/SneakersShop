//
//  CatalogViewModel.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 09.08.2023.
//

import Foundation

class CatalogViewModel: ObservableObject {

    static let shared = CatalogViewModel()

    var shoesExclusiveArray = [
        CatalogModel(id: "1",
                     title: "AIR JORDAN 1",
                     imageUrl: "Not found",
                     price: 30000,
                     description: "Майкл Джордан и кроссовки Nike Air Jordan 1 ворвались на площадку НБА в 1985 году."),
        CatalogModel(id: "2",
                     title: "AIR JORDAN 6",
                     imageUrl: "Not found",
                     price: 20000,
                     description: "В Air Jordan VI Майкл выиграл свой первый чемпионат НБА вместе с «Чикаго Буллз»."),
        CatalogModel(id: "3",
                     title: "JORDAN X TRAVIS SCOTT",
                     imageUrl: "Not found",
                     price: 10000,
                     description: "Совместные Air Jordan 4 окрашены в фирменные цвета футбольной команды родного города рэпера Трэвиса Скотта, «Хьюстон Ойлерз»."),
        CatalogModel(id: "4",
                     title: "HIGH «CACTUS JACK»",
                     imageUrl: "Not found",
                     price: 67000,
                     description: "Впервые внезапно поступив в продажу во время премии «Грэмми», а затем в день рождения Трэвиса Скотта, Air Jordan 1 тут же были раскуплены."),
        CatalogModel(id: "5",
                     title: "JORDAN X OFF-WHITE",
                     imageUrl: "Not found",
                     price: 26000,
                     description: "Ныне одни из самых дорогих и востребованных кроссовок, Nike x Off-White Air Jordan 1 были моделью, которая положила начало долгосрочному сотрудничеству."),
        CatalogModel(id: "6",
                     title: "JORDAN X KAWS",
                     imageUrl: "Not found",
                     price: 35000,
                     description: "В 2017 году KAWS объявил о коллаборации с Jordan Brand. В рамках сотрудничества была выпущена замшевая модель AJ 4.")
    ]
}
