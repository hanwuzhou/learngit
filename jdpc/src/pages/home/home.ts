import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { indexPage } from '../index/index';
import { CartPage } from '../cart/cart';
import { CollectPage } from '../collect/collect';

/**
 * Generated class for the HomePage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-home',
  templateUrl: 'home.html',
})
export class HomePage {
  myIndex:any;
  myCart:any;
  myCollect:any;
  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.myIndex=indexPage;
    this.myCart=CartPage;
    this.myCollect=CollectPage;
  }

  ionViewDidLoad() {
  }

}
