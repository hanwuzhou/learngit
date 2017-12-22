import { Component } from '@angular/core';
import {  IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { DetailPage } from '../detail/detail';
import { ListPage } from '../list/list';

@Component({
  selector: 'index',
  templateUrl: 'index.html'
})
export class indexPage {
  banners:Array<any>=[];
  myDesnation:any;
  input:any;
  sort:Array<any>=[];
  list:Array<any>=[];
  pageNo:number=1;
  pageCount:number;
  constructor(public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
    this.myDesnation=DetailPage;
  }
  ionViewDidLoad() {
    this.initData();
  }
  initData(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/product/index.php')
    .subscribe((result:any)=>{
      if(result){
        this.banners=result.carouselItems;
      }
    });
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/product/sort.php')
    .subscribe((result:any)=>{
      for(let i=0;i<result.length;i++){
        let name=result[i].fname.slice(0,2);
        if(this.sort.indexOf(name)==-1){
          this.sort.push(name);
        }
      }
    });
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/product/list.php')
    .subscribe((result:any)=>{
      if(result){
        this.list=result.data;
        this.pageNo=result.pno;
        this.pageCount=result.pageCount;
      }
    });
  }

  search(){
   this.navCtrl.push(ListPage,{kw:this.input});
  }

  toList(kw){
    this.navCtrl.push(ListPage,{kw:kw});
  }

  loadMore(infinite){  
      this.pageNo++;
      if(this.pageNo > this.pageCount) return;
      this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/product/list.php?pno='+this.pageNo)
      .subscribe((result:any)=>{
        this.list=this.list.concat(result.data);
      });
    infinite.complete();
  }

}
