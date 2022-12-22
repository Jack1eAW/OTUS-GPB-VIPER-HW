//
//  ExplorePageViewController.swift
//  OTUS-GPB-VIPER-HW
//
//  Created by Aleksandr Chebotarev on 12/1/22.
//  
//

import UIKit

// MARK: - ViewController

final class ExplorePageViewController: UIViewController {
    
    // MARK: Properties
	private let output: ExplorePageViewControllerOutput
    
    // MARK: Init
    init(output: ExplorePageViewControllerOutput) {
        self.output = output
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

// MARK: - ViewControllerInput

extension ExplorePageViewController: ExplorePageViewControllerInput {
}
