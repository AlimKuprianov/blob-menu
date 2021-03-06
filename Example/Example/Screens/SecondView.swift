//
//  SecondView.swift
//  Example
//
//  Created by Igor K. on 20.05.2020.
//  Copyright © 2020 Ramotion. All rights reserved.
//

import SwiftUI
import BlobMenu

struct SecondView: View {
    
    @Environment(\.menuEnvironment) private var menuModel: BlobMenuModel
    
    var body: some View {
        Screen(color: .background) {
            VStack(alignment: .leading) {
                
                Image("Logo")
                    .padding(.leading, 40)
                
                Text("Menu model")
                    .font(Font.system(size: 24, weight: Font.Weight.semibold))
                    .foregroundColor(.contrastText)
                    .lineLimit(1)
                    .padding(.top, 110)
                    .padding(.horizontal, 40)
                
                Text("Also, the menu can be opened and closed programmatically. Or switch the selected index")
                    .font(Font.system(size: 16))
                    .lineSpacing(6)
                    .foregroundColor(.contrastInformation)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 24)
                    .padding(.horizontal, 40)
                
                HStack(spacing: 16) {
                    Buttons.roundRect(title: "Close") { self.menuModel.closeMenu() }
                    Buttons.roundRect(title: "Open") { self.menuModel.openMenu() }
                    Buttons.roundRect(title: "Next") { self.menuModel.selectIndex(2) }
                }
                .padding(.horizontal, 40)
                .padding(.top, 40)
                
                Spacer()
                HStack { Spacer() }
            }
            .frame(maxHeight: 500)
        }
    }
}
