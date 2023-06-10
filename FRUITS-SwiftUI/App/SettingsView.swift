//
//  SettingsView.swift
//  FRUITS-SwiftUI
//
//  Created by Shivang Mishra on 11/06/23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode

    //MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 20) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are natually low in fat, sodium, and calories. Fruits are sources of many essential nutrients, including potassium, dietry fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    } label: {
                        LabelView(labelText: "Fructus", labelImage: "info.circle")
                    }
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Shivang Mishra")
                        SettingsRowView(name: "Designer", content: "Shivang")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLabel: "Shivang Masterclass", linkDescription: "wikipedia.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@Shivang", linkDescription: "twitter.com")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    } label: {
                        LabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                } //: VSTACK
            } //: ScrollView
            .navigationTitle("Settings")
            .padding()
            .toolbar {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
        } //: NavigationStack
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
