//
//  TableViewController.swift
//  play list with music
//
//  Created by Тахмина on 24/11/2024.
//


import UIKit

class TableViewController: UITableViewController {
   // var arrayNamesOfPLaylist = ["Travel", "Cooking", "Work", "Jazz"]
   // var  arrayNumberOfsongs = ["10", "20","45","35"]
      //  var arrayImages = ["travel","cooking","work","jazz"]
    var arrayplaylists = [playlists(NamesOfPLaylist: "Travel",NumberOfsongs: "10 songs ", Imagename: "travel"),
    playlists(NamesOfPLaylist: "Cooking", NumberOfsongs: "20 songs", Imagename: "cooking"),
    playlists(NamesOfPLaylist: "Work", NumberOfsongs: "45 songs", Imagename:"work"),
    playlists(NamesOfPLaylist: "Jazz", NumberOfsongs: "35 songs", Imagename: "jazz")];
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func AddPleylist(_ sender: Any) {
        arrayplaylists.append(playlists(NamesOfPLaylist: "name for playlist",NumberOfsongs: "add songs ", Imagename: "add"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayplaylists.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

            // Configure the cell...
         let Label = cell.viewWithTag(1000) as!UILabel
        Label.text = arrayplaylists[indexPath.row].NamesOfPLaylist;
        
        let labelNumber = cell.viewWithTag(1002) as! UILabel
        labelNumber.text = arrayplaylists[indexPath.row].NumberOfsongs
        
        let imageView = cell.viewWithTag(1003) as! UIImageView
        imageView.image = UIImage(named: arrayplaylists[indexPath.row].Imagename)
            return cell
        }
        

        
        // Override to support conditional editing of the table view.
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            // Return false if you do not want the specified item to be editable.
            return 95
        }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.show(vc, sender: self )
        vc.playlist = arrayplaylists[indexPath.row]
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayplaylists.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
