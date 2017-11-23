import UIKit
import WebKit

class MUNProcedureViewController: UIViewController, UIScrollViewDelegate, UIWebViewDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        self.automaticallyAdjustsScrollViewInsets = false
        
    }
    
    @IBAction func openPDF(_ sender: UIButton) {
        let pdfVC = storyboard?.instantiateViewController(withIdentifier: "pdfviewer") as! MUNPDFViewController
        pdfVC.stringPassed = sender.accessibilityIdentifier!
        navigationController?.pushViewController(pdfVC, animated: true)
            
        }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        imageView.frame.size.height = imageView.frame.size.height
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let newOrigin = CGPoint(x: 0, y: 0)
        
        scrollView.contentOffset = newOrigin
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
    


