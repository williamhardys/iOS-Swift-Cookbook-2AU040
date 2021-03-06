//********************************************************************
//********************************************************************
//************************** Select Photo ****************************
//********************************************************************
//********************************************************************

import UIKit

//1.先加入UIImagePickerControllerDelegate,UINavigationControllerDelegate
class ViewController: UIViewController,UIImagePickerControllerDelegate,
                                    UINavigationControllerDelegate {

    @IBOutlet weak var resultImage: UIImageView!//用這個來顯示選取的結果圖
    
    @IBAction func selectImage(sender: UIButton) {
        //1.生成UIImagePickrtController
        let imagePicker = UIImagePickerController()
        //2.設定來源為相簿
        imagePicker.sourceType = .PhotoLibrary
        //3.把ViewController設定給UIImagePickerController的delegate
        imagePicker.delegate = self
        //4.推出UIImagePickerController來讓使用這選取相片
        presentViewController(imagePicker,
                                    animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : AnyObject]) {
            //5.利用UIImagePickerControllerOriginalImage的key
            //從info拿到照下的圖片
            let selectedImage =
                info[UIImagePickerControllerOriginalImage] as! UIImage
            //6.用resultImage屬性把選取的照片秀出
            resultImage.image = selectedImage
            //7.把照相的畫面收回
            self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        //8.照相過程中如果按了cancel，則把照相畫面收回
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

