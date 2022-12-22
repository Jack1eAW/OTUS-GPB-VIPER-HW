//
//  ExplorePageContainer.swift
//  OTUS-GPB-VIPER-HW
//
//  Created by Aleksandr Chebotarev on 12/1/22.
//  
//

import UIKit

// MARK: - Container

final class ExplorePageContainer {
    
    // MARK: Properties
    let input: ExplorePageModuleInput
	let viewController: UIViewController
	weak var router: ExplorePageRouterInput?
    
    // MARK: Init
    private init(viewController: UIViewController, input: ExplorePageModuleInput, router: ExplorePageRouterInput) {
        self.viewController = viewController
        self.input = input
        self.router = router
    }
    
    // MARK: Methods
	static func assemble(with context: ExplorePageContext) -> ExplorePageContainer {
        let router = ExplorePageRouter()
        let interactor = ExplorePageInteractor()
        let presenter = ExplorePagePresenter(router: router, interactor: interactor)
        let viewController = ExplorePageViewController(output: presenter)

        interactor.output = presenter

		presenter.viewController = viewController
		presenter.moduleOutput = context.moduleOutput

        return ExplorePageContainer(viewController: viewController, input: presenter, router: router)
	}
}

// MARK: - ModuleOutput

struct ExplorePageContext {
	weak var moduleOutput: ExplorePageModuleOutput?
}
