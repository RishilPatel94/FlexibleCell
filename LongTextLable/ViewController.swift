//
//  ViewController.swift
//  LongTextLable
//
//  Created by Rish on 4/1/19.
//  Copyright © 2019 Rish. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : ViewTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ViewTableViewCell
        cell.btnMore.tag = indexPath.row
        cell.lblText.text  = arrData[indexPath.row]
        cell.layoutSubviews()
        return cell
        
    }
    
    @IBOutlet weak var tblView: UITableView!
    var arrData = ["This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.This is long description.","This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123.This is long description123."]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.tableFooterView = UIView()
        tblView.rowHeight = UITableView.automaticDimension
        tblView.estimatedRowHeight = 77
        tblView.delegate = self
        tblView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changelabelHeight(sender:UIButton){
        let indexpath = NSIndexPath(row: sender.tag, section: 0)
        let cell = self.tblView!.cellForRow(at: indexpath as IndexPath) as? ViewTableViewCell
        
        if(cell!.fixedHeightCon.priority == UILayoutPriority(rawValue: 750)){
            cell!.btnMore.setTitle("Show Less", for: UIControl.State.normal)
            cell!.fixedHeightCon.priority = UILayoutPriority(rawValue: 250)
            cell!.graterHeightCon.priority = UILayoutPriority(rawValue: 750)
            
            
            
        }else{
            cell!.btnMore.setTitle("Read More", for: UIControl.State.normal)
            cell!.fixedHeightCon.priority = UILayoutPriority(rawValue: 750)
            cell!.graterHeightCon.priority = UILayoutPriority(rawValue: 250)
            
        }
        tblView.reloadData()
        
    }
}

