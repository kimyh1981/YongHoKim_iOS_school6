import UIKit


protocol MyCustomViewDelegate {
    func didSelectedMycustomView(_ customView: MyCustomView)
}

class MyCustomView: UIView {

    private var button: UIButton!
    var delegate: MyCustomViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.brown
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createView() {
        button = UIButton.init()
        button.setTitle("Press", for: .highlighted)
        button.setTitleColor(.red, for: .highlighted)
        button.frame = self.bounds
        button.addTarget(self, action: #selector(btnHandler(_:)), for: .touchUpInside)
        self.addSubview(button)
    }
    
    @objc func btnHandler (_ sender: UIButton) {
        delegate?.didSelectedMycustomView(self)

    }
   
}





