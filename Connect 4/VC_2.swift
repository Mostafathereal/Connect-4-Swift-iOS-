//
//  VC_2.swift
//  Connect 4
//
//  Created by Mostafa Mohsen on 2018-05-08.
//  Copyright © 2018 Platinum Productions. All rights reserved.
//

import UIKit

class VC_2: UIViewController {
    
    
    var colorA = UIColor(red: 0.1, green: 1.0, blue: 0.2, alpha: 0.5)
    var colorB = UIColor(red: 0.1, green: 0.2, blue: 1.0, alpha: 0.5)
    
    var counter = 0
    
    var circles: [[UIButton]] = [[]]
    
    var SList = [[0, 0, 0, 0, 0, 0, 0],
                 [0, 0, 0, 0, 0, 0, 0],
                 [0, 0, 0, 0, 0, 0, 0],
                 [0, 0, 0, 0, 0, 0, 0],
                 [0, 0, 0, 0, 0, 0, 0],
                 [0, 0, 0, 0, 0, 0, 0]]
    
    @IBAction func Button1(_ sender: Any) {
        if nextMove(List: SList, column: 0) != -1{
            circles[nextMove(List: SList, column: 0)][0].backgroundColor = color(row: nextMove(List: SList, column: 0), column: 0)
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if nextMove(List: SList, column: 1) != -1{
            circles[nextMove(List: SList, column: 1)][1].backgroundColor = color(row: nextMove(List: SList, column: 1), column: 1)
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if nextMove(List: SList, column: 2) != -1{
            circles[nextMove(List: SList, column: 2)][2].backgroundColor = color(row: nextMove(List: SList, column: 2), column: 2)
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if nextMove(List: SList, column: 3) != -1{
            circles[nextMove(List: SList, column: 3)][3].backgroundColor = color(row: nextMove(List: SList, column: 3), column: 3)
        }
    }
    
    @IBAction func button5(_ sender: Any) {
        if nextMove(List: SList, column: 4) != -1{
            circles[nextMove(List: SList, column: 4)][4].backgroundColor = color(row: nextMove(List: SList, column: 4), column: 4)
        }
    }
    
    @IBAction func button6(_ sender: Any) {
        if nextMove(List: SList, column: 5) != -1{
            circles[nextMove(List: SList, column: 5)][5].backgroundColor = color(row: nextMove(List: SList, column: 5), column: 5)
        }
    }
    
    @IBAction func button7(_ sender: Any) {
        if nextMove(List: SList, column: 6) != -1{
            circles[nextMove(List: SList, column: 6)][6].backgroundColor = color(row: nextMove(List: SList, column: 6), column: 6)
        }
    }
    
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet var b11: UIButton!
    @IBOutlet var b12: UIButton!
    @IBOutlet var b13: UIButton!
    @IBOutlet var b14: UIButton!
    @IBOutlet var b15: UIButton!
    @IBOutlet var b16: UIButton!
    @IBOutlet var b17: UIButton!
    
    @IBOutlet var b21: UIButton!
    @IBOutlet var b22: UIButton!
    @IBOutlet var b23: UIButton!
    @IBOutlet var b24: UIButton!
    @IBOutlet var b25: UIButton!
    @IBOutlet var b26: UIButton!
    @IBOutlet var b27: UIButton!
    
    @IBOutlet var b31: UIButton!
    @IBOutlet var b32: UIButton!
    @IBOutlet var b33: UIButton!
    @IBOutlet var b34: UIButton!
    @IBOutlet var b35: UIButton!
    @IBOutlet var b36: UIButton!
    @IBOutlet var b37: UIButton!
    
    @IBOutlet var b41: UIButton!
    @IBOutlet var b42: UIButton!
    @IBOutlet var b43: UIButton!
    @IBOutlet var b44: UIButton!
    @IBOutlet var b45: UIButton!
    @IBOutlet var b46: UIButton!
    @IBOutlet var b47: UIButton!
    
    @IBOutlet var b51: UIButton!
    @IBOutlet var b52: UIButton!
    @IBOutlet var b53: UIButton!
    @IBOutlet var b54: UIButton!
    @IBOutlet var b55: UIButton!
    @IBOutlet var b56: UIButton!
    @IBOutlet var b57: UIButton!
    
    @IBOutlet var b61: UIButton!
    @IBOutlet var b62: UIButton!
    @IBOutlet var b63: UIButton!
    @IBOutlet var b64: UIButton!
    @IBOutlet var b65: UIButton!
    @IBOutlet var b66: UIButton!
    @IBOutlet var b67: UIButton!
    
    func nextMove(List :[[Int]], column :Int) -> Int{
        
        for i in stride(from: 5, through: 0, by: -1){
            if List[i][column] == 0{
                
                return i
            }
        }
        
        return -1
        
    }
    
    func color(row: Int, column: Int) -> UIColor {
        if counter % 2 == 0{
            counter += 1
            SList[row][column] = 1
            print(SList)
            print(" ")
            
            checkD(List: SList)
            checkH(List: SList)
            checkV(List: SList)
            
            return colorA
        }
        else{
            counter += 1
            SList[row][column] = 2
            print(SList)
            print(" ")
            
            checkD(List: SList)
            checkH(List: SList)
            checkV(List: SList)
            
            return colorB
        }
    }
    
    
    /////////////////////////////////////////////////////////////////////////////////////
    
    func checkH(List :[[Int]]){
        var count = 1
        var person = 0
        
        for i in 0...5{
            var x = List[i][0]
            
            for j in 1...6{
                if x == List [i][j] {
                    count += 1
                    person = List [i][j]
                }
                else{
                    count = 1
                }
                if count == 4 && person != 0{
                    break
                }
                x = List [i][j]
            }
            
            //print("count = ", count)
            //print("person = ", person)
            
            
            if count == 4 && person != 0{
                print("player", person, "wins!!! good job little boy")
                
                label1.text = "player " + String(person) + " wins!!"
                label2.text = "player " + String(person) + " wins!!"
                break
            }
            count = 1
        }
    }
    
    func checkV(List :[[Int]]){
        var count = 1
        var person = 0
        
        for i in 0...6{
            var x = List[0][i]
            
            for j in 1...5{
                if x == List [j][i] {
                    count += 1
                    person = List [j][i]
                }
                else{
                    count = 1
                }
                if count == 4 && person != 0{
                    break
                }
                x = List [j][i]
            }
            
            //print("count = ", count)
            //print("person = ", person)
            
            if count == 4 && person != 0{
                print("player", person, "wins!!! good job little boy")
                label1.text = "player " + String(person) + " wins!!"
                label2.text = "player " + String(person) + " wins!!"
                break
            }
            count = 1
        }
    }
    
    func rec(List: [[Int]], index1: Int, index2: Int, mult: Int, counter: Int) -> Int{
        
        if ((index1 >= 5 || index2 >= 6) && mult == 1 ) || (((index1 >= 5 || index2 == 0) && mult == -1)){
            return counter
        }
        else if List[index1][index2] == List[index1+1][index2+mult] && List[index1][index2] != 0{
            return rec(List: List, index1: index1 + 1, index2: index2 + mult, mult: mult, counter: counter+1)
        }
        else{
            return counter
        }
    }
    
    func checkD(List: [[Int]]){
        var player = 0
        var mult = 1
        
        for j in 0...2{
            for i in 0...6{
                
                if i > 3{mult = -1}
                
                if rec(List: List, index1: j, index2: i,  mult: mult, counter: 1) >= 4{
                    
                    player = List[j][i]
                    print("player", player, "is the winner!!!")
                    label1.text = "player " + String(player) + " wins!!"
                    label2.text = "player " + String(player) + " wins!!"
                    break
                }
                
                if i == 3{
                    if rec(List: List, index1: j, index2: i,  mult: -1, counter: 1) >= 4{
                        
                        player = List[j][i]
                        print("player", player, "is the winner!!!")
                        label1.text = "player " + String(player) + " wins!!"
                        label2.text = "player " + String(player) + " wins!!"
                        break
                    }
                }
            }
            mult = 1
            if player != 0{
                break
            }
        }
    }
    
    /////////////////////////////////////////////////////////////////////////////////////

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = ""
        label2.text = ""
        
        circles = [[b11, b12, b13, b14, b15, b16, b17], [b21, b22, b23, b24, b25, b26, b27], [b31, b32, b33, b34, b35, b36, b37], [b41, b42, b43, b44, b45, b46, b47], [b51, b52, b53, b54, b55, b56, b57], [b61, b62, b63, b64, b65, b66, b67]]
        
        print("done")
        
        
        // Do any additional setup after loading the view.
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
