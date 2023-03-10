//
//  ViewController.swift
//  CalendarExample
//
//  Created by Dilara Karakaş on 25.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createCalendar()
    }
    func createCalendar(){
        let calendarView = UICalendarView()
        //view.backgroundColor = .systemRed
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        calendarView.calendar = .current
        calendarView.locale = .current
        calendarView.fontDesign = .rounded
        calendarView.delegate = self
        calendarView.layer.cornerRadius = 12
        //calendarView.backgroundColor = .systemBackground
        view.addSubview(calendarView)
        
        NSLayoutConstraint.activate([calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                                     calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                                     calendarView.heightAnchor.constraint(equalToConstant: 450),
                                     calendarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
                                    ])
    }
}
extension ViewController: UICalendarViewDelegate{
    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        return nil
    }
}

