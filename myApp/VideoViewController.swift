//
//  VideoViewController.swift
//  myApp
//
//  Created by talgat on 2/29/20.
//  Copyright © 2020 talgat. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableV: UITableView!
    var videos:[Video] = []
       var currentVideos:[Video] = []
        var video:Video = Video()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setUpSearchBar()
            alterLayout()
            
            let video = Video()
            video.Key = "108Ga1EdL_Q"
            video.Title = "Становая тяга. Классический стиль"
            videos.append(video)
            
            let video2 = Video()
            video2.Key = "jeM1BbcKkmg"
            video2.Title = "Как делать становую тягу"
            videos.append(video2)
            
            let video3 = Video()
            video3.Key = "GotRb2Ob7MA"
            video3.Title = "Приседания со штангой"
            videos.append(video3)
            
            let video4 = Video()
            video4.Key = "Czl9NcGrIsE"
            video4.Title = "Жим лежа"
            videos.append(video4)
            
            let video5 = Video()
            video5.Key = "cB3ztFmAXnU"
            video5.Title = "Тяга штанги в наклоне"
            videos.append(video5)
            
            let video6 = Video()
            video6.Key = "XnLTogcCx_A"
            video6.Title = "Скручивание. Пресс"
            videos.append(video6)
            
            let video7 = Video()
            video7.Key = "sD_yK1QqHPQ"
            video7.Title = "Жим штанги стоя. Армеиский жим"
            videos.append(video7)
            
            let video8 = Video()
            video8.Key = "vJ7oneZAo2Q"
            video8.Title = "Жим гантелей лежа на наклонной скамье"
            videos.append(video8)
            
            let video9 = Video()
            video9.Key = "HD1uRgLWSXY"
            video9.Title = "Тяга штанги к подбородку"
            videos.append(video9)
            
            let video10 = Video()
            video10.Key = "w7f3pYshjzg"
            video10.Title = "Отжимания на брусьях"
            videos.append(video10)
            
    //        currentVideos = videos
        }
        
        private func setUpSearchBar() {
            searchBar.delegate = self
        }

        func alterLayout() {
           tableV.tableHeaderView = UIView()
    //        // search bar in section header
    //        tableV.estimatedSectionHeaderHeight = 50
    //        // search bar in navigation bar
    //        //navigationItem.leftBarButtonItem = UIBarButtonItem(customView: searchBar)
            navigationItem.titleView = searchBar
//           searchBar.showsScopeBar = false // you can show/hide this dependant on your layout
            searchBar.placeholder = "Что Вас интересует?"
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return videos.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellV", for: indexPath) as! VideoTableViewCell
            
            cell.videoTitle.text = videos[indexPath.row].Title
            let url = "https://img.youtube.com/vi/\(videos[indexPath.row].Key)/0.jpg"
            cell.videoImage.downloaded(from: url)
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let vi = videos[indexPath.row]
            self.video = vi
            
            performSegue(withIdentifier: "toVideo", sender: nil)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "toVideo" {
                
                let vc = segue.destination as! VideoViewControllerAdd
                vc.video = self.video
            }
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            guard !searchText.isEmpty else {
                currentVideos = videos
                tableV.reloadData()
                return
            }
            currentVideos = videos.filter({ animal -> Bool in
                animal.Title.lowercased().contains(searchText)
            })
            tableV.reloadData()
        }
    //    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    //         currentVideos = videos.filter({ animal -> Bool in
    //             switch searchBar.selectedScopeButtonIndex {
    //             case 0:
    //                 if searchText.isEmpty { return true }
    //                 return animal.Title.lowercased().contains(searchText.lowercased())
    //             default:
    //                 return false
    //             }
    //         })
    //         tableV.reloadData()
    //     }
        
    }

    class Video{
        var Key:String = ""
        var Title:String = ""
    }

    extension UIImageView {
        func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
            contentMode = mode
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard
                    let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                    let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                    let data = data, error == nil,
                    let image = UIImage(data: data)
                    else { return }
                DispatchQueue.main.async() {
                    self.image = image
                }
                }.resume()
        }
        func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
            guard let url = URL(string: link) else { return }
            downloaded(from: url, contentMode: mode)
        }
    }
