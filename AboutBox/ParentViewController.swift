
// this is to demo the way to call aboutbox component.
//1- aboutbox itself acts as a blackbox.
//2-parent calls it - so the way it called is from parent side.


import UIKit

class ParentViewController: UIViewController {
    @IBAction func btnClk(_ sender: Any) {
        loadViewControllers("AboutViewController");
    }
    
    func loadViewControllers(_ named: String) {
        let storyboard = UIStoryboard.init(name: named, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: named) ;
        self.present(vc, animated: true) {}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
