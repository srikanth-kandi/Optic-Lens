let searchForm = document.querySelector('.header .search-form');

document.querySelector('#search-btn').onclick = () => {
    searchForm.classList.toggle('active');
    navbar.classList.remove('active');
}

let navbar = document.querySelector('.header .navbar');

document.querySelector('#menu-btn').onclick = () => {
    navbar.classList.toggle('active');
    searchForm.classList.remove('active');
}

window.onscroll = () => {
    searchForm.classList.remove('active');
    navbar.classList.remove('active');
}



// manual slides
let slides = document.querySelectorAll('.home .slide');
let index = 0;
function next() {
    slides[index].classList.remove('active');
    index = (index + 1) % slides.length;
    slides[index].classList.add('active');
}

function prev() {
    slides[index].classList.remove('active');
    index = (index - 1 + slides.length) % slides.length;
    slides[index].classList.add('active');
}

// Swiper slide https://codesandbox.io/s/ozbh1?file=/index.html
var swiper = new Swiper(".mySwiper", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
        delay: 7500,
        disableOnInteraction: false,
    },
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    loop: true,
});


// currency toggler

let toggler = document.querySelector('.toggler');
let price = document.querySelectorAll('.dprice');
let dollar = document.querySelectorAll('.dollar');
let usd = 74.96; // as of 31-01-2022: 1$ = ₹74.96

toggler.onclick = () => {
    toggler.classList.toggle('active');
    if (toggler.classList.contains('active')) {
        for (var i = 0; i < dollar.length; i++) {
            dollar[i].innerText = '₹';
        }
        for (var k = 0; k < price.length; k++) {
            price[k].innerText = (price[k].innerText * usd).toFixed(2);
        }
    }
    else {
        for (var i = 0; i < dollar.length; i++) {
            dollar[i].innerText = '$';
        }
        for (var k = 0; k < price.length; k++) {
            price[k].innerText = (price[k].innerText / usd).toFixed(2);
        }
    }
}

// Login validation
function readValues() {
    // read name from the form and store in the variable
    // variablename = formname.componentname.value; or
    // variablename = document.formname.componentname.value;
    username = login_form.name.value;
    // read password from the form and store in the variable.
    password = document.login_form.pwd.value;
    // check the name field is empty or not
    if (username == "" || username == null) {
        alert("Please enter username")
    }
    else if (password == "" || password == null) {
        alert("Please enter password")
    }
    else if (password.length < 8) {
        alert("Please enter 8 digit passowrd ")
    }
    else {
        // successfull login
        window.open('index.html', '_blank');
    }
}