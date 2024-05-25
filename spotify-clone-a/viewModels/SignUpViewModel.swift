//
//  SignUpViewModel.swift
//  spotify-clone-a
//
//  Created by Mac21 on 25/05/24.
//

import Foundation
import FirebaseAuth

class SignUpViewModel: ObservableObject {
    
    @Published var elements: [SignUpForm] = [
        SignUpForm(
            title: "What’s your email?",
            input: "",
            helpText: "You’ll need to confirm this email later.",
            keyboardType: .emailAddress,
            value: ""
        ),
        SignUpForm(
            title: "Create a password",
            input: "",
            helpText: "Use atleast 8 characters.",
            keyboardType: .default,
            value: "",
            isSecureField: true
        ),
        SignUpForm(
            title: "What’s your gender?",
            input: "",
            helpText: "",
            keyboardType: .default, 
            value: ""
        ),
        SignUpForm(
            title: "What’s your name?",
            input: "",
            helpText: "This appears on your spotify profile",
            keyboardType: .default,
            value: ""
        ),
    ]
    
    func createUser() {
        let email = elements[0].value.lowercased()
        let password = elements[1].value
        
        print(email, password)
    }
}
