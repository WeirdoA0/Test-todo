//
//  MainInteractor.swift
//  Test-todo
//
//  Created by Руслан Усманов on 07.05.2025.
//

protocol IMainInteractor: AnyInteractor {
    
    func makeInitialLoad()
    
    func loadTasks()
    
    func createTask(
        taskTitle: String,
        taskBody: String
    )
    
    func deleteTask(task: TaskModel)
    
    func updateTask(
        task: TaskModel,
        newTaskTitle: String,
        newTaskBody: String,
        newStatus: Bool
    )
}
