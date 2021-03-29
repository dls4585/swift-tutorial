//
//  ContentView.swift
//  Shared
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
//        formatter.dateFormat = "YYYY년 M월 d일"
        formatter.dateStyle = .medium
        return formatter;
    }()
    
    var today = Date()
    
    var trueOrFalse: Bool = false
    
    var number: Int = 123
    
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")
                .tracking(0)
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(10)
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
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자입니다 : \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
