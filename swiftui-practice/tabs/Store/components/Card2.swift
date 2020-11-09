//
//  Card.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct Card2: View {
    let height: CGFloat = 200
    let height1: CGFloat = 100

    var body: some View {
        Button(action: {}, label: {
            VStack {
                VStack(alignment: .leading) {
                    Text("重磅更新").font(.caption)
                    Text("明日之後-末日生存手遊").font(.title2).fontWeight(.medium).foregroundColor(.black)
                    Text("突破讀取界線").font(.title3).fontWeight(.medium).foregroundColor(.gray)

                }.frame(height: height1)


                Image("kiwi-cutie")
                    .resizable()
                    .scaledToFill()
                    .frame(height: height - height1)
                    .clipped()
                    .cornerRadius(8)
            }
        })
            .frame(width: 300, height: height)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card2()
    }
}
