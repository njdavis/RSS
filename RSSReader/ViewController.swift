//
//  ViewController.swift
//  RSSReader
//
//  Created by Noah Davis on 8/6/16.
//  Copyright © 2016 Noah Davis. All rights reserved.
//

import UIKit
import AlamofireRSSParser
import Alamofire

class ViewController: UIViewController, UITableViewDataSource {
     
//news sources
    
    @IBOutlet weak var articleTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "http://feeds.feedburner.com/StudyHacks"
        
        Alamofire.request(url).responseRSS() { (response) -> Void in
            if let feed: RSSFeed = response.result.value {
                //do something with your new RSSFeed object!
                for item in feed.items {
                    print(item.title)
                }
            }
        }
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return newsSources.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return newsSources[section]
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

