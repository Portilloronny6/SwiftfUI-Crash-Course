//
//  ColorsBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 16/10/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
