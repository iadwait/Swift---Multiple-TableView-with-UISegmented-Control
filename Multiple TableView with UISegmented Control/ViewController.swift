//
//  ViewController.swift
//  Multiple TableView with UISegmented Control
//
//  Created by Adwait Barkale on 29/10/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var cityTableView: UITableView!
    @IBOutlet weak var citySegment: UISegmentedControl!
    
    
    var ahData:[AhemdabadModel] = []
    var muData:[MumbaiModel] = []
    var baData:[BangaloreModel] = []
    var puData:[PuneModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView()
    {
        cityTableView.delegate = self
        cityTableView.dataSource = self
        addData()
    }
    
    func addData()
    {
        ahData = [
            AhemdabadModel(img: UIImage(named: "a1"), title: "Navratri", city: "Ahemdabad"),
            AhemdabadModel(img: UIImage(named: "a2"), title: "Rann Utsav", city: "Ahemdabad"),
            AhemdabadModel(img: UIImage(named: "a3"), title: "Shamlaji Melo", city: "Ahemdabad"),
            AhemdabadModel(img: UIImage(named: "a4"), title: "International Kite Festival (Uttarayan)", city: "Ahemdabad"),
            AhemdabadModel(img: UIImage(named: "a5"), title: "Bhavnath Mahadev Fair", city: "Ahemdabad"),
            AhemdabadModel(img: UIImage(named: "a6"), title: "Rath Yatra", city: "Ahemdabad"),
            AhemdabadModel(img: UIImage(named: "a7"), title: "Janmashtami", city: "Ahemdabad")
        ]
        
        muData = [
            MumbaiModel(img: UIImage(named: "m1"), title: "Banganga (Jan)", city: "Mumbai"),
            MumbaiModel(img: UIImage(named: "m2"), title: "Elephanta festival (Feb)", city: "Mumbai"),
            MumbaiModel(img: UIImage(named: "m3"), title: "Gudhi Padava (Mar-Apr)", city: "Mumbai"),
            MumbaiModel(img: UIImage(named: "m4"), title: "Ganesh Chaturthi (Aug-Sep)", city: "Mumbai"),
            MumbaiModel(img: UIImage(named: "m5"), title: "Diwali(Oct-Nov)", city: "Mumbai")
        ]
        
        baData = [
            BangaloreModel(img: UIImage(named: "b1"), title: "Karaga Festival", city: "Bangalore"),
            BangaloreModel(img: UIImage(named: "b2"), title: "Kadalekai Parishe Festival", city: "Bangalore"),
            BangaloreModel(img: UIImage(named: "b3"), title: "Makar Sankranti", city: "Bangalore"),
            BangaloreModel(img: UIImage(named: "b4"), title: "Ugadi Festival", city: "Bangalore"),
            BangaloreModel(img: UIImage(named: "b5"), title: "Varamahalakshmi Festival", city: "Bangalore")
        ]
        
        puData = [
            PuneModel(img: UIImage(named: "p1"), title: "Makar Sankranti", city: "Pune"),
            PuneModel(img: UIImage(named: "p2"), title: "Vasant Panchami", city: "Pune"),
            PuneModel(img: UIImage(named: "p3"), title: "Holi", city: "Pune"),
            PuneModel(img: UIImage(named: "p4"), title: "Gudi Padwa", city: "Pune"),
            PuneModel(img: UIImage(named: "p5"), title: "Nag Panchami", city: "Pune")
        ]
    }
    
    @IBAction func btnCitySegmentTapped(_ sender: UISegmentedControl) {
        cityTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if citySegment.selectedSegmentIndex == 0
        {
            return ahData.count
        }
        if citySegment.selectedSegmentIndex == 1
        {
            return muData.count
        }
        if citySegment.selectedSegmentIndex == 2
        {
            return baData.count
        }
        if citySegment.selectedSegmentIndex == 3
        {
            return puData.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cityTableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let value = citySegment.selectedSegmentIndex
        if value == 0
        {
            let data = ahData[indexPath.row]
            cell.imgCity.image = data.img
            cell.lblTitle.text = data.title
            cell.lblCity.text = data.city
        }
        if value == 1
        {
            let data = muData[indexPath.row]
            cell.imgCity.image = data.img
            cell.lblTitle.text = data.title
            cell.lblCity.text = data.city
        }
        if value == 2
        {
            let data = baData[indexPath.row]
            cell.imgCity.image = data.img
            cell.lblTitle.text = data.title
            cell.lblCity.text = data.city
        }
        if value == 3
        {
            let data = puData[indexPath.row]
            cell.imgCity.image = data.img
            cell.lblTitle.text = data.title
            cell.lblCity.text = data.city
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

