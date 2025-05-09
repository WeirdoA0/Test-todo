//
//  Entity+CoreDataProperties.swift
//  Test-todo
//
//  Created by Руслан Усманов on 09.05.2025.
//
//

import Foundation
import CoreData


extension TaskModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskModel> {
        return NSFetchRequest<TaskModel>(entityName: "TaskModel")
    }

    @NSManaged public var taskBody: String?
    @NSManaged public var taskDate: Date?
    @NSManaged public var taskStatus: Bool
    @NSManaged public var taskTitle: String?

}

extension TaskModel : Identifiable {

}
