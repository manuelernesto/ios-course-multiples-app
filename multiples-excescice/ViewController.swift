//
//  ViewController.swift
//  multiples-excescice
//
//  Created by Manuel Ernesto on 2/8/16.
//  Copyright © 2016 Manuel Ernesto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables and constantes
    
    var numeberToAdd = 0
    var result = 0
    var adding = 0
    
    //Outlets

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var fildTxt: UITextField!
    

    @IBOutlet weak var txtInfo: UILabel!
    @IBOutlet weak var addBtn: UIButton!

    @IBOutlet weak var resultTxt: UILabel!
    @IBOutlet weak var addAndPlay: UIButton!
    
    
    @IBAction func playBtnPressed(sender: AnyObject) {
        
        if fildTxt.text != nil && fildTxt.text != "" {
            antPlay()
            numeberToAdd = Int(fildTxt.text!)!
            
            
        }
        
        
    }
    @IBAction func addBtnPressed(sender: AnyObject) {
        result = numeberToAdd + adding
        resultTxt.text = "\(adding) + \(numeberToAdd) = \(result)"
        play()
        
        
    }
    @IBAction func playing(sender: AnyObject) {
        
        result = numeberToAdd + adding
        resultTxt.text = "\(adding) + \(numeberToAdd) = \(result)"
        adding += numeberToAdd
        
       
        
    }
    
    func restarGame(){
        logo.hidden = false
        playBtn.hidden = false
        fildTxt.hidden = false
        
        txtInfo.hidden = true
        addBtn.hidden = true
        
        resultTxt.hidden = true
        addAndPlay.hidden = true
    }
    
    func antPlay(){
        logo.hidden = true
        playBtn.hidden = true
        fildTxt.hidden = true
        
        txtInfo.hidden = false
        addBtn.hidden = false
        
        resultTxt.hidden = true
         addAndPlay.hidden = true
    }
    
    func play(){
            logo.hidden = true
            playBtn.hidden = true
            fildTxt.hidden = true
            
            txtInfo.hidden = true
            addBtn.hidden = true
            
            resultTxt.hidden = false
            addAndPlay.hidden = false
        
    }
    
    
}

