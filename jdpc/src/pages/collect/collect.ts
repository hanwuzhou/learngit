import { Component } from '@angular/core';
import { ToastController,IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { DetailPage } from '../detail/detail';
import { LoginPage } from '../login/login';

/**
 * Generated class for the CollectPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-collect',
  templateUrl: 'collect.html',
})
export class CollectPage {
  myDesnation:any;
  list:Array<any>=[];
  login:boolean;
  myLogin:any;
  constructor(public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
    this.myLogin=LoginPage;
  }
  jumpToIndex(){
    this.navCtrl.parent.select(0);
  }
  ionViewDidLoad() {
    this.myDesnation=DetailPage;
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
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/collect/list.php')
    .subscribe((result:any)=>{
      if(result.code==300){
        this.login=true;
      }else if(result.code==200){
        this.list=result.data;
      }
    });
  }

}
