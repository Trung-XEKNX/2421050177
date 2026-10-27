let anh = document.getElementById("anhBanner");
let video = document.getElementById("videoTrailer");
let danhSachPhim = [
    {
        ten: "Labrador",
        anh: "/anh/labrador.jpg",
        trailer: "https://www.youtube.com/embed/rYWLIJB214Q?si=RTcOn67uqiZRyqkY"
    },
    {
        ten: "Jura",
        anh: "/anh/jura.jpg",
        trailer: "https://www.youtube.com/embed/aGIf5h1pCco?si=2CIfZgS-1Yv27CWm"
    },
    {
        ten: "Shrek",
        anh: "/anh/shreak.jpg",
        trailer: "https://www.youtube.com/embed/WfVtZgc3Y8k?si=8n_77X-uN7nYEfks"
    },
    {
        ten: "Xitrum2",
        anh: "/anh/Xitrum2.jpg",
        trailer: "https://www.youtube.com/embed/2MsxTstZ_Wo?si=sxJ_j_vkW8tFejJj"
    },
    {
        ten: "gaubeo",
        anh: "/anh/gaubeo.jpg",
        trailer: "https://www.youtube.com/embed/hscSBeHYiK4?si=bKURfIHPMLYgOy5d"
    },
    {
        ten: "labradormain",
        anh: "/anh/labradormain.jpg",
        trailer: "https://www.youtube.com/embed/WmHIk7QNjac?si=jGOEp53K5Zi9p8lh"
    },
    {
        ten: "xitrum",
        anh: "/anh/xitrum.jpg",
        trailer: "https://www.youtube.com/embed/s_GrhB1YQVQ?si=8v7rp7ZV09LM4abC"
    }
];

function xemTrailer(tenPhim) {
    let phim = danhSachPhim.find(p => p.ten === tenPhim);

    if (phim) {
        anh.style.display = "none";
        video.src = phim.trailer;
        video.style.display = "block";
    }
}