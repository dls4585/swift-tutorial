//
//  ContentView.swift
//  Shared
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack{
                HStack{
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 30.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    withAnimation{
                        self.isActivated.toggle()
                    }
                }
                NavigationLink(destination:MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                } .padding(30)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
