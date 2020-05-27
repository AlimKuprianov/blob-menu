//
//  ThirdView.swift
//  Example
//
//  Created by Igor K. on 20.05.2020.
//  Copyright © 2020 Ramotion. All rights reserved.
//

import SwiftUI
import BlobMenu

struct ThirdView: View {

    @Environment(\.menuEnvironment) private var menuModel: BlobMenuModel
    
    var body: some View {
        Screen(color: .background) {
            VStack {
                logo
                self.title
                self.info
                
                HStack(spacing: 50) {
                    Button("Remove") { self.menuModel.items = BlobMenuItem.standard }
                    Button("Add") { self.menuModel.items = BlobMenuItem.extended }
                }.padding(.top, 40)
                Spacer()
            }
            .frame(maxHeight: 400)
        }
    }
    
    private var title: some View {
        Text("Menu items")
            .font(.subheadline)
            .foregroundColor(.contrastTextColor)
            .lineLimit(1)
            .padding(40)
    }
    
    private var info: some View {
        Text("The menu supports dynamically updating item count. If the UI layout can’t to show all items simultaneously, they will be wrapped in a scroll view.")
            .font(.footnote)
            .foregroundColor(.contrastInformationColor)
            .fixedSize(horizontal: false, vertical: true)
            .padding(.horizontal, 40)
    }
}
