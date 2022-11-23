//
//  QuestionViewController.swift
//  Combien
//
//  Created by Margaux Lachèze on 20/11/2022.
//

import Foundation
import UIKit

class QuestionViewController : UIViewController {
    
    
    @IBOutlet weak var labelNumeroQuestion: UILabel!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var choix1: UIButton!
    @IBOutlet weak var choix2: UIButton!
    @IBOutlet weak var choix3: UIButton!
    @IBOutlet weak var choix4: UIButton!
    
    
    var test = Test()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func reponse(_ sender: UIButton) {
        let reponseUtilisateur = sender.currentTitle!
        let bonneReponseDonnee = test.validationReponse(reponse: reponseUtilisateur)
        
        if bonneReponseDonnee {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        test.prochaineQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        let questionsNombre = test.getNombreQuestion()
        let numeroQuestion = test.getNumeroQuestionCourante()
        
        if numeroQuestion <= questionsNombre {
            labelNumeroQuestion.text = "Question \(numeroQuestion) / \(questionsNombre)"
            labelQuestion.text = test.getQuestion()
            
            let choixPossibles = test.getReponses()
            
            choix1.setTitle(choixPossibles[0], for: .normal)
            choix2.setTitle(choixPossibles[1], for: .normal)
            choix3.setTitle(choixPossibles[2], for: .normal)
            choix4.setTitle(choixPossibles[3], for: .normal)
            
            choix1.backgroundColor = UIColor.white
            choix2.backgroundColor = UIColor.white
            choix3.backgroundColor = UIColor.white
            choix4.backgroundColor = UIColor.white
        } else {
            
        }
        

    }
    
    
}
