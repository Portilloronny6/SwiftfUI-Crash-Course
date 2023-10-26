//
//  PopoverBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 24/10/23.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.orange.ignoresSafeArea()
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Button(action: {
                    withAnimation(.spring()) {
                        showNewScreen.toggle()
                    }
                }, label: {
                    Text("BUTTON")
                        .font(.largeTitle)
                })
                Spacer()
            })
            // METHOD 1 - SHEET
            
//                .sheet(isPresented: $showNewScreen, content: {
//                    NewScreen()
//                })
            
            // METHOD 2 - TRANSITION
            
//            if showNewScreen {
//                ZStack(content: {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                })
//                .zIndex(2.0)
//            }
            
            // METHOD 3 - ANIMATION OFFSET
            
            GeometryReader(content: { geometry in
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .offset(y: showNewScreen ? 0 : geometry.size.height)
                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: showNewScreen)
            })
        }
    }
}


struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment:.topTrailing, content: {
            Color.purple.ignoresSafeArea()
            
            Button(action: {
//                dismiss.callAsFunction()
                withAnimation(.spring()) {
                    showNewScreen.toggle()
                }
            }, label: {
                Text("Vagina")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
            })
    
        })
    }
}


#Preview {
    PopoverBootcamp()
//    NewScreen()
}
