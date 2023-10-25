//
//  AuthView.swift
//  SneakersShop
//
//  Created by Игорь Николаев on 25.07.2023.
//

import SwiftUI

struct AuthView: View {
    @State private var isAuth = true
    @State private var isTabbarView = false
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    var body: some View {
        VStack(spacing: 30) {
            Text(isAuth ? "Авторизация" : "Регистрация")
                .padding(isAuth ? 16 : 24)
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAlfa"))
                .cornerRadius(isAuth ? 30 : 60)
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

                if !isAuth {
                    SecureField("Повторите пароль", text: $confirmPassword)
                        .padding()
                        .background(Color("whiteAlfa"))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                }

                Button {
                    if isAuth {
                        isTabbarView.toggle()
                    } else {
                        self.email = ""
                        self.password = ""
                        self.confirmPassword = ""
                        isAuth.toggle()
                    }
                } label: {
                    Text(isAuth ? "Войти" : "Создать аккаунт")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color(.systemOrange), Color(.systemRed)],
                                                   startPoint: .leading,
                                                   endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkBrown"))
                }

                Button {
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Еще не с нами?" : "Уже есть аккаунт")
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
            .padding(isAuth ? 30 : 12)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("bg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
            .blur(radius: isAuth ? 0 : 7)
        )
        .animation(Animation.easeIn(duration: 0.3), value: isAuth)
        .fullScreenCover(isPresented: $isTabbarView) {
            TabbarView()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
