//
//  ContentView.swift
//  FRUITS-SwiftUI
//
//  Created by Shivang Mishra on 10/06/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationStack {
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
                
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        } //: NAVIGATION STACK
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
