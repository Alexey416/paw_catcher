//
//  ViewController.swift
//  paw_catcher
//
//  Created by abia on 26.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pawViewOutlet: UIView!
    @IBOutlet weak var mainPointOutlet: UIView!
    @IBOutlet weak var additionalPointOne: UIView!
    @IBOutlet weak var additionalPointTwo: UIView!
    @IBOutlet weak var additionalPointThree: UIView!
    @IBOutlet weak var additionalPointFour: UIView!
    
    // - Constraints
    @IBOutlet weak var topConstraintOutlet: NSLayoutConstraint!
    @IBOutlet weak var leftConstraintOutlet: NSLayoutConstraint!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    @IBAction func tapAction(_ sender: UIButton) {
        UIView.animate(withDuration: 0.7) {
            self.topConstraintOutlet.constant = CGFloat(Int.random(in: 0...Int(self.view.frame.size.height - 104)))
            self.leftConstraintOutlet.constant = CGFloat(Int.random(in: 0...Int(self.view.frame.size.width - 104)))
        }
    }
    
}

// MARK: -
// MARK: - Configure

private extension ViewController {
    
    func configure() {
        configurePawPosition()
        configureLayout()
    }
    
    func configureLayout() {
        pawViewOutlet.layer.cornerRadius = 52.0
        mainPointOutlet.layer.cornerRadius = 20.0
        additionalPointOne.layer.cornerRadius = 8.0
        additionalPointTwo.layer.cornerRadius = 8.0
        additionalPointThree.layer.cornerRadius = 8.0
        additionalPointFour.layer.cornerRadius = 8.0
    }
    
    func configurePawPosition() {
        topConstraintOutlet.constant = (view.frame.size.height / 2) - 52
        leftConstraintOutlet.constant = (view.frame.size.width / 2) - 52
    }
    
}
