//
//  TextBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 15/10/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
//            .font(.title)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(
//                size: 24,
//                weight: .semibold,
//                design: .serif
//            ))
        // Si usas números especificos, cuando se cambie el tamaño de letra del iPhone, no se cambiará el tamaño establecido de letra.
//            .baselineOffset(30)
//            .kerning(1) // espacio entre letras
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(
                width: 200,
                height: 100,
                alignment: .center
            )
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
