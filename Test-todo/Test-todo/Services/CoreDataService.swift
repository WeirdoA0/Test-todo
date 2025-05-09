//
//  CoreDataService.swift
//  Test-todo
//
//  Created by Руслан Усманов on 08.05.2025.
//

import CoreData

protocol ICoreDataService {
    
    func saveTask(task: TaskModel, completion: @escaping () -> Void) throws
    
    func deleteTask(task: TaskModel, completion: @escaping () -> Void) throws
    
    func performFetch() throws -> [TaskModel]
    
    func changePredicate(with string: String, completion: @escaping () -> Void)
    
    func saveChanges() throws
}

final class CoreDataStack: ICoreDataService {
    
    lazy var persistentContainer: NSPersistentContainer = {
         
         let container = NSPersistentContainer(name: "Model")
         
         container.loadPersistentStores { _, error in
             if let error {
                 fatalError("Failed to load persistent stores: \(error.localizedDescription)")
             }
         }
         return container
     }()
    
    lazy var context = persistentContainer.newBackgroundContext()
    
    lazy var sortDescription = NSSortDescriptor(key:"taskDate", ascending: true)
    
    lazy var viewContext = persistentContainer.viewContext
    
    let fetchRequest = TaskModel.fetchRequest()
    
    func saveTask(task: TaskModel, completion: @escaping () -> Void) throws {
        context.insert(task)
        
        do {
            try saveChanges()
            completion()
        } catch {
            throw(error)
        }
        
    }
    
    func deleteTask(task: TaskModel, completion: @escaping () -> Void) throws {
        context.delete(task)
        do {
            try saveChanges()
            completion()
        } catch {
            throw(error)
        }
    }
    
    func performFetch() throws -> [TaskModel] {
        do {
            return try context.fetch(fetchRequest)
        } catch {
            throw error
        }
    }
    
    func changePredicate(with string: String, completion: @escaping () -> Void) {
        if string == "" {
            fetchRequest.predicate = nil
        } else {
            fetchRequest.predicate = NSPredicate(format:"taskTitle CONTAINS %@", string)
        }
        completion()
    }
    
    func saveChanges() throws {
        if context.hasChanges {
            do {
                try context.save()
            }
            catch {
                context.rollback()
                throw(error)
            }
        }
    }
    
}
