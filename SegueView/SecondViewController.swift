//
//  SecondViewController.swift
//  TwoViewController
//
//  Created by Chen Wang on 12/24/17.
//  Copyright © 2017 Chen Wang. All rights reserved.
//

import UIKit

protocol CanRecieve {
    func dataRecieved(data: String)
}




class SecondViewController: UIViewController {
    
    var data = ""
    var delegate : CanRecieve?
    

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textfield1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label1.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1(_ sender: UIButton) {
        delegate?.dataRecieved(data: textfield1.text!)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
