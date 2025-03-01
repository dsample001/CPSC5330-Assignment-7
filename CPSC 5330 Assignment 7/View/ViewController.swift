//
//  ViewController.swift
//  CPSC 5330 Assignment 7
//
//  Created by user273384 on 2/26/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var resultLogic = ResultLogic()
    var winLoss = ""
    var opponent = ""
    var score = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return number of games.
        return resultLogic.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()

        // Display game date.
        content.text = resultLogic.getDate(indexPath.row)
        
        // Display game opponent.
        content.secondaryText = resultLogic.getOpponent(indexPath.row)
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Select game to see the final score."
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        winLoss = resultLogic.getWinLoss(indexPath.row)
        opponent = resultLogic.getOpponent(indexPath.row)
        score = resultLogic.getScore(indexPath.row)
        self.performSegue(withIdentifier: "toResults", sender: self)
    }
    
    //self.performSegue(withIdentifier: "toResult", sender: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toResults" {
            let navigation = segue.destination as! ResultView
            navigation.winLoss = winLoss
            navigation.opponent = opponent
            navigation.score = score
        }
    }

}

