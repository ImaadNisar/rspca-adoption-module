function slideshow() {
    const slideshowimages = document.querySelectorAll(".single-image")

    const nextImageDelay = 5000;
    let currentImageCounter = 0

    slideshowimages[currentImageCounter].style.opacity = 1;
    if (slideshowimages.length > 1) { 
        setInterval(nextImage, nextImageDelay)
    }


    function nextImage() {
        for (i=0; i<slideshowimages.length; i++) {
            slideshowimages[i].style.zIndex = 0;
        }
        slideshowimages[currentImageCounter].style.opacity = 0;
        currentImageCounter = (currentImageCounter + 1) % slideshowimages.length;
        slideshowimages[currentImageCounter].style.opacity = 1;
        slideshowimages[currentImageCounter].style.zIndex = 5;
        
    }
}
