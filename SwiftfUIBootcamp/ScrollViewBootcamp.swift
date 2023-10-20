//
//  ScrollViewBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 18/10/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView(.vertical) {
            LazyVStack(content: {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal) {
                        LazyHStack(content: {
                            ForEach(0..<41) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        })
                    }
                }
            })
        }.scrollIndicators(.never)
        
        
        
    }
}

#Preview {
    ScrollViewBootcamp()
}
