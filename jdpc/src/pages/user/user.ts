import { Component } from '@angular/core';
import { AlertController,ToastController,NavController, NavParams } from 'ionic-angular';
import { myHttpService } from '../../app/utility/myhttp.service';
import { HomePage } from '../home/home';
import { LoginPage } from '../login/login';
import { indexDebugNode } from '@angular/core/src/debug/debug_node';


@Component({
  selector: 'user',
  templateUrl: 'user.html'
})
export class userPage {
  uname:string='';
  pic:string='';
  user:boolean=false;
  myLogin:any;
  upwd:string='';
  constructor(public myAlert:AlertController,public myToast:ToastController,public myHttp:myHttpService,public navCtrl: NavController, public navParams: NavParams) {
    this.myLogin=LoginPage;
  }

  ionViewDidLoad() {
    this.checkUserLogin(); 
  }
  ionViewWillEnter(){
    this.checkUserLogin();
  }

  checkUserLogin(){
    this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/session_data.php')
    .subscribe((result)=>{
      if(result.uid){
        this.user=false;
        this.loadUserinfo();

      }else{
        this.user=true;
      }
    });
  }
  
  loadUserinfo(){
      this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/getUserinfo.php')
      .subscribe((result)=>{
        this.uname=result.uname;
        this.pic=result.pic;
        this.upwd=result.upwd;
      });
  }
  loginOut(){
    this.myHttp.sendRequest("http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/logout.php")
    .subscribe((result:any)=>{
      if(result.code==200){
        this.myToast.create({
          message:'退出成功！',
          duration:3000,
          position:"bottom"
        }).present();
        this.navCtrl.push(HomePage);
        // this.navCtrl.push(IndexPage);
      }else{
        this.myToast.create({
          message:'退出失败！',
          duration:3000,
          position:"bottom"
        }).present();
      }
    });
  }
  changePwd(){
    let Alert=this.myAlert.create({
      title:'修改密码',
      inputs:[{
        label:'原密码',
        placeholder:'请输入原密码',
        type:'password',
      },
      {
        label:'新密码',
        placeholder:'请输入新密码',
        type:'password',
      }
    ],
      buttons:[
        {
          text:'确认',
          handler:(result)=>{
              this.myHttp.sendRequest('http://172.242.13.13/framwork/13-WebApp/jdpc/src/assets/data/user/update_password.php?old_pwd='+result[0]+'&new_pwd='+result[1])
              .subscribe((data:any)=>{
                let msg="";
                if(data.code==200){
                  msg='更新成功！';
                  setTimeout(()=>{
                    this.loginOut();
                  },3000);
                }else if(data.code==500){
                  msg='网络故障！';
                }else if(data.code==201){
                  msg="请重新检查原密码！";
                }else{
                  msg='请输入密码！';
                }
                this.myToast.create({
                  message:msg,
                  duration:3000,
                  position:"top"
                }).present();
              });
          }
        },
        {
          text:'取消',
          handler:()=>{
            Alert.dismiss();
          }
        }
      ]
    });
    Alert.present();
  }

}
