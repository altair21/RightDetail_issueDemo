//
//  SecondViewController.swift
//  RightDetail-IssueDemo
//
//  Created by altair21 on 16/1/15.
//  Copyright © 2016年 altair21. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: NSObjectProtocol {
    func textViewChanged(text: String)
}

class SecondViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    var str: String!
    var delegate: SecondViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.delegate = self
        textView.text = str
    }
    
    func textViewDidChange(textView: UITextView) {
        self.delegate.textViewChanged(textView.text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
