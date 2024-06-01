//
//  CardSearchView.swift
//  spotify-clone-a
//
//  Created by Mac21 on 1/06/24.
//

import SwiftUI

struct CardSearchView: View {
    var genre: String
    var color: Color
    var imagen: String
    
    var body: some View {
        VStack {
            HStack {
                Text(genre)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Image(imagen)
                    .resizable()
                    .frame(width: 50, height: 50)
            }
        }
        .padding()
        .background(color)
        .cornerRadius(10)
        .frame(height: 100)
    }
}

#Preview {
    CardSearchView(genre: "2021 Wrapped", color: .green, imagen: "search1")
}
