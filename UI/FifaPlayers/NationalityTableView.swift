//
//  NationalityTableView.swift
//  FifaPlayers
//
//  Created by Rizayev Nematzhon on 3/28/21.
//

import UIKit
import SQLite3

class NationalityTableView: UITableViewController {
    let cell = "cell"
    var db: OpaquePointer? = nil
    var nation_lst:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        if openDatabase(){
            query()
        }
        setupTableView()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    }
    func setupTableView(){
    //Registers a class for use in creating new table cells.
    tableView.register(UITableViewCell.self, forCellReuseIdentifier:cell)
    
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
    func query() {
        
      var queryStatement: OpaquePointer?
        if sqlite3_prepare_v2(db,"SELECT nationality FROM players",-1,&queryStatement, nil) == SQLITE_OK {
        while (sqlite3_step(queryStatement) == SQLITE_ROW) {
          guard let queryResultCol1 = sqlite3_column_text(queryStatement, 0) else {
            print("Query result is nil.")
            return
          }
          let nation = String(cString: queryResultCol1)
            if nation_lst.contains(nation){
                continue
            }
            else{
                nation_lst.append(nation)
            }

        
        }
      } else {
          let errorMessage = String(cString: sqlite3_errmsg(db))
          print("\nQuery is not prepared \(errorMessage)")
      }
      sqlite3_finalize(queryStatement)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nation_lst.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
        // Configure the cell...
        nation_lst.sort()
        cell.textLabel?.text = nation_lst[indexPath.row]
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
