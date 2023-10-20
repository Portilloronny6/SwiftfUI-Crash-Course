//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 20/10/23.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        contentLayer
    }
    
    var contentLayer: some View {
        VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(self.backgroundColor)
    }
    
    func buttonPressed() -> Void {
        self.backgroundColor = Color.yellow
    }
    
    
}

#Preview {
    ExtractedFunctionsBootcamp()
}
