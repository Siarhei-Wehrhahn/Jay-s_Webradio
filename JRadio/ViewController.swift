//
//  ViewController.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 24.03.24.
//

import Foundation
import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBAction func sendEmailButtonTapped(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail() {
            let mailComposeViewController = MFMailComposeViewController()
            mailComposeViewController.mailComposeDelegate = self
            mailComposeViewController.setToRecipients(["info@jayswebradio.com"])
            mailComposeViewController.setSubject("Ich brauche Hilfe!")
            mailComposeViewController.setMessageBody("Von der App gesendet.", isHTML: false)

            present(mailComposeViewController, animated: true, completion: nil)
        } else {
            // Fallback, wenn E-Mail nicht konfiguriert ist oder nicht gesendet werden kann
            print("E-Mail kann nicht gesendet werden.")
        }
    }

    // Funktion, um die Mail-App zu schließen, wenn der Benutzer die E-Mail sendet oder abbricht
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
