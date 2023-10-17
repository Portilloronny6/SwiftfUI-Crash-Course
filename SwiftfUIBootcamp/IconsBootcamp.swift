//
//  IconsBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 17/10/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "externaldrive.fill.badge.wifi")
            .renderingMode(.original)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
            .font(.largeTitle)
//            .font(.system(size: 350))
//            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)))
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
