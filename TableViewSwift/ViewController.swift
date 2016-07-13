//
//  ViewController.swift
//  TableViewSwift
//
//  Created by  泛达 on 16/4/25.
//  Copyright © 2016年 CK. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView?
    let unSortedFonts:[String] = UIFont.familyNames()
    var items:[String] = UIFont.familyNames()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpSubviews()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- tableView delegate and datasource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell",forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.font = UIFont(name: items[indexPath.row], size: 20)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        GL_BOOL
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    //MARK: - private
    func setUpSubviews() {
    
        self.tableView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height), style: UITableViewStyle.Plain)
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.view.addSubview(self.tableView!)
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

}

