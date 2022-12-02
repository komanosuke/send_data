
//毎秒１回、parcomtestの方にデータを送信

function postData(){
    let data_to_send = [];
    for (var i = 0; i < 5; i++){
        var shuffledNumber = Math.floor(Math.random() * 30);
        data_to_send.push(shuffledNumber);
    }
    data_to_send = String(data_to_send);
    let sent_data = document.getElementById('data');
    sent_data.textContent = data_to_send;
    console.log(data_to_send);

	$.ajax({
		url: 'https://parcomtest.herokuapp.com/connect/index',
		type: 'GET',
		dataType: 'text',
		async: true,
		data: {
			json_data: data_to_send
		},
	});
}
setInterval(postData, 1000);
