//
//  ViewController.swift
//  TextAnimTry
//
//  Created by Omar Alqabbani on 7/5/19.
//  Copyright © 2019 OmarALqabbani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let labelsContainer: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.spacing = 16
//        sv.frame = CGRect(x: 0, y: 0, width: 200, height: 400)
        return sv
    }()
    
    
    let titleLabel: UILabel = {
       let lb = UILabel()
        lb.text = "Wellcome to projects page: "
        lb.numberOfLines = 0
        lb.font = UIFont(name: "futura", size: 40)
        lb.textColor = UIColor.white
        return lb
    }()
    

    let bodyLabel: UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.text = "Thanks for downloading this App. and giving us a chance ths simple code is just for showing the animation of text. This box of text will removed on click."
        lb.font = UIFont(name: "futura", size: 20)
        lb.textColor = UIColor.white
        return lb
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.backgroundColor
        labelsContainer.addArrangedSubview(titleLabel)
        labelsContainer.addArrangedSubview(bodyLabel)
        view.addSubview(labelsContainer)
        setupViewContents()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateTextLabels)))
    }

    @objc func animateTextLabels(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.titleLabel.alpha = 0
                self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
            }, completion: nil)
        }


        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.bodyLabel.alpha = 0
                self.bodyLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
            }, completion: nil)
        }
    }
    
    private func setupViewContents(){
        labelsContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelsContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        labelsContainer.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
    }

}

