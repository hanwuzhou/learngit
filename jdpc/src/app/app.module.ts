import { BrowserModule } from '@angular/platform-browser';
import { NgModule, ErrorHandler } from '@angular/core';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';
import { HttpModule } from '@angular/http';
import { FormsModule } from '@angular/forms';

import { indexPage } from '../pages/index/index';
import { userPage } from '../pages/user/user';
import { myHttpService } from './utility/myhttp.service';
import { HomePage } from '../pages/home/home';
import { CollectPage } from '../pages/collect/collect';
import { DetailPage } from '../pages/detail/detail';
import { LoginPage } from '../pages/login/login';
import { RegistPage } from '../pages/regist/regist';
import { CartPage } from '../pages/cart/cart';
import { ListPage } from '../pages/list/list';
import { OrderConfirmPage } from '../pages/order-confirm/order-confirm';
import { PayPage } from '../pages/pay/pay';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

@NgModule({
  declarations: [
    MyApp,
    indexPage,
    userPage,
    HomePage,
    CollectPage,
    DetailPage,
    LoginPage,
    RegistPage,
    CartPage,
    ListPage,
    OrderConfirmPage,
    PayPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    HttpModule,
    FormsModule,
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    indexPage,
    userPage,
    HomePage,
    CollectPage,
    DetailPage,
    LoginPage,
    RegistPage,
    CartPage,
    ListPage,
    OrderConfirmPage,
    PayPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    myHttpService
  ]
})
export class AppModule {}
