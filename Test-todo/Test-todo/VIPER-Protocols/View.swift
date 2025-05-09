//
//  View.swift
//  Test-todo
//
//  Created by Руслан Усманов on 07.05.2025.
//

protocol AnyView: AnyObject {
    
    var presenter: AnyPresenter { get set }
}
