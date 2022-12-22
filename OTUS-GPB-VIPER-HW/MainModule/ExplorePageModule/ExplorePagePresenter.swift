//
//  ExplorePagePresenter.swift
//  OTUS-GPB-VIPER-HW
//
//  Created by Aleksandr Chebotarev on 12/1/22.
//  
//

import Foundation

// MARK: - Presenter

final class ExplorePagePresenter {
    
    // MARK: Properties
	weak var viewController: ExplorePageViewControllerInput?
    weak var moduleOutput: ExplorePageModuleOutput?
    
	private let router: ExplorePageRouterInput
	private let interactor: ExplorePageInteractorInput
    
    // MARK: Init
    
    init(router: ExplorePageRouterInput, interactor: ExplorePageInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - ModuleInput

extension ExplorePagePresenter: ExplorePageModuleInput {
}

// MARK: - ViewControllerOutput

extension ExplorePagePresenter: ExplorePageViewControllerOutput {
}

// MARK: - InteractorOutput

extension ExplorePagePresenter: ExplorePageInteractorOutput {
}
