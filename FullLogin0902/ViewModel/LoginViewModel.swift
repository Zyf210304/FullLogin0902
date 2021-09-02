//
//  LoginViewModel.swift
//  FullLogin0902
//
//  Created by 张亚飞 on 2021/9/2.
//

import SwiftUI


class LoginViewModel: ObservableObject {
    
    @Published var username = ""
    @Published var email = ""
    @Published var phNumber = ""
    @Published var about = ""
}
