//
//  ProductCell.swift
//  PizzaDeliverySwiftUI
//
//  Created by Олег Федоров on 26.06.2022.
//

import SwiftUI

struct ProductCell: View {
    var product: Product
    
    var body: some View {
        VStack(spacing: 2) {
            Image("pepperoni")
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-Regular", size: 12))
                Spacer()
                Text("\(product.price) $")
                    .font(.custom("AvenirNext-Bold", size: 12))
            }
            .foregroundColor(.black)
            .padding(.horizontal, 16)
            .padding(.bottom, 8)
        }.frame(width: screen.width * 0.45,
                height: screen.width * 0.55,
                alignment: .center)
        .background(.white)
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1",
                                     title: "Peperroni",
                                     imageURL: "not found",
                                     price: 10,
                                     description: "Traditional italian pizza"))
    }
}
