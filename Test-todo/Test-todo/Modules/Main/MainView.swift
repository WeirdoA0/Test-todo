//
//  MainView.swift
//  Test-todo
//
//  Created by Руслан Усманов on 07.05.2025.
//

import UIKit

protocol IMainView: AnyView {
    
    var tasks: [TaskModel] { get set }
    
    func didLoadTask(task: TaskModel)
    
    func didUpdateTask(with newTaskData: TaskModel, at index: IndexPath)
    
    func didDeleteTask(at index: IndexPath)
}

final class MainView: UIViewController, IMainView {
    
    var presenter: any AnyPresenter
    
    var tasks: [TaskModel]
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didLoadTask(task: TaskModel) {
        
    }
    
    func didUpdateTask(with newTaskData: TaskModel, at index: IndexPath) {
        
    }
    
    func didDeleteTask(at index: IndexPath) {
        
    }
}
