var danhSachVid = [
    {
        id: 1,
        ten: "Tất cả các loài khủng long trong 41 phút",
        duongDanAnh: "https://i.ytimg.com/vi/A0YpIOu-RHg/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLDEvYzmrTiNvbWAVIg0jrY_weDeZw",
        duongDanYoutube: "https://www.youtube.com/embed/A0YpIOu-RHg?si=4rlx4VkyOmum7WOy"
    },
    {
        id: 2,
        ten: "Giải mã những bức ảnh kinh dị nổi tiếng trên internet",
        duongDanAnh: "https://i.ytimg.com/vi/wUPI9Ei4zws/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLCyqkhsqPBbpzK89O9s1G_V_fOSJA",
        duongDanYoutube: "https://www.youtube.com/embed/wUPI9Ei4zws?si=uB1md1_GTqQOij_o"
    },
    {
        id: 3,
        ten: "17 siêu công trình của thế giới trong 31 phút",
        duongDanAnh: "https://i.ytimg.com/vi/zMz7stgS400/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLAci2wHK5M8xzyuJGUb7uW_rFxzJA",
        duongDanYoutube: "https://www.youtube.com/embed/zMz7stgS400?si=Ec-2w1Pece2zuUEI"
    },
    {
        id: 4,
        ten: "Những fact lmao nhất trong thế giới động vật",
        duongDanAnh: "https://i.ytimg.com/vi/CoffVI-Vo5A/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLCATAC8_zXYfFBy3y4tl_rLoHgt5w",
        duongDanYoutube: "https://www.youtube.com/embed/CoffVI-Vo5A?si=0Jx2UXcp4wgKboK7"
    },
];

function chonVid(id) {
    for (let i = 0; i < danhSachVid.length; i++) {
        if (danhSachVid[i].id == id) {
            document.getElementsByClassName("ten")[0].innerHTML = danhSachVid[i].ten;
            document.getElementsByTagName("iframe")[0].src = danhSachVid[i].duongDanYoutube;
        }
    }
}
