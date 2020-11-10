//
//  TodoDetailRow.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/10.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct TodoDetailRow: View {
    
    @ObservedObject var todo: TodoEntity
    
    var body: some View {
        HStack {
            CategoryImage(TodoEntity.Category(rawValue: todo.category))
            CheckBox(checked: .constant(true)){
                Text(self.todo.task ?? "no title")
            }
        }
    }
}

struct TodoDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let newTodo = TodoEntity(context: context)
        
        newTodo.task = "将来への人間関係づくり"
        newTodo.state = TodoEntity.State.done.rawValue
        newTodo.category = 0
        return TodoDetailRow(todo: newTodo)
    }
}