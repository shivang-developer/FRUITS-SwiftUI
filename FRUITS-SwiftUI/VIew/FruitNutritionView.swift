//
//  FruitNutritionView.swift
//  FRUITS-SwiftUI
//
//  Created by Shivang Mishra on 11/06/23.
//

import SwiftUI

struct FruitNutritionView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Box", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                } //: FOR EACH
            } //: DisclosureGroup
        } //: GroupBox
    }
}

//MARK: - PREVIEW
struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitsData[0]).previewLayout(.fixed(width: 375, height: 480)).padding()
    }
}
