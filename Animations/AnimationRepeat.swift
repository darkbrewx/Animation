//
//  AnimationRepeat.swift
//  Animations
//
//  Created by 胡文博 on 2023/07/02.
//

import SwiftUI

struct AnimationRepeat: View {
    @State private var amount: CGFloat = 1
    var body: some View {
//        Circle()
//            .stroke(.purple, lineWidth: 50) // 勾勒
//            .frame(width: 300, height: 300)
        
        Button("抢红包") {
//            amount = 2
        }
        .foregroundColor(.white)
        .padding(50)
        .background(.red)
        .clipShape(Circle())
        .overlay {
            Circle()
                .stroke(.red)
                .scaleEffect(amount)
                .opacity(Double(2 - amount))
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: amount)
        }
        .onAppear {
            amount = 2
        }
    }
}

struct AnimationRepeat_Previews: PreviewProvider {
    static var previews: some View {
        AnimationRepeat()
    }
}
