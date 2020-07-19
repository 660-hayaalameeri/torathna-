//
//  quizVC.swift
//  torathna
//
//  Created by haya on 7/18/20.
//  Copyright © 2020 haya. All rights reserved.
//

import UIKit

struct  question {
    var question : String!
    var answers : [String]!
    var answer : Int!
    
}
    


class quizVC: UIViewController {

    @IBOutlet weak var questionT: UILabel!

    @IBOutlet var buttons: [UIButton]!
    
    var questions = [question]()
    var qNumber = Int()
    var answerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

      
        questions = [question(question: "من يقوم بتلميع وتصليح الأواني ؟", answers: ["الصفار","الحداد","النداف","الحياك"], answer: 0),
question(question: "ما  الزي الذي يرتديه الغواصين عندما ينزلوا الى  البحر؟.  ", answers: ["الفطام ","الصفار","الزبين","الشمشول"], answer:3),
question(question: "ما الأداة التي يضعها الغواص على أنفه لمنع دخول الماء؟", answers: ["الفطام","الخبط","الزبين","الجرار"], answer: 0),question(question: "ماذا يطلق على الشخص الذي يقوم بصناعة المسامير الخاصة بالسفن والبناء؟", answers: ["الصفار","النداف","الحداد","الحياك"], answer: 2),
question(question: "ما هو لسان الثور؟", answers: [" نوع من أنواع البقصم وحجمه كبير","تصنع من العجين المضاف إليه السكر ","حبل يربطه الغواص بنفسه ليرفعه من الماء ","نوع من اللؤلؤ"], answer: 0),]
        
           
pickQuestion()
        // Do any additional setup after loading the view.
    }
    
    
    
    func pickQuestion(){
        
        if questions.count > 0{
            qNumber = Int(arc4random_uniform(UInt32(questions.count)))
            
            
            questionT.text = questions[qNumber].question
            
            answerNumber = questions[qNumber].answer
            
            for i in 0..<buttons.count {
                buttons[i].setTitle(questions[qNumber].answers[i], for: UIControl.State.normal)
                buttons[i].setTitleColor(UIColor.black,for: UIControl.State.normal)
                
            }
            questions.remove(at: qNumber)
            
        }
        else {
            questionT.text = "لقد انتهيت الاختبار"
            
        }
        
    }
   
    @IBAction func Btn1(_ sender: UIButton) {
        if answerNumber == 0 {
            
            pickQuestion()
        }
        else {
            sender.setTitle("wrong", for: UIControl.State.normal)
            sender.setTitleColor(UIColor.red, for: UIControl.State.normal)}
        
    }
    @IBAction func Btn2(_ sender: UIButton) {
        if answerNumber == 1 {
                   
                   pickQuestion()
               }
               else {
                               sender.setTitle("wrong", for: UIControl.State.normal)
                   sender.setTitleColor(UIColor.red, for: UIControl.State.normal)
               }
    }
    @IBAction func Btn3(_ sender: UIButton) {
        if answerNumber == 2 {
                   
                   pickQuestion()
               }
               else {
                               sender.setTitle("wrong", for: UIControl.State.normal)
                   sender.setTitleColor(UIColor.red, for: UIControl.State.normal)
               }
    }

     @IBAction func Btn4(_ sender: UIButton) {
        if answerNumber == 3 {
                   
                   pickQuestion()
               }
               else {
                            sender.setTitle("wrong", for: UIControl.State.normal)
                   sender.setTitleColor(UIColor.red, for: UIControl.State.normal)
               }
     }
   


    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

