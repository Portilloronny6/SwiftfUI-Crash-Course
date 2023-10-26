//
//  ActionsheetBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 26/10/23.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionsheet: Bool = false
    @State var confirmationDialogOption: ConfirmationDialogOptions = .isOtherPost
    
    var body: some View {
        VStack{
            HStack(content: {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("@username")
                
                Spacer()
                
                Button(action: {
                    confirmationDialogOption = .isMyPost
                    showActionsheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(Color.black)
            })
            .padding()
        }
        .confirmationDialog("Testing confirmation Dialog", isPresented: $showActionsheet) {
            GetConfirmationDialog(confirmationDialogOption: $confirmationDialogOption)
        } message: { Text("Confirmation Dialog") }
        
        Rectangle()
            .aspectRatio(1.0, contentMode: .fit)
    }
}

enum ConfirmationDialogOptions {
    case isMyPost
    case isOtherPost
}


struct GetConfirmationDialog: View {
    
    @Binding var confirmationDialogOption: ConfirmationDialogOptions
    let shareButton: Button = Button("Share") {}
    let reportButton: Button = Button("Report") {}
    let deleteButton: Button = Button("Delete", role: .destructive) {}
    let cancelButton: Button = Button("Cancel", role: .cancel) {}
    
    var body: some View {
        switch confirmationDialogOption {
        case .isMyPost:
            shareButton
            deleteButton
            cancelButton
        default:
            shareButton
            reportButton
            cancelButton
        }
    }
}

#Preview {
    ActionsheetBootcamp()
}
