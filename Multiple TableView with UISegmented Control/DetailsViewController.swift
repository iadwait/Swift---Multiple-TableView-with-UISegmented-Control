//
//  DetailsViewController.swift
//  Multiple TableView with UISegmented Control
//
//  Created by Adwait Barkale on 29/10/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var ahData:AhemdabadModel?
    var muData:MumbaiModel?
    var baData:BangaloreModel?
    var puData:PuneModel?
    var cityTable:Int?
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblCityName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    
    func setData()
    {
        if cityTable == 0
        {
            img.image = ahData?.img!
            lblTitle.text = "Festival - \(ahData?.festivalName ?? "N/A")"
            lblDescription.text = ahData?.desc
            lblCityName.text = "Ahemdabad"
        }
        if cityTable == 1
        {
            img.image = muData?.img!
            lblTitle.text = "Festival - \(muData?.festivalName ?? "N/A")"
            lblDescription.text = muData?.desc
            lblCityName.text = "Mumbai"
        }
        if cityTable == 2
        {
            img.image = baData?.img!
            lblTitle.text = "Festival - \(baData?.festivalName ?? "N/A")"
            lblDescription.text = baData?.desc
            lblCityName.text = "Bangalore"
        }
        if cityTable == 3
        {
            img.image = puData?.img!
            lblTitle.text = "Festival - \(puData?.festivalName ?? "N/A")"
            lblDescription.text = puData?.desc
            lblCityName.text = "Pune"
        }
    }
    
}
