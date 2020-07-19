//
//  OceanVC.swift
//  torathna
//
//  Created by haya on 7/11/20.
//  Copyright © 2020 haya. All rights reserved.
//

import UIKit



class OceanVC: ViewController {
    
    @IBOutlet weak var questionsView: UIView!
    @IBOutlet weak var tVinfo: UILabel!
    @IBOutlet weak var sourcesView: UIView!
    
    @IBOutlet weak var question1: UIButton!
    @IBOutlet weak var question2: UIButton!
    @IBOutlet weak var question3: UIButton!

    
    
    @IBAction func souq1(_ sender: UIButton) {
        if switchIsOn == true {
            switchIsOn = modeSwitch.isOn}
        else if switchIsOn == false {
            
           modeSwitch.isOn = false
        }
         performSegue(withIdentifier: "octoso", sender: nil)
        
    }
    
  
    @IBAction func house1(_ sender: UIButton) {
    }
    
    
   
    
  
    
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
      
      
        mapV.isHidden = true
        
        questionsView.isHidden = true
        sourcesView.isHidden = true
        
        
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
        switchIsOn = modeSwitch.isOn
        
        
        

  
        }
    
    @IBAction func answer(_ sender: UIButton) {
        if sender == question1{
            self.tVinfo.text = "بغلة، بوم ، جالبوت، سنبوك ، شوعي ، ماشوة ، هوري و ورجيه. "
        }
        else if sender == question2 {
            self.tVinfo.text = "جيوان، خشن،  بدله، ناعم، بوكه ، بطن الهند، بيضاوي، كاوليه، شرينه، عيسرني، دانة ، حصباة، و جوهرة. "
        }
        else if sender == question3 {
            self.tVinfo.text =
           
    "الفطام هو شيء يضعه الغواص على أنفه لمنع تسرب الماء." + "الخبط هو قفاز مصنوع من جلد الأبقار لحماية الأيدي من القطع." + "الزبين هو حبل يتم ربط الحصاة أو الحجارة بها من أجل النزول إلى قاع البحر" + " الجرار هو حبل يربطه الغواص به ليرفعونه من الماء عندما ينتهي من الغوص." + "الشمشول هو الزي الذي يرتديه الغواصين عندما ينزلوا الى البحر."
            
            
            
            
               }
        
    }
    @IBAction func showsources(_ sender: UIButton) {
        sourcesView.isHidden = false
    }
}

    /*// MARK: - Navigation    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


