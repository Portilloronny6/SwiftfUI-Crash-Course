//
//  TransitionBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 22/10/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
        
    var body: some View {
        ZStack(alignment: .bottom , content: {
            
            VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Button("BUTTON") {
                    withAnimation(Animation.easeInOut) {
                        showView.toggle()
                    }
                }
                Spacer()
            })
            
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(maxWidth: .infinity, maxHeight: 420)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .opacity
                    ))
            }
            
        })
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
