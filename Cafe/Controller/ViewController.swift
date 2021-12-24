//
//  ViewController.swift
//  Cafe
//
//  Created by Григорий Душин on 24.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var choiseButton1: UIButton!
    
    @IBOutlet weak var choise2Button: UIButton!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    @IBAction func choiseMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
               
               updateUI()
    }
     
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        choiseButton1.setTitle(storyBrain.getChoice1(), for: .normal)
        choise2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        backgroundImage.image = UIImage(named: storyBrain.getPic())
        choiseButton1.isHidden = storyBrain.getHidden()
        choise2Button.isHidden = storyBrain.getHidden()
    }
}
