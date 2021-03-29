//
//  MyVStackView.swift
//  tutorial
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI
import Foundation

struct MyVStackView: View {
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
        }
        .background(Color.red)
    }
}

