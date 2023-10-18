//
//  ContentView.swift
//  Fructus
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/16.
//

import SwiftUI
import CoreData

struct ContentView: View {
// MARK: -  プロパティー

    // MARK: - ボディー

    var body: some View {

        ZStack {
            VStack(spacing: 20) {
                Image(.blueberry)
                    .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                Text("ブルーベリー")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .red.opacity(2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                Text("ブルーベリーは甘くて栄養価が高く、\n世界中で大人気の果物です")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal ,16)
                    .frame(maxWidth: 480)

                StartButtonView()

            }//: VStack
        }//: ZStack
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)

        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    .colorBlueberryLight,
                    .colorBlueberryDark
                ]),
                startPoint: .top,
                endPoint: .bottom)
        )
        .cornerRadius(20)
        .padding()
    }

    // MARK: - メソッド
}



#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
