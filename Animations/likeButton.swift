//
//  ContentView.swift
//  Animations
//
//  Created by 胡文博 on 2023/06/30.
//

import SwiftUI

//.animation--隐式动画Implict Animation
//显示动画Explict Animation
struct likeButton: View {
    @State private var isLike = false
    var body: some View {
        Image(systemName: isLike ? "heart.fill" : "heart")
            .font(.system(size: 100))
            .foregroundColor(isLike ? .red : .black)
            .scaleEffect(isLike ? 1.5 : 1)
//            .animation(.spring(response: 0.2, dampingFraction: 0.2), value: isLike)
            // mass--质量,影响加速度和惯性,stiffness--刚度,影响弹簧的回弹速度,damping--阻尼,影响了弹簧的减速速率,越大回归稳定越快,initialVelocity--初始速度,影响动画开始的速度和方向
            .animation(.interpolatingSpring(mass: 20, stiffness: 170, damping: 0.2, initialVelocity: -2), value: isLike)
            .onTapGesture {
//                withAnimation {
                    isLike.toggle()
//                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        likeButton()
    }
}
