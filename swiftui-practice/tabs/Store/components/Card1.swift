//
//  Card1.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct Card1: View {
    var item: TodayItem
    var animation: Namespace.ID

    var body: some View {
        return
            ZStack {
                Image(item.image)
                    .resizable()
                    .matchedGeometryEffect(id: item.image, in: animation)
                    .scaledToFill()
                    .clipped()
                    .frame(maxHeight: 400)

                VStack(alignment: .leading) {
                    Text(item.title)
                        .foregroundColor(.gray)
                        .fontWeight(.bold)

                    Text(item.subTitle)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)

                    Spacer()
                        .frame(maxWidth: .infinity)

                    Text(item.description)
                        .foregroundColor(.white)
                        .font(.body)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
            .aspectRatio(contentMode: .fit)

            .cornerRadius(16)
    }
}

struct Card1_Previews: PreviewProvider {
//    static var item = TodayItem()
    @Namespace static var animation

    static var previews: some View {
        Card1(item: mockItem, animation: animation)
    }
}
