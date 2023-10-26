//
//  AlertBootcamp.swift
//  SwiftfUIBootcamp
//
//  Created by Ronny David Portillo Machado on 25/10/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    var body: some View {
        ZStack {
            
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded 🥲"
                    showAlert.toggle()
                }
                
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 🥳"
//                    alertMessage = "Your video is now public! Bitch"
                    showAlert.toggle()
                }

                
            }
            .alert(getAlertInfo(), isPresented: $showAlert) {
                MyAlert(backgroundColor: $backgroundColor, alertType: $alertType)
            } message: {
                Text("")
            }
        }
    }
    
    func getAlertInfo() -> String {
        switch alertType {
        case .success:
            "This was a success"
        case .error:
            "This was an error"
        case nil:
            "Error"
        }
    }
}

enum MyAlerts {
    case success
    case error
}

struct MyAlert: View {
    
    @Binding var backgroundColor: Color
    @Binding var alertType: MyAlerts?
    
    var body: some View {
        switch alertType {
        case .success:
            Button("Cancel", role: .cancel) {
                
            }
            
            Button("Hurrayy!", role: .destructive) {
                backgroundColor = Color.green
            }
        case .error:
            Button("Cancel", role: .cancel) {
                
            }
        case nil:
            Button("Error maldito", role: .cancel) {
                
            }
        }
    }
}

#Preview {
    AlertBootcamp()
}
