//
//  AnimationTimingBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 22/10/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack(alignment: .center, spacing: nil) {
            Button(action: {
                isAnimating.toggle()
            }, label: {
                Text("Button")
            })
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.6,
                    dampingFraction: 0.7,
                    blendDuration: 1.0
                ), value: isAnimating)
//                .animation(.linear(duration: timing), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimating) // slow -> fast
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimating) // slow -> fast -> slow
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: timing), value: isAnimating) // fast -> slow
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
