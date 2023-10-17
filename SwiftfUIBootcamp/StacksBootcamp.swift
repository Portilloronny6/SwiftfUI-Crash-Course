//
//  StacksBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 17/10/23.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
            })
        })
        
//        ZStack(alignment: .trailing, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//        })
    }
}

#Preview {
    StacksBootcamp()
}
