//
//  StateBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 20/10/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Text(self.myTitle)
                .font(.title)
            
            Text("Count: \(self.count)")
                .font(.headline)
                .underline()
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Button("BUTTON 1") {
                    self.backgroundColor = Color.red
                    self.myTitle = "BUTTON 1 was pressed"
                    self.count += 1
                    
                }
                
                Button("BUTTON 2") {
                    self.backgroundColor = Color.purple
                    self.myTitle = "BUTTON 2 was pressed"
                    self.count += 1
                }
            })
        })
        .foregroundStyle(Color.white)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(self.backgroundColor)
    }
}

#Preview {
    StateBootcamp()
}
