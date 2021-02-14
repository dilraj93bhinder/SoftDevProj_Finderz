function moveToListProperty(user){
alert(user);
	var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {
            var data = xhr.responseText;
            alert(data);
        }
    }
    xhr.open('GET', '../User/listProperty', true);
    xhr.send(null);
    //window.location = "../User/listProperty";
}