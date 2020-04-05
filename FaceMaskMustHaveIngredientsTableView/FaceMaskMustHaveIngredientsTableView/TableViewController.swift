//
//  TableViewController.swift
//  FaceMaskMustHaveIngredientsTableView
//
//  Created by Wisa Terhune on 3/9/20.
//  Copyright © 2020 Wisa Terhune. All rights reserved.
//

import UIKit

var ingredients = ["Honey",
                   "Tumeric",
                   "Lemon",
                   "Green Tea Powder",
                   "Aloe Vera",
                   "Avocado",
                   "Orange",
                   "Ice",
                   "Rose Water",
                   "Egg White",
                   "Tomato Juice",
                   "Coconut Oil"]
var ingredientsDesc = [
                    "Honey mask is a great treatment for acne skin because of its antibacterial properties.Also, it can unclog pores and moisturize your skin. Make sure to add 1 Tablespoon of honey to your DIY mask.",
                       
                       "Tumeric has a great anti-inflammatory quality and can help reduce scarring while targetting your pores and calming the skin. Make sure to add 1/2 teaspoon of tumeric powder for your next DIY mask. ",
                       
                       "Lemon juice is an antioxidant which acts as a natural skin lightener. Lemon juice contains vitamin C, an antioxidant that helps reduce skin damage and premature aging. Make sure to squeeze 1/2 teaspoon of lemon juice for your next DIY mask.",
                       
                       "Green tea powder can help protect your skin from premature aging, UV damage, redness, and irritation. It also has the ability to fight off bacteria that can lead to acne breakouts. Next time, add 1 teaspoon of green tea powder to your mask mixture.",
                       
                       "Aloe vera is great for oily skin. Aloe mask can help zap excess oil from your skin and prevent acne. Next time, add 1 pump of aloe vera gel to your DIY mask mixture.",
                       
                       "Avocado is anti-inflammatory because it contains nutrients that act as antibacterial and reduces acne and scars. You can use avocado oil or avocado face masks to reap these benefits.",
                       
                       "Orange in your mask provides vitamin C to your skin while lightens dark circles and adds a glow to your face. For your next DIY mask, make sure to add a fresh orange juice to the mixture.",
                       
                       "Ice slows down inflammation and minimizes pores to reduce excessive oil production, especially for acne-prone skin. Ice can also reduce eye puffiness. Next time, gently massage your face with an ice pack.",
                       
                       "Rose water is a great cleanser and/or toner It aids in removing oil and dirt accumulated in clogged pores. Next time, gently wipe your clean face with a wet cotton pad of rose water.",
                       
                       "Egg white face mask enhances your skin's elasticity, shrinks large pores for grown bacteria and helps prevent greasy skin. For you next DIY mask, include 2 teaspoons of egg white to your mask mixture.",
                       
                       "Tomato juice on the skin balances your face's pH level, shrinks pores and treats sunburn spots. For your next DIY mask, make sure to add 1 tablespoon of tomato juice.",
                       
                       "Coconut oil has antibacterial and antifungal properties. Also, it is an exceptional moisturizer dry skin. For your next DIY mask, add 1/2 teaspoon of coconut oil to your mask mixture to reap the benefits. Some individuals who have severe acne might be sensitive to coconut oil so it is recommended to start with a small amount of coconut oil first."]

var images = ["Honey.jpg",
              "Tumeric.jpg",
              "Lemon.jpg",
              "Green Tea Powder.jpg",
              "Aloe Vera.jpg",
              "Avocado.jpg",
              "Orange.jpg",
              "Ice.jpg",
              "Rose Water.jpg",
              "Egg White.jpg",
              "Tomato Juice.jpg",
              "Coconut Oil.jpg"]

var myIndex = 0

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    

    // MARK: - Table view data source

    //Indicates number of rows
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ingredients.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

         // Configure the cell...
         cell.textLabel?.text = ingredients[indexPath.row]

         return cell
     }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
        }

}
