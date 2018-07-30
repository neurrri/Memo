//
//  MemoListViewController.swift
//  LitIt
//
//  Created by CAUAD09 on 2018. 7. 26..
//  Copyright © 2018년 NEURRRI. All rights reserved.
//
/*
    가지고 있는 메모의 리스트를 보여준다.
    태그 별로 불러와야한다.
    좌로 슬라이드하면 삭제나 잠금이 있어야한다.
    편집키를 만들어서 편집을 누르면 이동이 가능하도록 해야한다.
    샵키는 네비게이션이 아니고 햄버거로 바꾸고, 햄버거에서 아래에 태그목록을 가면 모든 태그가 보이는 테이블 뷰로 이동해야한다.
 */

import UIKit

class MemoListViewController: UITableViewController {
    
    var tag:Tag?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = tag?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        guard let rowCount = tag?.memoes?.count else {
            return 0
        }
        return rowCount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell", for: indexPath)

        guard let memo = tag?.memoes?[indexPath.row] else {
            return cell
        }
        cell.textLabel?.text = memo.context
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MemoSegue" {
            guard let destination = segue.destination as? MemoViewController , let selectedIndex = self.tableView.indexPathForSelectedRow?.row , let memo = tag?.memoes?[selectedIndex] else {
                return
            }
            destination.memo = memo
            
        }
    }
    

}
