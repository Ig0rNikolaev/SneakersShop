//
//  ContentView.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 25.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 30) {
            Text("Авторизация")
                .padding()
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAlfa"))
                .cornerRadius(30)
                .padding(.bottom, 30)
                .foregroundColor(Color("darkBrown"))

            VStack {
                TextField("Введите Email", text: $email)
                    .padding()
                    .background(Color("whiteAlfa"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)

                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("whiteAlfa"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)

                Button {
                    print("Войти")
                } label: {
                    Text("Войти")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color(.systemYellow), Color(.systemOrange)], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkBrown"))
                }

                Button {
                    print("Еще не с нами?")
                } label: {
                    Text("Еще не с нами?")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkBrown"))
                }

            }
            .padding()
            .padding(.top, 15)
            .background(Color("whiteAlfa"))
            .cornerRadius(25)
            .padding(30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("bg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
