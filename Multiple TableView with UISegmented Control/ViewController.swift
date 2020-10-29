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
            AhemdabadModel(img: UIImage(named: "a1"), festivalName: "Navratri", city: "Ahemdabad", desc: "Navaratri is a Hindu festival that spans nine nights (and ten days) and is celebrated every year in the autumn. ... In the northern and western states, the festival is synonymous with Rama Lila and Dussehra that celebrates the battle and victory of god Rama over the demon king Ravana."),
            AhemdabadModel(img: UIImage(named: "a2"), festivalName: "Rann Utsav", city: "Ahemdabad", desc: "It is a unique desert carnival which was prioritised in 2005 by TCGL by putting map of Gujarat on international tourism. There are visitors across the world. The area is widely spread in 5,00,000 sq metres with more than 350 luxurious tents."),
            AhemdabadModel(img: UIImage(named: "a3"), festivalName: "Shamlaji Melo", city: "Ahemdabad", desc: "Shamlaji Melo takes place in a small town, Shamlaji, in Gujarat. The town is situated on the Delhi-Ahmedabad highway of India. Shamlaji Melo is also known as the Kartik Poornima fair, as it is celebrated on the full moon day in the month of Kartik. The fair is usually celebrated in November and lasts for about a week."),
            AhemdabadModel(img: UIImage(named: "a4"), festivalName: "International Kite Festival (Uttarayan)", city: "Ahemdabad", desc: "The International Kite Festival (Uttarayan) is regarded as one of the biggest festivals celebrated.Months before the festival, homes in Gujarat begin to manufacture kites for the festival."),
            AhemdabadModel(img: UIImage(named: "a5"), festivalName: "Bhavnath Mahadev Fair", city: "Ahemdabad", desc: "The Bhavnath fair is a five-day occasion in Magha month of Hindu calendar, in the month of February-March, culminating with the most auspicious worship of God Shiva, at midnight of Maha Shivaratri, which is thronged by hundreds of Naga Sadhus [naked Sadhus] of Dashanami Sampradaya, taking dip at Mrugi kund (tank) and offering their prayers at the temple. People believe that God Shiva himself visits the shrine here on this holiest day."),
            AhemdabadModel(img: UIImage(named: "a6"), festivalName: "Rath Yatra", city: "Ahemdabad", desc: "The three chariots are decorated as per the unique scheme prescribed and followed for centuries stand on the Bada Danda, the Grand Avenue. The chariots are lined across the wide avenue in front of the temple close to its eastern entrance, which is also known as the Sinhadwara or the Lion's Gate."),
            AhemdabadModel(img: UIImage(named: "a7"), festivalName: "Janmashtami", city: "Ahemdabad", desc: "Krishna Janmashtami, also known simply as Janmashtami or Gokulashtami, is an annual Hindu festival that celebrates the birth of Krishna, the eighth avatar of Vishnu. ... It is an important festival, particularly in the Vaishnavism tradition of Hinduism.")
        ]
        
        muData = [
            MumbaiModel(img: UIImage(named: "m1"), festivalName: "Banganga (Jan)", city: "Mumbai", desc: "Banganga has an interesting legend associated with it. Lord Rama, who was on his way to Lanka, stopped at the Malabar Hills upon feeling thirsty. But, he could not find any fresh water source to quench thirst."),
            MumbaiModel(img: UIImage(named: "m2"), festivalName: "Elephanta festival (Feb)", city: "Mumbai", desc: "Elephanta festival is organized by the Maharashtra Tourism Development Corporation (MTDC) to promote Mumbai tourism and culture."),
            MumbaiModel(img: UIImage(named: "m3"), festivalName: "Gudhi Padava (Mar-Apr)", city: "Mumbai", desc: "Gudi Padwa, also known as Gudi Padva, is celebrated on the first day of the Chaitra. This means it usually falls in late March or early April in the Gregorian calendar and generally takes place on the same day as Cheti Chand in Gujarat and Ugadi, which is celebrated as the Telugu and Kannada New Year in the Deccan region of India."),
            MumbaiModel(img: UIImage(named: "m4"), festivalName: "Ganesh Chaturthi (Aug-Sep)", city: "Mumbai", desc: "Ganesh Chaturthi—or Vinayaka Chaturthi— is a ten day festival, held to honor the Hindu god of intelligence, Ganesha. The day usually falls in the Gregorian months of August or September, and is observed with prayer, public and private display of Ganesha idols, the chanting of Vedic hymns, and fasting. On the final day of the festival, an idol of Ganesha is carried in a public procession, and plunged into a nearby body of water."),
            MumbaiModel(img: UIImage(named: "m5"), festivalName: "Diwali(Oct-Nov)", city: "Mumbai", desc: "Diwali, or Dipawali, is India's biggest and most important holiday of the year. The festival gets its name from the row (avali) of clay lamps (deepa) that Indians light outside their homes to symbolize the inner light that protects from spiritual darkness. This festival is as important to Hindus as the Christmas holiday is to Christians.")
        ]
        
        baData = [
            BangaloreModel(img: UIImage(named: "b1"), festivalName: "Karaga Festival", city: "Bangalore", desc: "Karaga is a folk dance of Karnataka which originated as a ritual dedicated to Draupadi as known in these parts as Droupthamma. The ritual is performed on a full moon day. The ritual pot filled with water and adorned with decorations several feet high is carried by the priest."),
            BangaloreModel(img: UIImage(named: "b2"), festivalName: "Kadalekai Parishe Festival", city: "Bangalore", desc: "Kadalekai Parishe (Kannada: ಕಡಲೆಕಾಯಿ ಪರಿಶೆ), is an annual groundnut fair held in Bangalore. ... Apart from the Groundnuts, there are numerous stalls in the fair, selling Bangles, traditional toys and clay trinkets, plastic and glass dolls, Mehndi tattoos."),
            BangaloreModel(img: UIImage(named: "b3"), festivalName: "Makar Sankranti", city: "Bangalore", desc: "Makara Sankranti or Maghi, is a festival day in the Hindu calendar, dedicated to the deity Surya (sun). ... It marks the first day of the sun's transit into Makara rashi (Capricorn), marking the end of the month with the winter solstice and the start of longer days."),
            BangaloreModel(img: UIImage(named: "b4"), festivalName: "Ugadi Festival", city: "Bangalore", desc: "Ugadi, also known as Yugadi, is a festival celebrating New Year’s Day for Hindus from the Karnataka, Maharashtra, Andhra Pradesh, and Telangana states of India."),
            BangaloreModel(img: UIImage(named: "b5"), festivalName: "Varamahalakshmi Festival", city: "Bangalore", desc: "Varalakshmi Vratam is a festival to propitiate the Goddess Lakshmi. Varalakshmi is one who grants boons (Vara). ... It is believed that worshipping the Goddess Varalakshmi on this day is equivalent to worshipping Ashtalakshmi – the eight goddesses of Wealth, Earth, Wisdom, Love, Fame, Peace, Contentment, and Strength.")
        ]
        
        puData = [
            PuneModel(img: UIImage(named: "p1"), festivalName: "Makar Sankranti", city: "Pune", desc: "There is a sankranti every month when the sun passes from one sign of the zodiac to the next. The popular Indian festival “Makar Sankranti” is the first Indian festival falls in New Year."),
            PuneModel(img: UIImage(named: "p2"), festivalName: "Vasant Panchami", city: "Pune", desc: "Vasant Panchami is a festival that marks the beginning of preparations for the King of all Seasons, Spring. It is celebrated by people in various ways depending on the region. ... For many Hindus, Vasant Panchami is the festival dedicated to goddess Saraswati who is their goddess of knowledge, language, music and all arts."),
            PuneModel(img: UIImage(named: "p3"), festivalName: "Holi", city: "Pune", desc: "Holi has been celebrated in the Indian subcontinent for centuries, with poems documenting celebrations dating back to the 4th century CE. It marks the beginning of spring after a long winter, symbolic of the triumph of good over evil. It is celebrated in March, corresponding to the Hindu calendar month of Phalguna. In 2020, Holi begins March 10."),
            PuneModel(img: UIImage(named: "p4"), festivalName: "Gudi Padwa", city: "Pune", desc: "Gudi Padwa 2020 Date in India: Ugadi or New Year’s Day for the Hindus in Andhra Pradesh, Telanagana and Karnataka will be celebrated on March 25 this year. On the same day, Marathis and Konkani Hindus also celebrate their new year, called Gudi Padwa. It marks the arrival of spring and reaping of rabi crops."),
            PuneModel(img: UIImage(named: "p5"), festivalName: "Nag Panchami", city: "Pune", desc: "Nag Panchami is celebrated after two days of Hariyali Teej. People offer milk, flowers, fruits to the snake idol for health, wealth & prosperity of their family members. ")
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

