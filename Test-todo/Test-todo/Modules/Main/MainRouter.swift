//
//  MainRouter.swift
//  Test-todo
//
//  Created by Руслан Усманов on 07.05.2025.
//

protocol IMainRouter {
    
    func routeToEdit(task: TaskModel)
    
    func routeToDetailedTaskView(task: TaskModel)
    
    func routeToCreate()
}
