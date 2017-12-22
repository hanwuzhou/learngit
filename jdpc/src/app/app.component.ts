import { Component, ViewChild } from '@angular/core';

import {ToastController, Platform, MenuController, Nav } from 'ionic-angular';

import { indexPage } from '../pages/index/index';
import { userPage } from '../pages/user/user';
import { HomePage } from '../pages/home/home';
import { CollectPage } from '../pages/collect/collect';
import { DetailPage } from '../pages/detail/detail';
import { LoginPage } from '../pages/login/login';
import { RegistPage } from '../pages/regist/regist';
import { CartPage } from '../pages/cart/cart';
import { ListPage } from '../pages/list/list';
import { OrderConfirmPage } from '../pages/order-confirm/order-confirm';
import { PayPage } from '../pages/pay/pay';
import { myHttpService } from '../app/utility/myhttp.service';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';


@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  // make HelloIonicPage the root (or first) page
  rootPage = HomePage;
  pages: Array<{title: string, component: any}>;

  constructor(
    public platform: Platform,
    public menu: MenuController,
    public statusBar: StatusBar,
    public splashScreen: SplashScreen,
    public myHttp:myHttpService,
    public myToast:ToastController
  ) {
    this.initializeApp();

    // set our app's pages
    this.pages = [
      { title: '首页', component:HomePage },
      { title: '用户中心', component:userPage },
      { title: '收藏页面', component:CollectPage },
      { title: '购物车', component: CartPage }
    ];
  }

  initializeApp() {
    this.platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      this.statusBar.styleDefault();
      this.splashScreen.hide();
    });
  }

  openPage(page) {
    // close the menu when clicking a link from the menu
    this.menu.close();
    // navigate to the new page if it is not the current page
    this.nav.setRoot(page.component);
  }
  loginOut(){
    this.myHttp.sendRequest("http://localhost/ajia_code/data/user/logout.php")
    .subscribe((result:any)=>{
      if(result.code==200){
        this.myToast.create({
          message:'退出成功！',
          duration:3000,
          position:"bottom"
        }).present();
        this.menu.close();
        this.nav.setRoot(HomePage);
      }else{
        this.myToast.create({
          message:'退出失败！',
          duration:3000,
          position:"bottom"
        }).present();
      }
    });
  }
}
