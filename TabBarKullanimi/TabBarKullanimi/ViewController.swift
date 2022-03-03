//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Mehmet Saltan on 26.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let tabsItems = tabBarController?.tabBar.items {
            let firstItem = tabsItems.first
            firstItem?.badgeValue = "2"
            let secondItem = tabsItems[1]
            secondItem.badgeValue = "New"
        }
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.gray
        itemRenkDegistir(itemApperance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemApperance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemApperance: appearance.compactInlineLayoutAppearance)
        badgeRenkDegistir(itemApperance: appearance.inlineLayoutAppearance)
        badgeRenkDegistir(itemApperance: appearance.compactInlineLayoutAppearance)
        badgeRenkDegistir(itemApperance: appearance.stackedLayoutAppearance)
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
       
    }

    func itemRenkDegistir(itemApperance:UITabBarItemAppearance){
        //Seçili olmayan durum
        itemApperance.normal.iconColor = UIColor.white
        itemApperance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    
        //Seçili durum
        itemApperance.selected.iconColor = UIColor.red
        itemApperance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
    
    }
    func badgeRenkDegistir(itemApperance:UITabBarItemAppearance){
        //Seçili olmayan durum
        itemApperance.normal.badgeBackgroundColor = UIColor.green
        //Seçili durum
        itemApperance.selected.badgeBackgroundColor = UIColor.blue
    }

}

