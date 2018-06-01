$(document).ready(function() {

    // process the form
    
    $('form').submit(function(event) {
    
        // get the form data
        // there are many ways to get this data using jQuery (you can use the class or id also)
        var formData = {
            'user'              : $('input[name=user]').val(),
            'pass'             : $('input[name=pass]').val()
        };

 

        // process the form
        $.ajax({
            type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
            url         : 'login.php', // the url where we want to POST
            data        : formData, // our data object
            dataType    : 'html', // what type of data do we expect back from the server
                        encode          : true
        })
            // using the done promise callback
            .done(function(data) {

                // log data to the console so we can see
                 $('#menu').html(data);
                // here we will handle errors and validation messages
            });

        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
    });

});