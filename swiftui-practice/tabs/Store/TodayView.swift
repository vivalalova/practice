//
//  TodayView.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct TodayItem {
    var date: Date
    var image: String
    var title: String
    var subTitle: String
    var description: String
}

let mockItem = TodayItem(
    date: Date(),
    image: "carrot-chops",
    title: "APP STORE 呈獻",
    subTitle: "獨家外傳漫畫",
    description: "原著作者帶你進入鬥智世界"
)

struct TodayView: View {
    @Namespace var animation
//    var animation: Namespace.ID

    @EnvironmentObject var detail: DetailViewModel

    var body: some View {
        ScrollView {
            LazyVStack {
                head.padding(.horizontal)

                Card1(item: mockItem, animation: animation)
                    .padding()
                    .onTapGesture {
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                            detail.selectedItem = mockItem
                            detail.show.toggle()
                        }
                    }
//                    .padding(2).clipped().shadow(radius: 3)
//                Card1()
//                    .padding(2).clipped().shadow(radius: 3)
//                Card1()
//                    .padding(2).clipped().shadow(radius: 3)
            }
        }.tabItem { Text("Today") }
    }

    var head: some View {
        VStack {
            HStack {
                Text(Date(), style: .date)
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            }

            HStack {
                Text("Today")
                    .font(.largeTitle)
                    .fontWeight(.heavy)

                Spacer()

                Image(systemName: "person.crop.circle")
                    .frame(width: 44, height: 44)
            }
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
