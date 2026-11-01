let anh = document.getElementById("anhBanner");
let video = document.getElementById("videoTrailer");
var danhSachPhim = [
    {
        id: 1,
        ten: "Labrador",
        anh: "/anh/labrador.jpg",
        link: "https://www.youtube.com/embed/rYWLIJB214Q?si=RTcOn67uqiZRyqkY"
    },
    {
        id: 2,
        ten: "Jura",
        anh: "/anh/jura.jpg",
        link: "https://www.youtube.com/embed/aGIf5h1pCco?si=2CIfZgS-1Yv27CWm"
    },
    {
        id: 3,
        ten: "Shrek",
        anh: "/anh/shreak.jpg",
        link: "https://www.youtube.com/embed/WfVtZgc3Y8k?si=8n_77X-uN7nYEfks"
    },
    {
        id: 4,
        ten: "Xitrum2",
        anh: "/anh/Xitrum2.jpg",
        link: "https://www.youtube.com/embed/2MsxTstZ_Wo?si=sxJ_j_vkW8tFejJj"
    },
    {
        id: 5,
        ten: "gaubeo",
        anh: "/anh/gaubeo.jpg",
        link: "https://www.youtube.com/embed/hscSBeHYiK4?si=bKURfIHPMLYgOy5d"
    },
    {
        id: 6,
        ten: "labradormain",
        anh: "/anh/labradormain.jpg",
        link: "https://www.youtube.com/embed/WmHIk7QNjac?si=jGOEp53K5Zi9p8lh"
    },
    {
        id: 7,
        ten: "xitrum",
        anh: "/anh/xitrum.jpg",
        link: "https://www.youtube.com/embed/s_GrhB1YQVQ?si=8v7rp7ZV09LM4abC"
    }
];

function xemTrailer(id) {
    let phim = danhSachPhim.find(p => p.id === id);

    if (id) {
        anh.style.display = "none";
        video.src = phim.link;
        video.style.display = "block";
    }
}