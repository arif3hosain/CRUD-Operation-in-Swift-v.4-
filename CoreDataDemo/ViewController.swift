//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Arif Hosain on 7/9/19.
//  Copyright © 2019 mas. All rights reserveresult.
//

import UIKit
import CoreData

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate //create delegate
        let context = appDelegate.persistentContainer.viewContext
        let user = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context)
        user.setValue("arif3hosain@gmail.com", forKey: "username")
        user.setValue("123789", forKey: "password")
        user.setValue(26, forKey: "age")

        do {
            try context.save()
            print("Data successfully saved!")
        } catch  {
            print("Failure, there was something wrong !")
        }

        
      /*  let request = NSFetchRequest<NSFetchRequestResult> (entityName: "Employee")
          request.returnsObjectsAsFaults = false
          let results = try? context.fetch(request)
     */
        
     //    request.predicate = NSPredicate(format: "age = %@", "26")  //this line will filter your result from resultset
       
 //comment out this section to print results
        
  /*      if (results?.count)! > 0 {
            for result in results as! [NSManagedObject] {
                if let user = result.value(forKey: "username") as? String {
                    print("username: \(user)")
                }
                if let pass = result.value(forKey: "password") as? String {
                    print("password: \(pass)")
                }
                if let age = result.value(forKey: "age") as? Int {
                    print("age: \(age)")
                }
            }
        }
 */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreateresult.
    }


}

