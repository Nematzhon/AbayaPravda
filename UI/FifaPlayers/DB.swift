//
//  DB.swift
//  FifaPlayers
//
//  Created by Rizayev Nematzhon on 3/28/21.
//

import Foundation
import SQLite3
extension SearchTableView,NationalityTableView{
    
    func openDatabase() -> Bool {
        do {
            let manager = FileManager.default

            let documentsURL = try manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("fifa.db")
            

            var rc = sqlite3_open_v2(documentsURL.path, &db, SQLITE_OPEN_READWRITE, nil)
            if rc == SQLITE_CANTOPEN {
                let bundleURL = Bundle.main.url(forResource: "fifa", withExtension: "db")!
                try manager.copyItem(at: bundleURL, to: documentsURL)
                rc = sqlite3_open_v2(documentsURL.path, &db, SQLITE_OPEN_READWRITE, nil)
                print("Successfully opened connection database!!")
            }

            if rc != SQLITE_OK {
                print("Error: \(rc)")
                return false
            }

            return true
        } catch {
            print(error)
            return false
        }
    }
}
