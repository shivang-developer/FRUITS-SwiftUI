//
//  FruitRowView.swift
//  FRUITS-SwiftUI
//
//  Created by Shivang Mishra on 11/06/23.
//

import SwiftUI

struct FruitRowView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 10) {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80.0, height: 80.0, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.30), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } //: VSTACK
        } //: HSTACK
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0]).previewLayout(.sizeThatFits)
    }
}
