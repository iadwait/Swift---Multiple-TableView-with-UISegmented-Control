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
            AhemdabadModel(img: UIImage(named: "a1"), festivalName: "Navratri", city: "Ahemdabad", desc: ""),
            AhemdabadModel(img: UIImage(named: "a2"), festivalName: "Rann Utsav", city: "Ahemdabad", desc: ""),
            AhemdabadModel(img: UIImage(named: "a3"), festivalName: "Shamlaji Melo", city: "Ahemdabad", desc: ""),
            AhemdabadModel(img: UIImage(named: "a4"), festivalName: "International Kite Festival (Uttarayan)", city: "Ahemdabad", desc: ""),
            AhemdabadModel(img: UIImage(named: "a5"), festivalName: "Bhavnath Mahadev Fair", city: "Ahemdabad", desc: ""),
            AhemdabadModel(img: UIImage(named: "a6"), festivalName: "Rath Yatra", city: "Ahemdabad", desc: ""),
            AhemdabadModel(img: UIImage(named: "a7"), festivalName: "Janmashtami", city: "Ahemdabad", desc: "")
        ]
        
        muData = [
            MumbaiModel(img: UIImage(named: "m1"), festivalName: "Banganga (Jan)", city: "Mumbai", desc: ""),
            MumbaiModel(img: UIImage(named: "m2"), festivalName: "Elephanta festival (Feb)", city: "Mumbai", desc: ""),
            MumbaiModel(img: UIImage(named: "m3"), festivalName: "Gudhi Padava (Mar-Apr)", city: "Mumbai", desc: ""),
            MumbaiModel(img: UIImage(named: "m4"), festivalName: "Ganesh Chaturthi (Aug-Sep)", city: "Mumbai", desc: ""),
            MumbaiModel(img: UIImage(named: "m5"), festivalName: "Diwali(Oct-Nov)", city: "Mumbai", desc: "")
        ]
        
        baData = [
            BangaloreModel(img: UIImage(named: "b1"), festivalName: "Karaga Festival", city: "Bangalore", desc: ""),
            BangaloreModel(img: UIImage(named: "b2"), festivalName: "Kadalekai Parishe Festival", city: "Bangalore", desc: ""),
            BangaloreModel(img: UIImage(named: "b3"), festivalName: "Makar Sankranti", city: "Bangalore", desc: ""),
            BangaloreModel(img: UIImage(named: "b4"), festivalName: "Ugadi Festival", city: "Bangalore", desc: ""),
            BangaloreModel(img: UIImage(named: "b5"), festivalName: "Varamahalakshmi Festival", city: "Bangalore", desc: "")
        ]
        
        puData = [
            PuneModel(img: UIImage(named: "p1"), festivalName: "Makar Sankranti", city: "Pune", desc: ""),
            PuneModel(img: UIImage(named: "p2"), festivalName: "Vasant Panchami", city: "Pune", desc: ""),
            PuneModel(img: UIImage(named: "p3"), festivalName: "Holi", city: "Pune", desc: ""),
            PuneModel(img: UIImage(named: "p4"), festivalName: "Gudi Padwa", city: "Pune", desc: ""),
            PuneModel(img: UIImage(named: "p5"), festivalName: "Nag Panchami", city: "Pune", desc: "")
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
            cell.lblTitle.text = data.festivalName
            cell.lblCity.text = data.city
        }
        if value == 1
        {
            let data = muData[indexPath.row]
            cell.imgCity.image = data.img
            cell.lblTitle.text = data.festivalName
            cell.lblCity.text = data.city
        }
        if value == 2
        {
            let data = baData[indexPath.row]
            cell.imgCity.image = data.img
            cell.lblTitle.text = data.festivalName
            cell.lblCity.text = data.city
        }
        if value == 3
        {
            let data = puData[indexPath.row]
            cell.imgCity.image = data.img
            cell.lblTitle.text = data.festivalName
            cell.lblCity.text = data.city
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(identifier: "DetailsViewController") as! DetailsViewController
        detailVC.cityTable = citySegment.selectedSegmentIndex
        //print(indexPath)
        //print(citySegment.selectedSegmentIndex)
        let value = citySegment.selectedSegmentIndex
        if value == 0
        {
            detailVC.ahData = ahData[indexPath.row]
        }else if value == 1
        {
            detailVC.muData = muData[indexPath.row]
        }else if value == 2
        {
            detailVC.baData = baData[indexPath.row]
        }else if value == 3
        {
            detailVC.puData = puData[indexPath.row]
        }
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

