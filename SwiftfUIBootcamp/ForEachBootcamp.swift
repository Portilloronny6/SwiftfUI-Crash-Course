//
//  ForEachBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 18/10/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack(content: {
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        })
    }
}

#Preview {
    ForEachBootcamp()
}
