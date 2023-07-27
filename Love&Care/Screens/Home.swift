//
//  Home.swift
//  Love&Care
//
//  Created by Asalah Sayed on 27/07/2023.
//

import SwiftUI

struct Home: View {
    // Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @State var isAnimating: Bool = false
    let feedback = UINotificationFeedbackGenerator()
    // Body
    var body: some View {
        VStack(alignment: .center, spacing: 30){
            ZStack{
                CircleGroupView(circleGroupColor: .gray)
                Image("baby-boy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, alignment: .center)
                    .offset(y: isAnimating ? 30 : -30)
                    .animation(.easeOut(duration: 2.5).repeatForever(autoreverses: true), value: isAnimating)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 3, y: 30)
            }//: ZStack
            Text("Having children just puts the whole world into perspective. Everything else just disappears")
                .padding()
                .multilineTextAlignment(.center)
                .font(.title3)
                .foregroundColor(.gray)
            Button {
                isOnboarding.toggle()
                playSound(sound: "success", type: "m4a")
                feedback.notificationOccurred(.success)
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(size: 25,design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
        }//: VStack
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                isAnimating.toggle()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
