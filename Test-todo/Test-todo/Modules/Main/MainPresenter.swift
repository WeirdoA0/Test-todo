//
//  MainPresenter.swift
//  Test-todo
//
//  Created by Руслан Усманов on 07.05.2025.
//

protocol IMainPresenter: AnyPresenter {
    
    func didTapOnTask(task: TaskModel)
    
    func didTapOnTaskEditButton(task: TaskModel)
    
    func updateView(with interactor: AnyInteractor)
}
