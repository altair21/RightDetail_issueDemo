//
//  TableViewController.swift
//  RightDetail-IssueDemo
//
//  Created by altair21 on 16/1/15.
//  Copyright © 2016年 altair21. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, SecondViewControllerDelegate {
    
    @IBOutlet weak var rightLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
            secondVC.delegate = self
            secondVC.str = rightLabel.text
            self.navigationController!.pushViewController(secondVC, animated: true)
        }
    }
    
func textViewChanged(text: String) {
    rightLabel.text = text
    
    let string = text as NSString
    let contentSize = string.sizeWithAttributes([NSFontAttributeName: self.rightLabel.font])
    let contentWidth = contentSize.width
    let contentHeight = contentSize.height
    let rightLabelMaxX = CGRectGetMaxX(rightLabel.frame)
    rightLabel.frame = CGRectMake(rightLabelMaxX - contentWidth, rightLabel.frame.origin.y, contentWidth, contentHeight)
    print(rightLabel.frame.origin.x, self.rightLabel.frame.origin.y, self.rightLabel.frame.size.width, self.rightLabel.frame.size.height)
}

}
