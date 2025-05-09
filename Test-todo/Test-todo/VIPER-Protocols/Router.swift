//
//  Router.swift
//  Test-todo
//
//  Created by Руслан Усманов on 07.05.2025.
//

protocol AnyRouter: AnyObject {
    
    var presenter: AnyPresenter { get }
    
    static func configure() -> AnyRouter
}
