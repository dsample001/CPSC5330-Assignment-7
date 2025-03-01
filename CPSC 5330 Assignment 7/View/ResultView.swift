//
//  ResultView.swift
//  CPSC 5330 Assignment 7
//
//  Created by user273384 on 3/1/25.
//

import UIKit

class ResultView: UIViewController {

    @IBOutlet weak var winLossLabel: UILabel!
    @IBOutlet weak var opponentLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var winLoss = ""
    var opponent = ""
    var score = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        winLossLabel.text = winLoss
        opponentLabel.text = opponent
        scoreLabel.text = score
    }
    
    
    @IBAction func returnButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
