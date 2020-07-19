//
//  SouqVC.swift
//  torathna
//
//  Created by haya on 7/12/20.
//  Copyright © 2020 haya. All rights reserved.
//

import UIKit

class SouqVC: ViewController {

        @IBOutlet weak var questionsView: UIView!
        @IBOutlet weak var tVinfo: UILabel!
    @IBOutlet weak var sourcesView: UIView!
    
        @IBOutlet weak var question1: UIButton!
        @IBOutlet weak var question2: UIButton!
        @IBOutlet weak var question3: UIButton!
        @IBOutlet weak var question4: UIButton!
        
        
        
      
        
        
       
        
      
        
        @IBOutlet weak var mapV: UIView!
        
        @IBOutlet weak var map: UIButton!
      
        @IBOutlet weak var modeSwitch: UISwitch!
         
        @IBOutlet weak var boat: UIButton!
        
        @IBOutlet weak var textTitle: UILabel!
        @IBOutlet weak var objectInfo: UILabel!
        
        @IBOutlet weak var exit: UIButton!
        @IBOutlet weak var customView: UIView!


        override func viewDidLoad() {
            super.viewDidLoad()
            customView.isHidden = true

            sourcesView.isHidden = true
            mapV.isHidden = true
            
            questionsView.isHidden = true
        
            if switchIsOn == true {
                modeSwitch.isOn = true
            }
            else {
                modeSwitch.isOn = false
            }
            // Do any additional setup after loading the view.
        }
        
        

        @IBAction func showinfo(_ sender: UIButton) {
            if modeSwitch.isOn == false {
                // added this
            customView.isHidden = false
            
        }
            else if modeSwitch.isOn == true {
                questionsView.isHidden = false

                // added this
               
                

                
            }
        }
        
        @IBAction func hideinfo(_ sender: UIButton) {
            switchIsOn = modeSwitch.isOn

            customView.isHidden = true
            sourcesView.isHidden = true

            mapV.isHidden = true
            
            questionsView.isHidden = true
        }
       
        @IBAction func quizpage(_ sender: UIButton) {
            if modeSwitch.isOn == true {
                // added this
                sender.titleLabel?.text = "happiness"
        }
                // added this
            else { print("hi")
                sender.titleLabel?.text = "next"

            }
        }
        
        
        @IBAction func openMap(_ sender: UIButton) {
            // added this
        mapV.isHidden = false
            questionsView.isHidden = true
         
            

      
            }
        
        @IBAction func answer(_ sender: UIButton) {
            if sender == question1{
                self.tVinfo.text = "‏يصنع المسامير اللازمة ‏لصناعة السفن‏ وأيضا صناعة ‏أدوات البناء والزراعة."
            }
            else if sender == question2 {
                self.tVinfo.text = "يقوم بتلميع و تصنيع و طلاء القدور."
            }
            else if sender == question3 {
                self.tVinfo.text = "يصنع المساند و الفرش من القطن"
                   }
            else if sender == question4 {
                self.tVinfo.text = "يقوم بخياطة الملابس و البشوت "
                          }
        }
    
    @IBAction func sourcesopen(_ sender: Any) {
        sourcesView.isHidden = false
        
    }

}
/*// MARK: - Navigation    // In a storyboard-based application, you will often want to do a little preparation before navigation        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */





   

