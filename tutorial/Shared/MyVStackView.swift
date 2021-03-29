//
//  MyVStackView.swift
//  tutorial
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI
import Foundation

struct MyVStackView: View {
    
    // 데이터 연동시킨다
    @Binding
    var isActivated: Bool
    
    // 생성자를 만들어 줘야함
    init(isActivated: Binding<Bool> = .constant(false)) {
       _isActivated = isActivated
    }
    
    var body: some View {
        VStack{
            Text("1!")
                .fontWeight(.bold)
//                .font(.system(size: 60))
                .font(.largeTitle)
            Text("2!")
                .fontWeight(.bold)
    //            .font(.system(size: 60))
                .font(.largeTitle)
            Text("3!")
                .fontWeight(.bold)
                .font(.largeTitle)
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

