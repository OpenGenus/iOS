//
//  DataService.swift
//  TableView
//
//  Created by Sai Balaji on 07/03/21.
//

import Foundation

class DataService
{
    public static var sharedobj = DataService()
    
    let theives: [Phantom] = [Phantom(name: "Joker", imagename: "joker.jpg"),
                              Phantom(name: "Skull", imagename: "skull.jpg"),
                              Phantom(name: "Panther", imagename: "panther.jpg"),
                              Phantom(name: "Hacker", imagename: "hacker.jpg"),
                              Phantom(name: "Queen", imagename: "queen.jpg"),
                              Phantom(name: "Fox", imagename: "fox.jpg")]
    
    
    func getTheives() -> [Phantom]
    {
        return theives
    }
}
