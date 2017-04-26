//
//  AreaManager.swift
//  Food-Umbala
//
//  Created by Nam Nguyen on 4/21/17.
//  Copyright © 2017 Nam Vo. All rights reserved.
//

import Foundation

class AreaManager {
    
    static let entityName = "Areas"
    
    static func createTable() {
        let sqlStatement = "create table \(entityName)(id integer primary key autoincrement not null, name string)"
        
        var statement_handle : OpaquePointer?
        if sqlite3_prepare_v2(DB.db, sqlStatement, -1, &statement_handle, nil) == SQLITE_OK {
            if sqlite3_step(statement_handle) == SQLITE_DONE {
                print("Created table \(entityName)")
            } else {
                print("Create table \(entityName) Fail! when run step")
                print(String(cString: sqlite3_errmsg(DB.db)))
            }
        } else {
            print("Create table \(entityName) Fail!")
            print(String(cString: sqlite3_errmsg(DB.db)))
        }
        sqlite3_finalize(statement_handle)
    }
    
    // Lấy tất cả danh sách
    static func all() -> [Area] {
        var lsS : [Area] = [Area]()
        let selectQ = "SELECT * FROM Areas;"
        
        var statement_handle : OpaquePointer? = nil
        if sqlite3_prepare_v2(DB.db, selectQ, -1, &statement_handle, nil) == SQLITE_OK {
            while sqlite3_step(statement_handle) == SQLITE_ROW {
                let id = sqlite3_column_int(statement_handle, 0)
                let name = String(cString: sqlite3_column_text(statement_handle, 1))
                
                lsS.append(Area(id: id, name: name))
            }
        }  else {
            print("Select statement to table \(entityName) don't prepared")
            print(String(cString: sqlite3_errmsg(DB.db)))
        }
        sqlite3_finalize(statement_handle)
        return lsS
    }
}
