//
//  ExpRouter.swift
//  OTUS-GPB-VIPER-HW
//
//  Created by Aleksandr Chebotarev on 12/1/22.
//  
//

import Foundation
import UIKit

class ExpRouter: PresenterToRouterExpProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ExploreViewController()
        
        let presenter: ViewToPresenterExpProtocol & InteractorToPresenterExpProtocol = ExpPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ExpRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ExpInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
