import { Component } from '@angular/core';
import { ToastController,IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { LoginPage } from '../login/login';
import { indexPage } from '../index/index';
import { CartPage } from '../cart/cart';
import { CollectPage } from '../collect/collect';

/**
 * Generated class for the DetailPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-detail',
  templateUrl: 'detail.html',
})
export class DetailPage {

  picList:Array<any>=[];
  title:any;
  subTitle:any;
  sprice:any;
  myCart:any;
  myCollect:any;
  constructor(public myToastCtrl:ToastController,public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
   this.myCart=CartPage;
   this.myCollect=CollectPage;
  }

  ionViewDidLoad() {
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/product/details.php?lid='+this.navParams.data.lid)
    .subscribe((result)=>{
      this.picList=result.details.picList;
      this.title=result.details.title;
      this.subTitle=result.details.subtitle;
      this.sprice=result.details.price;
    });
  }

  addCart(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/cart/add.php?lid='+this.navParams.data.lid+'&buyCount=1')
    .subscribe((result)=>{
      let msg="";
      if(result.code==300){
        msg='您未登录，请登录！';
        this.navCtrl.push(LoginPage);
      }else if(result.code==200){
        msg='添加成功！';
      }else if(result.code==500){
        msg='添加失败！';
      }
      this.myToastCtrl.create({
        message:msg,
        duration:1500,
        position:'bottom'
      }).present();
    });
  }

  addCollect(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/collect/add.php?lid='+this.navParams.data.lid)
    .subscribe((result:any)=>{
      let msg="";
      if(result.code==300){
        msg='您未登录，请登录！';
        this.navCtrl.push(LoginPage);
      }else if(result.code==200){
        msg='添加收藏成功！';
      }else if(result.code==300){
        msg='添加收藏失败！';
      }else{
        msg='商品已存在！';
        setTimeout(()=>{
          this.navCtrl.push(this.myCollect);
        },2000);
      }
      this.myToastCtrl.create({
        message:msg,
        duration:1500,
        position:'bottom'
      }).present();
    });
  }

}
