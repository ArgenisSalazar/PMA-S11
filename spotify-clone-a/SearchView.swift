//
//  SearchView.swift
//  spotify-clone-a
//
//  Created by Mac21 on 1/06/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
   
    var body: some View {
        NavigationView {
            VStack{
                ZStack{
                    Color("dark").ignoresSafeArea()
                    VStack {
                        HStack {
                            Text("Search")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            Image("camera")
                                .resizable()
                                .frame(width: 30, height: 26)
                        }
                        .padding()
                        
                        HStack {
                            TextField("Artists, songs, or podcasts", text: $searchText)
                                .padding(7)
                                .padding(.horizontal, 25)
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                                .padding(.horizontal, 10)
                                .overlay(
                                    HStack {
                                        Image(systemName: "magnifyingglass")
                                            .foregroundColor(.gray)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                            .padding(.leading, 16)
                                    }
                                )
                        }
                        .padding(.top, 10)
                        
                        ScrollView {
                            VStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Your top genres")
                                        .foregroundStyle(.white)
                                        .font(.headline)
                                        .padding(.bottom, 5)
                                    HStack {
                                        CardSearchView(genre: "Pop", color: .purple, imagen: "search1")
                                        CardSearchView(genre: "Indie", color: .green, imagen: "search1")
                                    }
                                }
                                .padding(.bottom)
                                
                                VStack(alignment: .leading) {
                                    Text("Popular podcast categories")
                                        .foregroundStyle(.white)
                                        .font(.headline)
                                        .padding(.bottom, 5)
                                    HStack {
                                        CardSearchView(genre: "News & Politics", color: .blue, imagen: "search1")
                                        CardSearchView(genre: "Comedy", color: .orange, imagen: "search1")
                                    }
                                }
                                .padding(.bottom)
                                
                                VStack(alignment: .leading) {
                                    Text("Browse all")
                                        .foregroundStyle(.white)
                                        .font(.headline)
                                        .padding(.bottom, 5)
                                    VStack {
                                        HStack {
                                            CardSearchView(genre: "2021 Wrapped", color: .green, imagen: "search1")
                                            CardSearchView(genre: "Podcasts", color: .blue, imagen: "search1")
                                        }.padding(.bottom)
                                        HStack {
                                            CardSearchView(genre: "Made for you", color: .green, imagen: "search1")
                                            CardSearchView(genre: "Charts", color: .purple, imagen: "search1")
                                        }
                                    }
                                }
                            }
                            .padding()
                        }
                        
                        HStack {
                            VStack{
                                TapBarView(imagen: "log-home", text: "Home")
                            }
                            Spacer()
                            VStack{
                                TapBarView(imagen: "log-search", text: "Search")
                            }
                            Spacer()
                            VStack{
                                TapBarView(imagen: "log-library", text: "Library")
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
