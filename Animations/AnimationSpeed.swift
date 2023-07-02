//
//  AnimationSpeed.swift
//  Animations
//
//  Created by 胡文博 on 2023/06/30.
//

import SwiftUI

struct AnimationSpeed: View {
    @State private var moveDistance = 0
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "heart")
                    .font(.system(size: 50))
                    .offset(x: CGFloat(moveDistance), y: 0)
                    // 缓进缓出 easeinout
                    .animation(.easeInOut(duration: 5), value: moveDistance)
                Spacer()
            }
            Button("点击移动爱心") {
                moveDistance += 80
            }
            .font(.title)
        }
    }
}

struct AnimationSpeed_Previews: PreviewProvider {
    static var previews: some View {
        AnimationSpeed()
    }
}
