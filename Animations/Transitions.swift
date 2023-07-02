//
//  Transitions.swift
//  Animations
//
//  Created by 胡文博 on 2023/07/02.
//

import SwiftUI

struct Transitions: View {
    @State private var show = false
    var body: some View {
        VStack(spacing: 100) {
            
            Button {
                // .speed(2)可以设定速率,2指原动画效果时间的两倍速
                withAnimation(.default.speed(2)) {
                    show.toggle()
                }
            } label: {
                // 如果想让padding区域也被视为button,需要用带label的方法
                Text(show ? "隐藏图片" : "显示图片")
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 15, leading: 30, bottom: 15, trailing: 30))
                    .background(.pink)
                    .cornerRadius(8)
            }
//            Button(show ? "隐藏图片" : "显示图片") {
//                show.toggle()
//            }
//            .foregroundColor(.white)
//            .padding(EdgeInsets(top: 15, leading: 30, bottom: 15, trailing: 30))
//            .background(.pink)
//            .cornerRadius(8)
            
            VStack{
                if show {
                    // 动画效果需要添加在已经渲染过的对象上
                    Image(systemName: "sun.max.fill")
                        .font(.system(size: 250))
                        .foregroundColor(.yellow)
                    // 利用combination可以链式制定效果 slide+opcity
//                        .transition(.slide.combined(with: .opacity))
                    // asymmetric 不对称的动画方式,可以单独制定动画出入的方式
                        .transition(
                            .asymmetric(
                                insertion: .slide,
                                removal: .move(edge: .bottom))
                        )
                }
                Spacer()
            }
        }
//        .animation(.linear(duration: 2), value: show)
    }
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            // 如果canvas中出现动画无法预览时,可以嵌套一个vstack(模拟器没问题,是xcode的小bug)
            Transitions()
        }
    }
}
