//
//  Card.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct Card2: View {
    var body: some View {
        Button(action: {}, label: {
            VStack {
                Image(systemName: "trash")
                Text("Hello, world!")
                    .lineLimit(1)
            }
        })
            .frame(width: 120, height: 100)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(16)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card2()
    }
}
