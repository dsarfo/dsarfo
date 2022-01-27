({
     render: function(component,helper){
      var ret = this.superRender();
         console.log('Render');
         return ret;
    },
       rerender: function(component,helper){
      var ret = this.superRender();
         console.log('Re render part');
         return ret;
    },
       afterRender: function(component,helper){
      var ret = this.superRender();
         console.log('Render');
         return ret;
    }
})