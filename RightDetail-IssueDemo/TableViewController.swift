//
//  TableViewController.swift
//  RightDetail-IssueDemo
//
//  Created by altair21 on 16/1/15.
//  Copyright © 2016年 altair21. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, SecondViewControllerDelegate {
    
    @IBOutlet weak var tableCell: UITableViewCell!
    @IBOutlet weak var rightLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableCell.setNeedsLayout()
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
    }

}
