//
//  ProductDetailView.swift
//  PizzaDeliverySwiftUI
//
//  Created by Олег Федоров on 26.06.2022.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    
    var body: some View {
        Text(product.title)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: "1",
                                           title: "Peperroni",
                                           imageURL: "not found",
                                           price: 10,
                                           description: "Traditional italian pizza"))
    }
}
