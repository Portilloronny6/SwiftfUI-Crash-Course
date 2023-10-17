//
//  GradientsBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 16/10/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.red.gradient
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [
//                            Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
//                        ]),
//                    startPoint: .top,
//                    endPoint: .bottomTrailing
//                )
//                .radialGradient(
//                    colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))],
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400
//                )
                .angularGradient(
                    AnyGradient(Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))])),
                    center: .topLeading,
                    startAngle: .degrees(0),
                    endAngle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientsBootcamp()
}
