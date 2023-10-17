//
//  ImageBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 17/10/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("Octicons-mark-github")
//            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.blue)
//            .clipped()
//            .cornerRadius(30)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//            )
            
    }
}

#Preview {
    ImageBootcamp()
}
