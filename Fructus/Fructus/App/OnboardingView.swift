//
//  OnboardingView.swift
//  Fructus
//
//  Created by Oraz Atakishiyev on 10.01.2023.
//

import SwiftUI

struct OnboardingView: View {

    var fruits: [Fruit] = fruitsData

    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
