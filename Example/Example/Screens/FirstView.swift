//
//  FirstView.swift
//  Example
//
//  Created by Igor K. on 05.05.2020.
//  Copyright © 2020 Ramotion. All rights reserved.
//

import Foundation
import SwiftUI

struct FirstView: View {
    
    var body: some View {
        Screen(color: .background) {
            VStack {
                logo
                self.title
                self.info
                Spacer()
            }
            .frame(maxHeight: 400)
        }
    }
    
    private var title: some View {
        Text("SwiftUI Blob Menu")
            .font(.subheadline)
            .foregroundColor(.contrastTextColor)
            .lineLimit(1)
            .padding(40)
    }
    
    private var info: some View {
        Text("Open the menu by tapping on the hamburger. To close the menu, just tap outside. In this example, by tapping on the menu you will switch the screen view, but it can be used for other purposes. In code you can update the configuration to the close menu after item has been selected.")
            .font(.footnote)
            .foregroundColor(.contrastInformationColor)
            .fixedSize(horizontal: false, vertical: true)
            .padding(.horizontal, 40)
    }
}
