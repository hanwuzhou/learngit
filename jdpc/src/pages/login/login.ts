import { Component } from '@angular/core';
import { ToastController,IonicPage, NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { RegistPage } from '../regist/regist';
import { HomePage } from '../home/home';

/**
 * Generated class for the LoginPage page.
 *
 * See http://ionicframework.com/docs/components/#navigation for more info
 * on Ionic pages and navigation.
 */
@IonicPage()
@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {

  uName:string="";
  uPwd:string="";
  register:any;
  constructor(public toastCrl:ToastController,public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
    this.register=RegistPage;
  }

  ionViewDidLoad() {
  }

  doLogin(){
      
      this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/login.php?uname='+this.uName+'&upwd='+this.uPwd)
      .subscribe((result:any)=>{
        let msg:any;
        if(result.code==201){
          msg='用户名或密码错误！';
        }else if(result.code==200){
          msg='登录成功！';
          this.navCtrl.push(HomePage);
        }else if(result.code==500){
          msg='登录失败，请检查用户名或密码！';
        }else{
          msg='请输入用户名或密码！'
        }

        let myToast=this.toastCrl.create({
            message:msg,
            duration:2000,
            position:'bottom'
          });
          myToast.present();
      });
      
  }

}
