import { Component } from '@angular/core';
import { ToastController,IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { LoginPage } from '../login/login';

/**
 * Generated class for the RegistPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-regist',
  templateUrl: 'regist.html',
})
export class RegistPage {
  uName:string="";
  uPwd:string="";
  nPwd:string="";
  uEmail:string="";
  uPhone:string="";
  login:any;
  exist:boolean;
  constructor(public toastCrl:ToastController,public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
    this.login=LoginPage;
  }

  ionViewDidLoad() {
  }

  check(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/check_uname.php?uname='+this.uName)
    .subscribe((result:any)=>{
        let msg:any;
        if(result.code==200){
          msg='用户名可用！';
          this.exist=true;
        }else if(result.code==500){
          msg='网络故障，请检查网络！';
          this.navCtrl.pop();
        }else if (result.code==201){
          msg='用户名已存在';
          this.exist=false;
        }
        let myToast=this.toastCrl.create({
          message:msg,
          duration:2000,
          position:'bottom'
        });
        myToast.present();
    });
  }

  doRegist(){
    if(this.exist){
      if(this.uPwd.trim()!=this.nPwd.trim()){
        let myToast=this.toastCrl.create({
          message:"两次输入密码不正确，请重新输入！",
          duration:2000,
          position:'bottom'
        });
        myToast.present();
      }else{
        this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/register.php?uname='+this.uName+'&upwd='+this.uPwd+'&email='+this.uEmail+'&phone='+this.uPhone)
        .subscribe((result:any)=>{
          console.log(result);
          let msg:any;
          if(result.code==200){
            msg='注册成功';
            this.navCtrl.push(this.login);
          }else if(result.code==500){
            msg='网络故障，请检查网络！';
            this.navCtrl.pop();
          }else{
            msg=result.msg;
          }
          let myToast=this.toastCrl.create({
            message:msg,
            duration:2000,
            position:'bottom'
          });
          myToast.present();
      });
    }
  }else{
    let myToast=this.toastCrl.create({
      message:'请重新输入用户名！',
      duration:2000,
      position:'bottom'
    });
    myToast.present();
  }
}

}
