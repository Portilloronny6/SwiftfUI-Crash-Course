//
//  ShapesBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 15/10/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.red)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.red, lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(
//                lineWidth: 30,
//                lineCap: .round,
//                dash: [30],
//                dashPhase: 20
//            ) )
            .trim(from: 0.4, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    ShapesBootcamp()
}
