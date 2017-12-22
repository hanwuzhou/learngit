import { Component } from '@angular/core';
import { ToastController,IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { indexPage } from '../index/index';
import { LoginPage } from '../login/login';
import { OrderConfirmPage } from '../order-confirm/order-confirm';

/**
 * Generated class for the CartPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-cart',
  templateUrl: 'cart.html',
})
export class CartPage {

  myLogin:any=LoginPage;
  login:boolean;
  list:Array<any>=[];
  constructor(public toastCrl:ToastController,public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
  }
  jumpToIndex(){
    this.navCtrl.parent.select(0);
  }
  ionViewDidLoad() {
    this.checkUserLogin();
    this.loadList();
  }
  ionViewWillEnter(){
    this.checkUserLogin();
    this.loadList();
  }

  checkUserLogin(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/session_data.php')
    .subscribe((result)=>{
      if(result.uid){
        this.login=false;
      }else{
        this.login=true;
      }
    });
  }
  loadList(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/cart/list.php')
    .subscribe((result:any)=>{
      if(result.code==300){
        this.login=true;
      }else if(result.code==200){
        this.list=result.data;
      }
    });
  }

  jumpToOrderconfirm(){
    this.navCtrl.push(OrderConfirmPage);
  }

  sumAll(){
    var totalPrice=0;
    for(var i=0;i<this.list.length;i++){
       totalPrice+=(this.list[i].count*this.list[i].price);
    }
    return totalPrice;
  }

  modifyCartCount(isMinus:boolean,index:number){
    let myCount=this.list[index].count;
    if(isMinus){
      myCount--;
      if(myCount==-1){
        return;
      }
    }else{
        myCount++;
    }
    this.list[index].count=myCount;
  }

}
