//
//  CircleImageView.swift
//  Image_tutorial
//
//  Created by 백인찬 on 2021/03/29.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size:200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius:2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        VStack{
//                .edgesIgnoringSafeArea(.all)
            Image("myimage")
                .resizable()
                .scaledToFill()
//                .aspectRatio(contentMode: .fill)
                .frame(height: 330, alignment: .top)
//                .clipped()
                .clipShape(Circle())
                .shadow(color: .green, radius: 10, x: 5, y: 10)
//                .overlay(Circle().foregroundColor(.black).opacity(0.1))
                .overlay(Circle().stroke(Color.green, lineWidth: 10))
                .padding()
                .overlay(
                    Text("hoho")
                        .foregroundColor(.black)
                        .font(.system(size:20))
                        .fontWeight(.bold)
                )
        }
        
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
