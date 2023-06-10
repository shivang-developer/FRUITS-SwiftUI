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
    @State private var isRestarted: Bool = false
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        VStack(alignment: .center, spacing: 20) {
                            Text("Most fruits are natually low in fat, sodium, and calories. Fruits are sources of many essential nutrients, including potassium, dietry fiber, vitamins, and much more.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("RESTARTED")
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                } else {
                                    Text("RESTART")
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            } //: TOGGLE
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8.0, style: .continuous))
                            )
                        } //: VSTACK
                    } label: {
                        LabelView(labelText: "CUSTOMIZATION", labelImage: "paintbrush")
                    }
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
                .navigationTitle("Settings")
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            } //: ScrollView
            .padding()
        } //: NavigationStack
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
