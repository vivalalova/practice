//
//  TodayView.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                HStack {
                    Text(Date(), style: .date)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Spacer()
                }.padding(.horizontal)

                HStack {
                    Text("Today")
                        .font(.largeTitle)
                        .fontWeight(.heavy)

                    Spacer()

                    Image(systemName: "person.crop.circle")
                        .frame(width: 44, height: 44)
                }.padding(.horizontal)

                Card1()
                    .padding()
//                    .padding(2).clipped().shadow(radius: 3)
//                Card1()
//                    .padding(2).clipped().shadow(radius: 3)
//                Card1()
//                    .padding(2).clipped().shadow(radius: 3)
            }
        }.tabItem { Text("Today") }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
