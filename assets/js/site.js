document.addEventListener('DOMContentLoaded', function() {
    const navbarToggler = document.querySelector('.navbar-toggler');
    const navbarLinks = document.querySelectorAll('.navbar-nav .nav-link');

    navbarLinks.forEach(function(link) {
        link.addEventListener('click', function() {
            // Check if the navbar is expanded
            const isExpanded = navbarToggler.getAttribute('aria-expanded') === 'true';
            if (isExpanded) {
                // Simulate a click on the navbar toggler to collapse the navbar
                navbarToggler.click();
            }
        });
    });
});