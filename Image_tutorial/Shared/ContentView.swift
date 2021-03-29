//
//  ContentView.swift
//  Shared
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                CircleImageView()
                
//                Image("myimage")
//                    .frame(height:10)
//                    .offset(y:-1100)
//
                HStack {
                    NavigationLink(destination: MyWebView(urlToLoad: "https://velog.io/@dls4585")
                                .edgesIgnoringSafeArea(.all)) {
                        Text("구독하러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                            
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://github.com/dls4585")
                                .edgesIgnoringSafeArea(.all)) {
                        Text("깃허브 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                            
                    }
                }
                .padding(50)
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
