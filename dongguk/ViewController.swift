//
//  ViewController.swift
//  dongguk
//
//  Created by mac3 on 2016. 10. 7..
//  Copyright © 2016년 edu-dongguk. All rights reserved.
//


import UIKit

class ViewController: UITableViewController {
    
    var meetingRooms:[String:Int] = ["커피":1,"아이스티":2,"프라푸치노":3,"빙수":4,"그냥메뉴":5]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
  
        

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meetingRooms.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell
        
       let roomNames = Array(meetingRooms.keys)
        let roomName = roomNames[indexPath.row]
        cell.textLabel!.text = roomName
        if let capacity:Int = meetingRooms[roomName]
        {
        cell.detailTextLabel!.text = "\(capacity)"
        }
        return cell
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }
    
}

