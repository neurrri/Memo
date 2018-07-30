//
//  MemoViewController.swift
//  LitIt
//
//  Created by CAUAD09 on 2018. 7. 26..
//  Copyright © 2018년 NEURRRI. All rights reserved.
//
/*
    해당되는 메모를 불러와야하고, 텍스트뷰를 누르면 즉시 수정이 가능해야하고, 수정을 시작하면 위의 삭제가 완료로 변해서 저장을 시켜줘야한다.
    텍스트 말고 다른 기능은 차차하도록 하자.
 */

import UIKit

class MemoViewController: UIViewController, UITextViewDelegate {
    
    var memo:Memo?
    var editedMemo:String?
    
    @IBOutlet weak var memoView: UITextView!


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = memo?.date
        memoView.text = memo?.context
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if editedMemo == nil {
            memoView.text = memo?.context
        } else {
            memoView.text = editedMemo
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let editViewController = segue.destination as? EditViewController
        let selectedText = self.memoView.text
        if let sameText = selectedText {
            editViewController?.memo = memo
        }
        
        editViewController?.delegate = self
        
    }
    

}
