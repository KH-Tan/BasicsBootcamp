//
//  UI33ActionSheetView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 29/4/24.
//

import SwiftUI

struct UI33ActionSheetView: View {
    @State private var error: SubmitReviewError? = nil
    @State private var password = ""

    @State private var showAlert1 = false
    @State private var showAlert2 = false
    @State private var showAlert3 = false
    @State private var showAlertError = false

    
    @State private var showAlert = false
    @State private var showActionSheet = false
    @State private var showConfirmationDialog = false
    
    var body: some View {
        Spacer()
        
        Text("Tap1 for Default OK")
            .onTapGesture { showAlert1.toggle() }
            .alert("Info", isPresented: $showAlert1) {  }
        Text("Tap2 for Cancel")
            .onTapGesture { showAlert2.toggle() }
            .alert("Info", isPresented: $showAlert2) {
                Button("Dismiss", role: .cancel) {
                }
            }
        Text("Tap3 for OK Cancel")
            .onTapGesture { showAlert3.toggle() }
            .alert("Enter your Password", isPresented: $showAlert3) {
                TextField("Password", text: $password)
                    .textContentType(.postalCode)                // ???????????????????????
                Button("Cancel", role: .cancel) {  }
                Button("OK") {  }
                //Button("OK2") {  }
            }
        
        Text("Tap for OK Cancel Error")
            .onTapGesture {
                error = .noNetworkConnection
                showAlertError.toggle()
            }
            .alert(isPresented: $showAlertError, error: error) {_ in
                Button("Cancel", role: .cancel) {  }
                //Button("OK") {  }
            } message: { error in
                Text(error.recoverySuggestion ?? "Try again later" )
            }
        
        
        
        Divider()
// ----------------------------------------------------------------
        Text("Using Alert")
        Text("(Have to use cancel action to dismiss)")
        Button {
            showAlert.toggle()
        } label: {
            Label("Logout Button", systemImage: "person.fill")
        }
        .alert("Alert", isPresented: $showAlert) {
            Button("Confirm Logout", role: .destructive) {
                print("Logged Out")
            }
            // cancel button is optional  unless custom text/action desired
            Button("Abort Logout", role: .cancel) {
                print("Abort Logout")
            }
        } message: {
            Text("Alert Message")
        }

        
//        .alert(isPresented: $showAlert) {
//            Alert(title: Text("Alert Title"))
//        }

        Divider()
// ----------------------------------------------------------------
        Text("Using Action Sheet (deprecated in future)")
        Text("Syntax is awkward")
        Text("Use Confirmation Dialog instead")
        
        Button {
            showActionSheet.toggle()
        } label: {
            Label("Logout Button", systemImage: "person.fill")
        }
        .buttonStyle(.bordered)
        .tint(.black)
        .controlSize(.large)
        .actionSheet(
            isPresented: $showActionSheet,
            content: {
                ActionSheet(
                    title: Text("ActionSheet Title"),
                    message: Text("ActionSheet Message"),
                    buttons: [
                        .destructive(
                            Text("Confirm Log Out"),
                            action: { print("Logged Out") }
                        ),
                        .cancel(Text("Abort"))       // cancel must be added
                    ]
                )
            }
        )
        
        Divider()
// -----------------------------------------------------------------------------
        Text("Using Confirmation Dialog")
        Button {
            showConfirmationDialog.toggle()
        } label: {
            Label("Delete Button", systemImage: "trash.fill")
        }
        .buttonStyle(.bordered)
        .tint(.red)
        .controlSize(.large)
        .confirmationDialog(
            "Are You Sure?",
            isPresented: $showConfirmationDialog,
            titleVisibility: .visible)
            {
                Button("Confirm Delete", role: .destructive) {
                    print("Deleted")
                }
                Button("Some Button") { print("Some Action") }
                Button("Some Button 2") { print("Some Action 2") }
                
                // Cancel button is added automatically - add only for customization
                Button("Abort Delete", role: .cancel) {
                    print("Abort Delete")
                }
            } message: {
                Text("Confirmation Details...")
            }

        
//        .confirmationDialog(Text("") , isPresented: $showConfirmDialog) {
//            ActionSheet(title: Text("ActionSheet"))
//        }, actions: {
//            Text("Actions")
//        }

        Spacer()
        Text("Some Content").bold()
        Spacer()
        
    }
}



enum SubmitReviewError: Error, LocalizedError {
    case notBoughtProduct
    case noNetworkConnection
    
    var failureReason: String? {
        switch self {
            case .notBoughtProduct:
                return "Did not buy prouct."
            case .noNetworkConnection:
                return "No Internet."
        }
    }
    
    var recoverySuggestion: String? {
        switch self {
        case .notBoughtProduct:
            return "Maybe try next time."
        case .noNetworkConnection:
            return "Please, check settings."
        }
    }
    
    var errorDescription: String? {
        switch self {
            case .notBoughtProduct:
                return "Maybe try next time."
            case .noNetworkConnection:
                return "You are not connected to the internet."
        }
    }
}

#Preview {
    UI33ActionSheetView()
}
