//
//  BindingBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 20/10/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            self.backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(self.title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color // Puedo cambiar el nombre pero es mejor mantener el nombre de la vista padre
    
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            self.backgroundColor = Color.orange
            self.buttonColor = Color.pink
            self.title = "VAGINA"
        }, label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        })
    }
}
