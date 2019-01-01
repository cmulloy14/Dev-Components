//
// https://github.com/Juanpe/SkeletonView
// Chek out IBInspectable Attributes for last line percentage, corner radius, and isSkeletonable attributes
import UIKit
import SkeletonView

class SkeletonViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.showAnimatedSkeleton()

        imageView.showAnimatedGradientSkeleton()

        let textViewGradient = SkeletonGradient(baseColor: UIColor.asbestos, secondaryColor: UIColor.midnightBlue)
        let animation = SkeletonAnimationBuilder().makeSlidingAnimation(withDirection: .leftRight)
        textView.showAnimatedGradientSkeleton(usingGradient: textViewGradient, animation: animation)
    }

}


extension SkeletonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: SkeletonViewCell.reuseIdentifier, for: indexPath) as! SkeletonViewCell

        cell.contentLabel.showAnimatedGradientSkeleton()
        return cell
    }

}

extension SkeletonViewController: SkeletonTableViewDataSource {

    func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return SkeletonViewCell.reuseIdentifier
    }

    func numSections(in collectionSkeletonView: UITableView) -> Int {
        return 1
    }



}

