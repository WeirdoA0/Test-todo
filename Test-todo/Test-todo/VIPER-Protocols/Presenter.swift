//
//  Presenter.swift
//  Test-todo
//
//  Created by Руслан Усманов on 07.05.2025.
//

protocol AnyPresenter: AnyObject {
    
    var view: AnyView? { get set }
    
    var interactor: AnyInteractor { get set }
    
    var router: AnyRouter? { get set }
}
