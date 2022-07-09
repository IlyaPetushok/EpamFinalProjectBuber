document.addEventListener("DOMContentLoaded", function () {
    const elem = document.querySelector(".main-back");
    document.addEventListener('scroll', () => {
        elem.style.backgroundPositionX = '0' + (0.3 * window.pageYOffset) + 'px';
    })
    let layer = document.querySelector('.reg-image');
    document.addEventListener('mousemove', (event) => {
        layer.style.transform = 'translate3d(' + ((event.clientX * 0.3) / 8) + 'px,' + ((event.clientY * 0.3) / 8) + 'px,0px)';
    });
});

function SmoothHeader(id){
    document.getElementById(id).scrollIntoView({behavior:"smooth"});
}
