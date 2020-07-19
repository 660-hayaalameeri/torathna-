//
//  HouseVC.swift
//  torathna
//
//  Created by haya on 7/11/20.
//  Copyright © 2020 haya. All rights reserved.
//

import UIKit

class HouseVC: ViewController {


       
       
    @IBOutlet weak var question4: UIButton!
    @IBOutlet weak var question3: UIButton!
    @IBOutlet weak var question2: UIButton!
    @IBOutlet weak var question1: UIButton!
    @IBOutlet weak var tVInfo: UILabel!
    @IBOutlet weak var customView: UIView!
    

    @IBOutlet weak var sourcesView: UIView!
    
    @IBOutlet weak var modeSwitch: UISwitch!
    @IBOutlet weak var mapV: UIView!
        
    @IBOutlet weak var questionsView: UIView!
    
      
       
     
   
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
       
   
      
       @IBAction func quizpage(_ sender: UIButton) {
           if modeSwitch.isOn == true {
               // added this
          
              
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
                      self.tVInfo.text = "عبارة عن نوع من أنواع البقصم  و حجمه كبير ."
                  }
                  else if sender == question2 {
                      self.tVInfo.text = "هي  على شكل حلقات متصلة مع بعضها البعض وتصنع بطريقة صنع اللقيمات، وتكون مرغوبة في شهر رمضان المبارك ."
                  }
                  else if sender == question3 {
                      self.tVInfo.text = "تصنع من العجين المضاف إليه السكر و (دهن العداني) ثم تحمر على النار و تصبح متماسكة على شكل دوائر ، وهي تعتبر الفريق الثلاثي(للقيمات والزلابية) "
                         }
                  else if sender == question4 {
                      self.tVInfo.text = "، يعد الرهش الكويتي الوجبة الرئيسية في الربيع خاصة لرواد البر، ولا يخلو أي بيت كويتي من هذا الحلو الذي يؤكل خاصة بعد وجبة الغداء وفي الديوانيات مع خبز التنور، وكان الرهش قديما يقدم للمرأة في فترة النفاس في الشتاء"  +  "   هو عبارة عن سمسم مطحون وهيل وحبة حلوة كما يضاف إليه دبس التمر بدلا من السكر كي يعطيه نكهة مميزة"
                   
                   
                                }
    }
    
      @IBAction func hideinfo(_ sender: UIButton) {
          switchIsOn = modeSwitch.isOn

          customView.isHidden = true
        
    sourcesView.isHidden = true
          mapV.isHidden = true
          
          questionsView.isHidden = true
      }
          
    @IBAction func showsources(_ sender: Any) {
        sourcesView.isHidden = false
    }
}

   

       /*// MARK: - Navigation    // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
       }
       */



   
    

