//
//  SneakersShopApp.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 25.07.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct SneakersShopApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
