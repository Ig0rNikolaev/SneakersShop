//
//  TabbarView.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 26.07.2023.
//

import SwiftUI

struct TabbarView: View {

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                createTabItem(modul: CatalogView(), name: "Каталог", icon: "menucard")
                createTabItem(modul: CartView(), name: "Корзина", icon: "cart")
                createTabItem(modul: ProfileView(), name: "Профиль", icon: "person.circle")
            }
        }
    }

    func createTabItem<T: View>(modul: T, name: String, icon: String) -> some View {
        modul
            .tabItem {
                Text(name)
                Image(systemName: icon)
            }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
