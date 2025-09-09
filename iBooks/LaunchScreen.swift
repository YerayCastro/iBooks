//
//  LaunchScreen.swift
//  iBooks
//
//  Created by Yery Castro on 15/4/24.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        Image(.logoiBooksL)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width: 300, height: 300)
            
    }
}

#Preview {
    LaunchScreen()
}
