import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { DetailPage } from '../detail/detail';

/**
 * Generated class for the ListPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-list',
  templateUrl: 'list.html',
})
export class ListPage {

  productList:Array<any>=[];
  constructor(public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
  }
  pageNo:number=1;
  pageCount:number;
  kw:string="";
  ionViewDidLoad() {
    this.kw=this.navParams.get("kw");
    this.product();
    
  }

  product(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/product/list.php?kw='+this.kw+'&pno='+this.pageNo)
    .subscribe((result:any)=>{
        this.productList=result.data;
        this.pageNo=result.pno;
        this.pageCount=result.pageCount;
    });
  }

  loadMore(infinite){  
        this.pageNo++;
        if(this.pageNo > this.pageCount) return;
        this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/product/list.php?kw='+this.kw+'&pno='+this.pageNo)
        .subscribe((result:any)=>{
          this.productList=this.productList.concat(result.data);
        });
    infinite.complete();
  }

  toDetail(ind){
    this.navCtrl.push(DetailPage,{lid:this.productList[ind].lid});

  }

}
