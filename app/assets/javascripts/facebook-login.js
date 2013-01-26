// Load the SDK Asynchronously
(function(d){
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement('script'); js.id = id; js.async = true;
    js.src = "//connect.facebook.net/pt_BR/all.js";
    ref.parentNode.insertBefore(js, ref);
}(document));

//http://pivotallabs.com/working-with-asynchronously-loaded-javascript/
$(document).ready(function(){
    function facebookReady(){
        FB.init({
            appId      : '492391947466622', // App ID
            channelUrl : '//queroplantao.com.br', // Channel File
            status     : true, // check login status
            cookie     : true, // enable cookies to allow the server to access the session
            xfbml      : true  // parse XFBML
            // http://developers.facebook.com/docs/reference/dialogs/requests/
            //, frictionlessRequests : true //FIXME do not require user action
        });
        $(document).trigger("facebook:ready");
    }

    if(window.FB) {
        facebookReady();
    } else {
        window.fbAsyncInit = facebookReady;
    }
});

var FACEBOOK = {
    login: function () {
        FB.login(function(response) {
            if (response.authResponse) {
                var access_token = response.authResponse.accessToken;
                $(document).trigger("facebook:logged");
            }
        }, {scope: 'email, publish_stream, sms'});
    },

    // http://developers.facebook.com/docs/reference/api/group/
    sendRequestToRecipients: function (plantaoUrl) {
        //Grupo, PLANTÕES Whatsapp RJ: 132347300260952
        //Grupo, Quero Plantao: 319924641441589
        FB.api('319924641441589/members', {limit: 0}, function(response) {
            if(response.error != undefined) {
                alert('Algo deu errado');
            } else {
                var total = response.data.length;
                var members = [];
                for(var i=0; i < total; i++) {
                    var member = response.data[i];
                    members[members.length] = member.id;
                }
                FB.ui({method: 'apprequests',
                    message: 'Novo plantão adicionado.',
                    redirect_uri: plantaoUrl,
                    to: members
                }, function (response) {
                });
            }
        });
    }
}
