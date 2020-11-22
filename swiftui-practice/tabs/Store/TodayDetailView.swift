//
//  TodayDetailView.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/18.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    @Published var selectedItem = mockItem

    @Published var show = false
}

struct TodayDetailView: View {
    var item: TodayItem
    var animation: Namespace.ID

    var body: some View {
        VStack {
            Image(item.image)
                .frame(height: 200)
                .frame(maxWidth: .infinity)
                .matchedGeometryEffect(id: item.image, in: animation)
                .scaledToFill()
                .clipped()

            Text("hi")

            Spacer()
        }
        .matchedGeometryEffect(id: item.image, in: animation)
    }
}

struct TodayDetailView_Previews: PreviewProvider {
    @Namespace static var animation

    static var previews: some View {
        TodayDetailView(item: mockItem, animation: animation)
    }
}
