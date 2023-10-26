//
//  NavigationViewBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 25/10/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            // Do not use another navigation stack inside a navigation view
            ScrollView {
                
                NavigationLink(destination: MyOtherScreen()) {
                    Text("Hello, World")
                }
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
            
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    })
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        MyOtherScreen()
                    } label: {
                        Image(systemName: "gear")
                    }
                    .tint(Color.red)

                }
            })
        }
    }
}


struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
            Color.green.ignoresSafeArea()
//                .navigationTitle("Green Screen")
//                .navigationBarBackButtonHidden()
            
            VStack {
                Button("Back Button") {
                    dismiss.callAsFunction()
                }
                NavigationLink {
                        Text("Third Screen")
                    } label: {
                        Text("Click here")
                }
            }

        })
    }
}

#Preview {
    NavigationViewBootcamp()
}
