//
//  SettingsRowView.swift
//  FRUITS-SwiftUI
//
//  Created by Shivang Mishra on 11/06/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDescription: String? = nil
    
    //MARK: - PROPERTIES
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDescription != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDescription!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PROPERTIES
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Shivang Mishra")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Developer", linkLabel: "Shivang Masterclass", linkDescription: "wikipedia.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
