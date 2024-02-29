//
//  SwiftDatabaseService.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 2/28/24.
//

import Foundation
import SwiftData

class SwiftDatabaseService {
    static var shared = SwiftDatabaseService()
    var container: ModelContainer?
    var context: ModelContext?
    
    init(){
        do {
            let schema = Schema([GratefulNote.self])
            let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
            container = try ModelContainer(for: schema, configurations: [modelConfiguration])
            if let container {
                context = ModelContext(container)
            }
        }
        catch {
            print(error)
        }
    }
    
    
    func save(gratefulNote:GratefulNote?){
        guard let gratefulNote else { return }
        context?.insert(gratefulNote)
    }
    
    
    func fetchTasks(onCompletion:@escaping([GratefulNote]?,Error?) -> (Void)) {
        let descriptor = FetchDescriptor<GratefulNote>(sortBy: [SortDescriptor<GratefulNote>(\.date)])
        
        do {
            let data = try context?.fetch(descriptor)
            onCompletion(data, nil)
        }
        catch {onCompletion(nil,error)}
    }
    
    func delete(gratefulNote: GratefulNote) {
        context?.delete(gratefulNote)
    }
    
    
}
