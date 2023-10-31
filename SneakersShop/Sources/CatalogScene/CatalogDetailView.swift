//
//  CatalogDetailView.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 09.08.2023.
//

import SwiftUI

struct CatalogDetailView: View {
    var catalogModel: CatalogModel
    
    var body: some View {
        Text(catalogModel.title)
    }
}

struct CatalogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogDetailView(catalogModel: CatalogModel(id: "1",
                                                     title: "AIR JORDAN 1",
                                                     imageUrl: "Not found",
                                                     price: 30000,
                                                     description: "Майкл Джордан и кроссовки Nike Air Jordan 1 ворвались на площадку NBA в 1985 году."))
    }
}
