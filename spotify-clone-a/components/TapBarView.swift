//
//  TapBarView.swift
//  spotify-clone-a
//
//  Created by Mac21 on 1/06/24.
//

import SwiftUI

struct TapBarView: View {
    var imagen: String
    var text: String
    
    var body: some View {
        Image(imagen)
            .resizable()
            .frame(width: 18, height: 20)
        if text == "Home" {
            NavigationLink(text, destination: SignInView())
                .foregroundStyle(.white)
                .fontWeight(.bold)
        } else {
            Text(text)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    TapBarView(imagen: "log-home", text: "Home")
}
