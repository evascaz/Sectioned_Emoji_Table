//
//  ViewController.swift
//  Sectioned_Emoji_Table
//
//  Created by Evangeline Scazzero on 10/6/16.
//  Copyright © 2016 Eva Scazzero. All rights reserved.
//

    // -> means to "return type of"

import UIKit

let array1 = ["🎿","🏄","🐳","🌏","👗"] //teal
let array2 = ["🌁","🐋","⛲️","💦","🚘"] //light blue
let array3 = ["🍆","☂️","♓️","👾","😈"] //light purple
let array4 = ["🏩","💜","🚺","🍥","🍇"] //brighter purple
let array5 = ["🏮","🍷","❤️","💔","🏓"] //red
let array6 = ["🚌","📳","📙","🏉","🍹"] //orange
let array7 = ["🍺","🏵","🏆","🎗","🚖"] //yellow
let array8 = ["✅","🇨🇨","📗","🔋","🐸"] //bright green




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    //TableView Required methods are below
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0{
        
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            myCell?.textLabel?.text = array1[indexPath.row]
            myCell?.detailTextLabel?.text = "star"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!

        }
        
        else if indexPath.section == 1 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell2")
            myCell?.textLabel?.text = array2[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label cell2"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
            
        }
        else if indexPath.section == 2 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell3")
            myCell?.textLabel?.text = array3[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label cell3"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
        }
        else if indexPath.section == 3 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell4")
            myCell?.textLabel?.text = array4[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label cell4"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
        }
        else if indexPath.section == 4 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell5")
            myCell?.textLabel?.text = array5[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label cell5"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
        }
        else if indexPath.section == 5 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell6")
            myCell?.textLabel?.text = array6[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label cell6"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
        }
        else if indexPath.section == 6 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell7")
            myCell?.textLabel?.text = array7[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label cell7"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
        }
        else if indexPath.section == 7 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell8")
            myCell?.textLabel?.text = array8[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label cell8"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
        }
        else {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            myCell?.textLabel?.text = "Main Text Label💫"
            myCell?.detailTextLabel?.text = "detail label😎"
            myCell?.textLabel?.textAlignment = .center
            myCell?.textLabel?.font = UIFont.systemFont(ofSize: 60.0)
            return myCell!
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        let myCGFloat = CGFloat(50)
        return myCGFloat
    }
//    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//       //if section header is tapped drop down cells in section
//        if section == 0{
//            UITapGestureRecognizer
//        }

    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        if section == 0{
        return "TEAL"
        }
        else if section == 1{
            return "BLUE"
        } else if section == 2{
            return "PURPLE"
        } else if section == 3{
            return "VIOLET"
        } else if section == 4{

          return "RED"
        } else if section == 5{
            return "ORANGE"
        } else if section == 6{
            return "YELLOW"
        }
        else{
            return "GREEN"
        }
    
    }
    
   

    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        
        let title = UILabel()
        title.font = UIFont(name: "Futura", size: 38)!
        title.textColor = UIColor.lightGray
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.font=title.font
        header.textLabel?.textColor=title.textColor
        
        

    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        let footerCGFloat = CGFloat(10)
        return footerCGFloat
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let rowHeight = CGFloat(120)
        return rowHeight
    }
    
 


    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        if(tableView.isEditing) {
        return  UITableViewCellEditingStyle.insert
          //Do something cool here with the editing style method
        }
        return UITableViewCellEditingStyle.none
       
    }

}

//Q for Yuri: how do I push this to github using terminal ?!

