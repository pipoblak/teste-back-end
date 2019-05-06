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
        let guid = Cookies.get("GUID")
        if (!guid)
          Cookies.set("GUID",this.visitorT.generateGUID());
        let info = { visitor_info:{
          guid: guid,
          path: window.location.pathname,
          accessed_at: new Date().toISOString()
        }}
        axios.post('/visitor_infos', info, { headers: { 'X-Requested-With': 'XMLHttpRequest' }} )
        return true;
      }else{
        alert("Need JS-Cookie Library to RUN");
        return false;        
      }
    }.bind(this)
  }
  if(Turbolinks != undefined){
    document.addEventListener("turbolinks:load", function (event) {
      visitorT.track()
    })
  }else{
    document.addEventListener("page:load", function(event){
      visitorT.track()
    })
  }
}).call(this)