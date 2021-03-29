//
//  ContentView.swift
//  Shared
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebView(urlToLoad: "https://www.naver.com")
        
        NavigationView{
            
            HStack {
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.naver.com")
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                    Text("Naver")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.daum.net")
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                    Text("Daum")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.google.com")
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                    Text("Google")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                        .padding(20)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
