//
//  ExplorePageProtocols.swift
//  OTUS-GPB-VIPER-HW
//
//  Created by Aleksandr Chebotarev on 12/1/22.
//  
//

import Foundation

// MARK: - ModuleInput

protocol ExplorePageModuleInput {
	var moduleOutput: ExplorePageModuleOutput? { get }
}

// MARK: - ModuleOutput

protocol ExplorePageModuleOutput: AnyObject {
}

// MARK: - ViewControllerInput

protocol ExplorePageViewControllerInput: AnyObject {
}

// MARK: - ViewControllerOutput

protocol ExplorePageViewControllerOutput: AnyObject {
}

// MARK: - InteractorInput

protocol ExplorePageInteractorInput: AnyObject {
}

// MARK: - InteractorOutput

protocol ExplorePageInteractorOutput: AnyObject {
}

// MARK: - RouterInput

protocol ExplorePageRouterInput: AnyObject {
}
