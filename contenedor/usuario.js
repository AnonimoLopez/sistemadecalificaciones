function adduser(){
    
    var formData = {
            'user'              : $('input[name=username]').val(),
            'pass'             : $('input[name=password]').val()
        };



        $.ajax({
            type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
            url         :  url,
             url         : 'login.php', // the url where we want to POST
           data        : formData,
            dataType    : 'html', // what type of data do we expect back from the server
            encode          : true
        })
            // using the done promise callback
            .done(function(data) {
                alert(data);
                // $('#contenedor').html(data);
                // here we will handle errors and validation messages
            });

        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
        
        
}