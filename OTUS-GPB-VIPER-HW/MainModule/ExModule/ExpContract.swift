//
//  ExpContract.swift
//  OTUS-GPB-VIPER-HW
//
//  Created by Aleksandr Chebotarev on 12/1/22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewExpProtocol {
   
}

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterExpProtocol {

    var view: PresenterToViewExpProtocol? { get set }
    var interactor: PresenterToInteractorExpProtocol? { get set }
    var router: PresenterToRouterExpProtocol? { get set }
    func setup()
    func layout()
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorExpProtocol {
    
    var presenter: InteractorToPresenterExpProtocol? { get set }
    func loadData()
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterExpProtocol {
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterExpProtocol {
    
}
