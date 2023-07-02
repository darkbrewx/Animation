//
//  AnimationSpring.swift
//  Animations
//
//  Created by 胡文博 on 2023/06/30.
//

import SwiftUI

struct AnimationSpring: View {
    @State private var moveDistance = 0
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "heart")
                    .font(.system(size: 50))
                    .offset(x: CGFloat(moveDistance), y: 0)
                    // response--刚度,柔和度,dampingFraction--阻尼,摩擦力
                    .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0.2), value: moveDistance)
                Spacer()
            }
            Button("点击移动爱心") {
                moveDistance += 80
            }
            .font(.title)
        }
    }
}

struct AnimationSpring_Previews: PreviewProvider {
    static var previews: some View {
        AnimationSpring()
    }
}
