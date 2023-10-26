//
//  ConditionalBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 21/10/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
            
            Button(action: {
                isLoading.toggle()
            }, label: {
                Text("IS LOADING: \(isLoading.description)")
            })
            
            if isLoading {
                ProgressView()
            }
            
            
//            Button {
//                showCircle.toggle()
//            } label: {
//                Text("Circle Button: \(showCircle.description)")
//            }
//            
//            Button(action: {
//                showRectangle.toggle()
//            }, label: {
//                Text("Rectangle Button: \(showRectangle.description)")
//            })
//            
//            Spacer()
//            
//            if showCircle {
//                Circle()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
//            

        })
    }
}

#Preview {
    ConditionalBootcamp()
}
