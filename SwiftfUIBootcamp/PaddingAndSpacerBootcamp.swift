//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 17/10/23.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading , content: {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text("This is the description of what we will do on the screen. It is multiple lines and we will align the text to the leading edge.")
            
        })
        .padding(.vertical, 10)
        .padding()
        .background(
            Color.white
                .clipShape(RoundedRectangle(
                    cornerRadius: 10),
                    style: FillStyle()
                )
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                    x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
                    y: 10.0
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
