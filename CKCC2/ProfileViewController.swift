//
//  ProfileViewController.swift
//  CKCC2
//
//  Created by KimhounKP on 3/24/17.
//  Copyright © 2017 KimhounKP. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var placeOfBirthLabel: UILabel!
    
    let username   = "SRENG Kimhoun"
    let gender = "Female"
    let email = "kimhoun.sreng@gmail.com"
    let placeOfBirth = "Kandal"
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text      = username
        genderLabel.text    = gender
        emailLabel.text     = email
        placeOfBirthLabel.text = placeOfBirth

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
