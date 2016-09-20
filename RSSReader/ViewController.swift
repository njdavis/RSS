//
//  ViewController.swift
//  RSSReader
//
//  Created by Noah Davis on 8/6/16.
//  Copyright © 2016 Noah Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
     
//news sources
    
    @IBOutlet weak var articleTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var sourceCreator = SectionCreator()
    
    var this: Array<String>{
        
        return sourceCreator.addSource(["this"])
    }
    
    var newsSources:Array<(String)> {
        get {
            return sourceCreator.returnSourceTitles
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return newsSources.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return newsSources[section]
    }
    
    /*func tableView(tableView: UITableView, ViewForHeaderInSection section: Int) -> UIView! {
        return tableView.backgroundColor = UIColor.lightGrayColor()
    }*/
    
    
    /*func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
    {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.font = UIFont(name: "Futura", size: 38)!
        header.textLabel?.textColor = UIColor.blueColor()
    }*/
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CategoryRow
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

