//
//  Questions.swift
//  Combien
//
//  Created by Margaux Lachèze on 20/11/2022.
//

import Foundation

struct Questions {
    let text: String
    let reponses : [String]
    let bonneReponse : String
    
    init(q: String, r: [String], correcte : String) {
        text = q
        reponses = r
        bonneReponse = correcte
    }
}
