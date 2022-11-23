//
//  FinishViewController.swift
//  Combien
//
//  Created by Margaux Lachèze on 23/11/2022.
//

import Foundation
import UIKit

class FinishViewController : UIViewController {
    @IBOutlet weak var finishScoreLabel: UILabel!
    @IBOutlet weak var finishRestartButton: UIButton!
    
    let test = Test()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    func setLabel(_ score: String, _ nombreQuestion: String) {
        finishScoreLabel.text = "\(score) / \(nombreQuestion)"
    }
    
}
