//
//  CircleGroupView.swift
//  Love&Care
//
//  Created by Asalah Sayed on 27/07/2023.
//

import SwiftUI

struct CircleGroupView: View {
    @State var isAnimating: Bool = false
    var circleGroupColor: Color = .red
    var body: some View {
        ZStack{
            Circle()
                .stroke(circleGroupColor.opacity(0.2), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(circleGroupColor.opacity(0.2), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//: ZStack
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear{
            isAnimating.toggle()
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CircleGroupView()
    }
}
