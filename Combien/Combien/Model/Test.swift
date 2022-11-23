//
//  Test.swift
//  Combien
//
//  Created by Margaux Lachèze on 20/11/2022.
//

import Foundation

struct Test {
    
    var numeroQuestion = 0
    var score = 0
    
    let testQuestion = [
        Questions(q: "Combien y a t-il de pays dans le monde (2022) ?", r: ["478", "324", "278","185"], correcte: "324"),
        Questions(q: "Combien y a t-il de fleuves en France ?", r: ["6", "4", "2", "5"], correcte: "5"),
        Questions(q: "Combien y a t-il de races de chien dans le monde ?", r: ["160", "457", "743", "333"], correcte: "333"),
        Questions(q: "Combien de français ont gagné le ballon d'or ?", r: ["3", "4", "5", "6"], correcte: "5"),
        Questions(q: "Combien y a t-il de marches dans la Tour Eiffel ?", r: ["896", "939","1665", "2594"], correcte: "1665"),
        Questions(q: "Combien y a t-il de panneaux \"Stop\" à Paris ?", r: ["0", "1", "10", "100"], correcte: "1"),
        Questions(q: "Combien y a t-il d'Eglises en France ?", r: ["38739", "42258", "61327", "72178"], correcte: "42258"),
        Questions(q: "Combien y a t-il de miroirs dans la Galerie des glaces de Versailles ?", r: ["87", "357", "523", "975"], correcte: "357"),
        Questions(q: "Combien de chansons les Beatles ont composées ?", r: ["68", "184", "227", "302"], correcte: "227"),
        Questions(q: "Combien de mètres fait l'intestin humain ?", r: ["3", "4", "5", "6"], correcte: "6"),
        Questions(q: "Combien de dents a un T-Rex ?", r: ["58", "99", "123", "184"], correcte: "58")
    ]
    
    func getQuestion() -> String {
        return testQuestion[numeroQuestion].text
    }
    
    func getReponses() -> [String] {
        return testQuestion[numeroQuestion].reponses
    }
    
    func getBonneReponse() -> String {
        return testQuestion[numeroQuestion].bonneReponse
    }
    
    func getNombreQuestion() -> Int {
        return testQuestion.count
    }
    
    func getNumeroQuestionCourante() -> Int {
        return numeroQuestion + 1;
    }
    
    mutating func prochaineQuestion() {
        if numeroQuestion + 1 < testQuestion.count {
            numeroQuestion += 1
        } else {
            numeroQuestion = 0
        }
    }
    
    mutating func validationReponse(reponse: String) -> Bool {
        if reponse == testQuestion[numeroQuestion].bonneReponse {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
}
