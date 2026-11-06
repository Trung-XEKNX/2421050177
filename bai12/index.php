<?php 
    // Nội dung php đặt ở vị trí này
    echo"Hello world  ";
    //Biến: $tên biến = "giá  trị";
    $hoten = "Khoa gay" ;
    $tuoi = "20";
    // để nối chuỗi trong php dùng dấu .
    echo $hoten . " " . $tuoi . "<br>";

    //strlen() độ dài chuỗi
    echo strlen($hoten). "<br>";

    //đếm số từ
    echo str_word_count($hoten). "<br>";

    //tìm kiếm kí tự trong chuỗi
    echo strpos($hoten, "o"). "<br>";

    // thay thế kí tự trong chuỗi
    echo str_replace("Khoa","Hiếu", $hoten) . "<br>";

    $soThu1 = 10;
    $soThu2 = 5;
    //phep cộng
    echo $soThu1 + $soThu2 . "<br>";
    //phep trừ
    echo $soThu1 - $soThu2 . "<br>";
    //phep nhân
    echo $soThu1 * $soThu2 . "<br>";
    //phep chia
    echo $soThu1 / $soThu2 . "<br>";

    //toán tử gán
    $soThu1 += $soThu2;
    echo $soThu1 . "<br>";

    $soThu1 -= $soThu2;
    echo $soThu1 . "<br>";

    $soThu1 %= $soThu2;
    echo $soThu1 . "<br>";

    //toán tử so sánh ==, !=, < > <= >= ===
    echo $soThu1 < $soThu2 ;
    echo "<br>";

    // câu điều kiện
    // if ("điều kiện"){
    //     logic 
    // }
    // elseif ("điều kiện"){
    //     logic 
    // } 
    // else {
    //     logic 
    // }

    // kiểm tra tổng của số thứ 1 và số thứ 2
    // nếu < 15 thì in ra nhỏ hơn 15
    // nếu = 15 thì in ra tổng = 15
    // còn lại in ra lớn hơn 15

    if ($soThu1 + $soThu2 < 15 ){
        echo "nhỏ hơn 15" . "<br>";
    }
    elseif ( $soThu1 + $soThu2 = 15){
        echo "bằng 15" . "<br>";
    }
    else {
        echo "lớn hơn 15" . "<br>";
    } 

    //switch case
    $color = "red";
    switch($color){
        case "red";
            echo "<br>";
            echo "IS RED";
            break;
        case "blue";
            echo "<br>";
            echo "IS BLUE";
            break;
        default:
            echo "<br>";
            echo "NO COLOR";
            break;
    }

    // for
    for ($i = 0; $i < 10; $i++){
        echo $i . "<br>";
    }

    //mảng
    echo "<br>";
    $mang = ["Khoa", "Hieu", "Trung"];
    //đếm phần tử
    echo count ($mang) . "<br>";
    echo $mang[1]. "<br>";

    $mang[] = "Trung đẹp trai";
    print_r($mang); 

    //xóa
    echo "<br>";
    unset($mang[3]);
    print_r ($mang);

?>