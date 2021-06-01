//
//  ViewController.swift
//  FindUniqueCharacterStrings
//
//  Created by Daniel Washington Ignacio on 31/05/21.
//


/*
 Create a function that returns only strings with unique characters.

 Examples

 filterUnique(["abb", "abc", "abcdb", "aea", "bbb"]) ➞ ["abc"]
 // "b" occurs in "abb" more than once, "b" occurs in "abcdb" more than once, etc.

 filterUnique(["88", "999", "989", "9988", "9898"]) ➞ []

 filterUnique(["ABCDE", "DDEB", "BED", "CCA", "BAC"]) ➞ ["ABCDE", "BED", "BAC"]
 Notes

 N/A
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.filterUnique(["abb", "abc", "abcdb", "aea", "bbb"]))
      // print(self.filterUnique(["88", "999", "989", "9988", "9898"]))
      //  print(self.filterUnique(["ABCDE", "DDEB", "BED", "CCA", "BAC"]))
    }
    
    func filterUnique(_ arr: [String]) -> [String] {
        var result: [Character] = []
        var resultArray: [String] = []
        var equal: Int = 0
        var subEqual: Int = 0
        for n in arr {
            result.append(contentsOf: n)
            for m in result{
                for j in result{
                    if j == m{
                        equal = equal + 1
                    }
                }
                if equal == 1 {
                    subEqual = subEqual + 1
                }
                if equal > 1{
                        subEqual = 0
                }
                equal = 0
                
            }
            if subEqual > 2{
                resultArray.append(n)
            }
            subEqual = 0
            result.removeAll()
        }
        return resultArray
    }


}

