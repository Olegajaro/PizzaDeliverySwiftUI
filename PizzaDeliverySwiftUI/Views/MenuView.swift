//
//  MenuView.swift
//  PizzaDeliverySwiftUI
//
//  Created by Олег Федоров on 26.06.2022.
//

import SwiftUI

struct MenuView: View {
    
    private let layout = [GridItem(.adaptive(minimum: screen.width / 2.2))]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Section("Recommended") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layout, spacing: 16) {
                        ForEach(MenuViewModel.shared.recommendedProducts,
                                id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                            }
                        }
                    }.padding()
                }
            }
            
            Section("Menu") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layout) {
                        ForEach(MenuViewModel.shared.recommendedProducts,
                                id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                            }
                        }
                    }.padding(8)
                }
            }
        }.navigationTitle(Text("Menu"))
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
