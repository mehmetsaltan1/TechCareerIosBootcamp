

import UIKit

class YapilacakKayitVC: UIViewController {

    @IBOutlet weak var tfYapilacakAd: UITextField!
    var yapilacakKayitPressenterNesnesi:ViewToPresenterYapilacakKayitProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        YapilacakKayitRouter.createModule(ref: self)
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ya = tfYapilacakAd.text  {
            yapilacakKayitPressenterNesnesi?.ekle(yapilacak_ad: ya)
        
        }
    }
    
}
