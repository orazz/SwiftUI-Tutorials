//
//  InsectFactView.swift
//  Africa
//
//  Created by Oraz Atakishiyev on 15.01.2023.
//

import SwiftUI

struct InsectFactView: View {

    let animal: Animal

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: Groubox
    }
}

struct InsectFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsectFactView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()

    }
}
