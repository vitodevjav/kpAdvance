//
//  LoginService.swift
//  kpAdvance
//
//  Created by Kazakevich, Vitaly on 3/4/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

protocol LoginServiceProtocol {
    func login(with email: String, password: String) -> Bool
}

class MockLoginService: LoginServiceProtocol {
    private let registeredEmail = "admin@kpAdvance.com"
    private let password = "admin"

    func login(with email: String, password: String) -> Bool {
        guard email == registeredEmail, self.password == password else { return false }
        return true
    }
}
