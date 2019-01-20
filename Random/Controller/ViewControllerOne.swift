//
//  ViewController.swift
//  Random
//
//  Created by Facundo Lanùs on 19/01/2019.
//  Copyright © 2019 Facundo Lanùs. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    
    lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl()
        
        segmentedControl.insertSegment(withTitle: "1", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "2", at: 1, animated: true)
        
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        return segmentedControl
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.red
        
        view.addSubview(segmentedControl)
        setSegmentedControlConstraint()

    }

    private func setSegmentedControlConstraint() {
        segmentedControl.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 7).isActive = true
        segmentedControl.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 7).isActive = true
        segmentedControl.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -7).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
}

