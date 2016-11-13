$(document).ready(function(){
    var num=0;
    var j = 1;
    //рисуем шапку таблицы
    var TableTitle = ["Number", "Name", "Price", "Description","Photo"];
                    var mytable = $('<table/>', {
                        class: 'mytable'
                    }).append(
                            $('<thead/>'),
                            $('<tfoot/>'),
                            $('<tbody/>')
                            );
                    var TitleCell = $('<tr/>');
                    $.each(TableTitle, function (myIndex, myData) {
                        TitleCell.append(
                                $('<th/>', {
                                    text: myData
                                })
                                );
                    });
                    $("thead", mytable).append(TitleCell);
$.addTen=function() {
            
    
                            //тело таблицы
            $.ajax({
            url: "showgoods.php",
            type: "post",
            cache: false,
            data: 'num='+num,
            processData: false,
            //contentType: false, хрен содержимое data попадет на сервер, если это раскомментировать
            success: function (data) {
                console.log(data);
                    
                        
                        //$('.gallery').empty();
                
                    
                if(data.items!=0){    
                    $.each(data.items, function (i, photo) {

                        //Переопределяем строку
                        var DataCell = $('<tr/>');
                        //Пробегаемся по ячейкам
                        DataCell.append(
                                $('<td/>', {
                                    text: j
                                })
                                );

                        $("tbody", mytable).append(DataCell);
                        DataCell.append(
                                $('<td/>', {
                                    text: this.name
                                })
                                );
                        $("tbody", mytable).append(DataCell);
                        DataCell.append(
                                $('<td/>', {
                                    text: this.price
                                })
                                );
                        $("tbody", mytable).append(DataCell);
                        DataCell.append(
                                $('<td/>', {
                                    text: this.description
                                })
                                );
                        $("tbody", mytable).append(DataCell);
                        DataCell.append(
                                $('<td/>', {
                                }).append($(
                                '<img src="' + this.src + '">'
                                ))
                                );
                        $("tbody", mytable).append(DataCell);
                        j++;

                    });
                    $('.gallery').append(mytable);
                   
                    
               
                
                num+=10;
//                alert(num);
//                alert(j);
                }else{
                    $('.add').remove();
                    
                }



                   
               



            }

        });
    };
    $.addTen();
    $('.add').click(function(){
        $.addTen();
        });
});