//
//  ViewController.swift
//  segueApp
//
//  Created by Beyza Aslan on 22.02.2025.
//

import UIKit

class ViewController: UIViewController {
    var userName = ""

    ///ilk ekran yazısı
    @IBOutlet weak var myLabel: UILabel!
    // input
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viwDidLoad çağırıldı")

    }
    override func viewDidDisappear(_ animated: Bool) {
         print("viewDidDisappear çağırıldı")


    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear çağırıldı")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear çağırıldı")
        nameText.text = ""
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        //inputun içindekini username ksımına atadım
        performSegue(withIdentifier: "toSecondVC", sender:nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        userName kısmını secondViewController kısmındaki myName buna eşitlicez
        if segue.identifier == "toSecondVC" {
                                                 //hangi yere gidicekse cast ediyoruz
            let destinationVC = segue.destination as! SecondViewController
//            destinationVC. diyince SecondViewController içindeki değişkenlere metotlara falan ulaşabiliyorum
            destinationVC.myName = userName
            
        }
    }
    
}

