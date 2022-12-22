//
//  ExpPresenter.swift
//  OTUS-GPB-VIPER-HW
//
//  Created by Aleksandr Chebotarev on 12/1/22.
//  
//

import Foundation

class ExpPresenter: ViewToPresenterExpProtocol {

    // MARK: Properties
    var view: PresenterToViewExpProtocol?
    var interactor: PresenterToInteractorExpProtocol?
    var router: PresenterToRouterExpProtocol?
}

extension ExpPresenter: InteractorToPresenterExpProtocol {

    func layout() {
        
    }
    
    func setup() {
        
    }
}
