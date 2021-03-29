//
//  ContentView.swift
//  Shared
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .tracking(0)
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(25)
                .truncationMode(.tail)
                .shadow(color: Color.red, radius: 1.5, x: 1, y: 3)
                .padding(20)
                .background(Color.yellow)
                .cornerRadius(20)
                
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            Text("안녕하세요!!")
                .background(Color.gray)
                .foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
