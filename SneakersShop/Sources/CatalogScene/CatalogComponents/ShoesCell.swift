//
//  ShoesCell.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 09.08.2023.
//

import SwiftUI

struct ShoesCell: View {
    var shoes: CatalogModel
    var body: some View {
        VStack(spacing: 2) {
            Image("air1")
                .resizable()
                .scaledToFill()

            HStack {
                Text(shoes.title)
                    .font(.custom("AvenirNext-regular", size: 12))
                Spacer()
                Text("\(shoes.price) $")
                    .font(.custom("AvenirNext-bold", size: 12))
            }
            .padding(.horizontal, 15)
            .padding(.bottom, 7)
        }
        .frame(width: screen.width * 0.46, height: screen.height * 0.18)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 7)
    }
}

struct ShoesCell_Previews: PreviewProvider {
    static var previews: some View {
        ShoesCell(shoes: CatalogModel(id: "1",
                                    title: "AIR JORDAN 1 ",
                                    imageUrl: "Not found",
                                    price: 1500,
                                    description: "Майкл Джордан и кроссовки Nike Air Jordan 1 ворвались на площадку НБА в 1985 году."))
    }
}
