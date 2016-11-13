$(document).ready(function () {

    $('#photo').submit(function () {
        var fd = new FormData(document.forms.photo);
        $.ajax({
            url: "addphoto.php",
            type: "post",
            data: fd,
            processData: false,
            contentType: false,
            success: function (data) {
                console.log(data);
                        $('.error').empty();
                        $('.gallery').empty();
                if (data.errors.error == 0) {
                    var TableTitle = ["Number", "Name", "Price", "Photo"];
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
                    var j = 1;
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
                                }).append($(
                                '<img src="' + this.src + '">'
                                ))
                                );
                        $("tbody", mytable).append(DataCell);
                        j++;

                    });
                    $('.gallery').append(mytable);




                    $('#photo').trigger('reset');
                }else{
                    var info;
                    var str="Попытка добавления была неудачной. Ошибка: ";
                    str+=data.errors;
                    info=$('<span/>',{
                        text: str
                    });
                    $('.error').append(info);
                }




            }

        });
        return false;
    });
});
