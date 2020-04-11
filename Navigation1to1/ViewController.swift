//
//  ViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 2020/04/10.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
        let destVC = segue.destination as! OrderViewController
        
        let ordered: String! = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex)
        destVC.title = ordered
        var outString: String = "감사합니다!!\n 주문내역: <"
        outString += ordered
        outString += ">, 맞나요?"
        destVC.info = outString
        }
    }
    
    //override func viewDidLoad() { //view가 화면에 나타난 이후에 view가 메모리에 로드가  끝났다을 때 필요하다면 사용
    //    super.viewDidLoad()
        // Do any additional setup after loading the view.
    //}


}

