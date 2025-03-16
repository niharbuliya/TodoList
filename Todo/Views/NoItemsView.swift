//
//  NoItemsView.swift
//  Todo
//
//  Created by Nihar Buliya on 15/03/25.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate : Bool = false
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Let's be a productive person.\n What's on your mind?")
                    .padding(.bottom, 20)
                NavigationLink (destination: AddView(), label:{
                    Text("Add Something 🥸")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth:.infinity)
                        .background(Color.secondaryAccent)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
//                .shadow(
//                    color : animate ? Color.purple.opacity(0.7) : Color.accentColor.opacity(0.7),
//                    radius : animate ? 30 : 10,
//                    x : 0.0,
//                    y: animate ? 50 : 30)
//                .scaleEffect(animate ? 1.1 : 1.0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else{return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(
                Animation
                    .default
//                (duration: 2.0)
                    .repeatCount(1)
            ){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
            .navigationTitle("Title")
    }
}
