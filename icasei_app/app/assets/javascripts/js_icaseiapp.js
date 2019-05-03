// Library for visitor tracking ( iCaseiTest )
// Author: Felipe Ramos
// Version: 0.0.1
// License: Apache 2.0
(function(){
  this.visitorT = {
    generateGUID: function () { // code From https://codepen.io/Jvsierra/pen/BNbEjW
      function s4() {
        return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
      }
      return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();     
    },
    track: function(){
      if(Cookies!=undefined){
        if (!Cookies.get("GUID"))
          Cookies.set("GUID",this.visitorT.generateGUID());
        
        return true;
      }else{
        alert("Need JS-Cookie Library to RUN");
        return false;        
      }
    }.bind(this)
  }
}).call(this)