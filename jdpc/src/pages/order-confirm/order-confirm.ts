import { Component } from '@angular/core';
import { ModalController,IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { PayPage } from '../pay/pay';

/**
 * Generated class for the OrderConfirmPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-order-confirm',
  templateUrl: 'order-confirm.html',
})
export class OrderConfirmPage {

  list:Array<any>=[];
  constructor(public myModalCtrl:ModalController,public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    this.initData();
  }

  initData(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/cart/list.php')
    .subscribe((result:any)=>{
      this.list=result.data;
    });
  }
  sumAll(){
    let price=0; 
    for(let i=0;i<this.list.length;i++){
      price+=this.list[i].price*this.list[i].count;
    }
    return price;
  }
  showPayModal(){
    let myModal=this.myModalCtrl.create(PayPage,{price:this.sumAll()});
    myModal.present();
    myModal.onDidDismiss((data)=>{
      console.log(data);
      if(data.result){
        if(this.navCtrl.canGoBack()){
          this.navCtrl.pop();
        }
        this.navCtrl.parent.select(0);
      }
    });
  }

}
