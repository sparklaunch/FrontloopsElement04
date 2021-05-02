//
//  ViewController.swift
//  FrontloopsElement04
//
//  Created by Jinwook Kim on 2021/05/02.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var mainContainer: UIView!
    @IBOutlet weak var animatedText: UILabel!
    var timer: Timer?
    var wordManager: WordManager = WordManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateMainContainer()
        self.resetAnimatedText()
        self.wordManager.resetWordIndex()
        self.animateText()
    }
}

// MARK: - Initialization

extension MainViewController {
    func updateMainContainer() {
        self.mainContainer.layer.shadowColor = UIColor.darkGray.cgColor
        self.mainContainer.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        self.mainContainer.layer.shadowRadius = 10.0
        self.mainContainer.layer.shadowOpacity = 0.7
        self.mainContainer.layer.cornerRadius = 10.0
    }
    func resetAnimatedText() {
        self.animatedText.text = ""
    }
}

// MARK: - The Animation

extension MainViewController {
    func animateText() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (Timer) in
            self.animatedText.text = self.wordManager.getNextKeyframe()
        })
    }
}

