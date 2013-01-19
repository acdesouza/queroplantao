window.fbAsyncInit = function() {
    FB.init({
        appId      : '492391947466622', // App ID
        channelUrl : '//queroplantao.com.br', // Channel File
        status     : true, // check login status
        cookie     : true, // enable cookies to allow the server to access the session
        xfbml      : true,  // parse XFBML
        frictionlessRequests : true
    });
    // Additional initialization code here
};

// Load the SDK Asynchronously
(function(d){
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement('script'); js.id = id; js.async = true;
    js.src = "//connect.facebook.net/pt_BR/all.js";
    ref.parentNode.insertBefore(js, ref);
}(document));


function fb_login(){
    var access_token;
    FB.login(function(response) {
        if (response.authResponse) {
            access_token = response.authResponse.accessToken;
            FB.api('/me', function(response) {
                if(response.name != 'undefined'){
                    id_profile = response.id;
                    nome = response.name;
                    email = response.email;
                    avatar = "http://graph.facebook.com/"+id_profile+"/picture?type=square";
                    // autenticaFB(id_profile, nome, avatar, email, access_token, origem);
                }
            });
        }
    },{scope: 'email,publish_stream, sms'});
}

var members = [];
function getGroupMembersIds() {
    if (members.length > 0) {
        return members;
    }

    //Grupo, PLANTÕES Whatsapp RJ: 132347300260952
    //Grupo, Quero Plantao: 319924641441589
    var members = [];
    FB.api('319924641441589/members', {limit: 0}, function (response) {
        var total = response.data.length;
        for(var i=0; i < total; i++) {
            var member = response.data[i];
            members[members.length] = member.id;
        }
    });

    return members;
}

// http://developers.facebook.com/docs/reference/api/group/
function sendRequestToRecipients(plantaoUrl) {
    FB.ui({method: 'apprequests',
        message: 'Novo plantão adicionado.',
        redirect_uri: plantaoUrl,
        to: getGroupMembersIds()
    }, requestCallback);
}

