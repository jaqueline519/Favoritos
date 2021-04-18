//
//  InfoMoedaAPI.swift
//  OnboardingMobileChallenge
//
//  Created by Jaqueline Bittencourt Santos on 14/04/21.
//

import UIKit
import Foundation
import Alamofire


class InfoMoedaAPI: NSObject {
    
    var moedaInfo: [MoedaInfoElement] = []
    var erros = Erros()
    
    public func requestInfoMoedas(id: String){
        
        let url = "\(DadosChamadaApi.urlListaMoedas)\(id)"
        
        AF.request(url, method: .get, headers: DadosChamadaApi.headers).response { [self]
            (responseData) in
            guard let data = responseData.data else {return}
            print(data)
            do {
                let retorno = try JSONDecoder().decode([MoedaInfoElement].self, from: data)
                self.moedaInfo = retorno
                print(retorno)
            } catch{
                guard let statusCode = responseData.response?.statusCode else {return}
                self.erros.sobrescreverMensagemDeErro(statusCode: statusCode)
            }
        }
    }
}
