import { Component } from '@angular/core';
import { ViewController,LoadingController,IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the PayPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-pay',
  templateUrl: 'pay.html',
})
export class PayPage {

  price:any;
  constructor(public myView:ViewController,public myLoad:LoadingController,public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    this.price=this.navParams.get("price");
  }

  closeModal(showldJump:boolean){
    this.myView.dismiss({result:showldJump});
  }
  goPay(){
    let myLoading=this.myLoad.create({
      content:'支付中',
      duration:3000
    });
    myLoading.present();
    setTimeout(()=>{
      myLoading.dismiss();
      // this.myView.dismiss();
      this.closeModal(true);
    },3000);
  }

}
