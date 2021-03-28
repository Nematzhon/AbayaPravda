//
//  ViewController.swift
//  FifaPlayers
//
//  Created by Rizayev Nematzhon on 3/27/21.
//

import UIKit
import SQLite
class SearchViewController: UIViewController {
    let NationalityButton = UIButton()
    var db:OpaquePointer? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search Menu"
        view.backgroundColor = .white
        setNationalityButton()
        /// Open database
        ///
        /// - returns: Return `true` if successful; return `false` on error.

        openDatabase()
        query()
        

        
        // Do any additional setup after loading the view.
    }
    func query() {
      var queryStatement: OpaquePointer?
      if sqlite3_prepare_v2(db,"SELECT nationality FROM players",-1,&queryStatement, nil) == SQLITE_OK {
        print("\n")
        while (sqlite3_step(queryStatement) == SQLITE_ROW) {
          guard let queryResultCol1 = sqlite3_column_text(queryStatement, 0) else {
            print("Query result is nil.")
            return
          }
          let name = String(cString: queryResultCol1)
//            var lst_name : String = []
//            lst_name.append(name)
        
        }
      } else {
          let errorMessage = String(cString: sqlite3_errmsg(db))
          print("\nQuery is not prepared \(errorMessage)")
      }
      sqlite3_finalize(queryStatement)
    }

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
    func setNationalityButton(){
        view.addSubview(NationalityButton)
        NationalityButton.setTitle("Nationality", for: .normal)
        NationalityButton.frame = CGRect(x: 20, y: 20, width: 100, height: 50)
        NationalityButton.backgroundColor = .blue
        NationalityButton.translatesAutoresizingMaskIntoConstraints = false
        NationalityButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        NationalityButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        NationalityButton.addTarget(self, action: #selector(TappedNationality(_:)), for: .touchUpInside)
        
    }
    @objc func TappedNationality(_ sender:UIButton!) {
       print("Button tapped")
    }
    

    


}

