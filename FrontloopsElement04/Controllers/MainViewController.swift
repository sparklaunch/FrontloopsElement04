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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateMainContainer()
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
}
