//
//  EditViewController.swift
//  LitIt
//
//  Created by CAUAD09 on 2018. 7. 29..
//  Copyright © 2018년 NEURRRI. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    var memo:Memo?
    var delegate:MemoViewController?

    @IBOutlet weak var editTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        editTextView.text = memo?.context
    }
    
    @IBAction func saveButton(_ sender: Any) {
        delegate?.editedMemo = editTextView.text
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
