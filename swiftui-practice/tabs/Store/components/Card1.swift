//
//  Card1.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct Card1: View {
    var body: some View {
        return
            ZStack {
                Image("carrot-chops")
                    .renderingMode(.original)

                VStack {
                    Text("APP STORE 呈獻")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)

                    Text("獨家外傳漫畫")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)

                    Spacer()

                    Text("原著作者帶你進入鬥智世界")
                        .foregroundColor(.white)
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding()
            }

            .frame(width: 300, height: 360)
            .clipped()
            .cornerRadius(16)
    }
}

struct Card1_Previews: PreviewProvider {
    static var previews: some View {
        Card1()
    }
}
