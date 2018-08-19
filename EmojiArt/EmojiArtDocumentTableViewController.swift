//
//  EmojiArtDocumentTableViewController.swift
//  EmojiArt
//
//  Created by Ilya Semerukhin on 19.08.2018.
//

import UIKit

class EmojiArtDocumentTableViewController: UITableViewController {
   
   var emojiArtDocuments = ["Untitled", "Untitled 1", "Untitled 2"]
   
   // MARK: - Table view data source
   
   override func numberOfSections(in tableView: UITableView) -> Int {
      return 1
   }
   
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return emojiArtDocuments.count
   }
   
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentCell", for: indexPath)
      cell.textLabel?.text = emojiArtDocuments[indexPath.row]
      return cell
   }
   
   @IBAction func newEmojiArt(_ sender: UIBarButtonItem) {
      emojiArtDocuments += ["Untitled".madeUnique(withRespectTo: emojiArtDocuments)]
      tableView.reloadData()
   }
   
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
         emojiArtDocuments.remove(at: indexPath.row)
         tableView.deleteRows(at: [indexPath], with: .fade)
      } else if editingStyle == .insert {
         
      }
   }
   
   /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    
    }
    */
   
   /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
   
   /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
   
}





