//
//  CatalogView.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 26.07.2023.
//

import SwiftUI

struct CatalogView: View {
    let layout = [GridItem(.adaptive(minimum: screen.width / 2.4))]

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {

                Section("Редкие модели") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: layout, spacing: 15) {
                            ForEach(CatalogViewModel.shared.shoesExclusiveArray, id: \.id) { item in
                                NavigationLink {
                                    CatalogDetailView(catalogModel: item)
                                } label: {
                                    ShoesCell(shoes: item)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding()
                    }
                }

                Section("Каталог") {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: layout) {
                            ForEach(CatalogViewModel.shared.shoesExclusiveArray, id: \.id) { item in
                                NavigationLink {
                                    CatalogDetailView(catalogModel: item)
                                } label: {
                                    ShoesCell(shoes: item)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }.navigationTitle(Text("Каталог"))
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
