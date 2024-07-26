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


document.addEventListener('DOMContentLoaded', function() {
    const sections = document.querySelectorAll('section');
    const navLinks = document.querySelectorAll('.navbar-nav .nav-link');

    function highlightNavLink() {
        let index = sections.length;

        while (--index && window.scrollY + 50 < sections[index].offsetTop) {}

        navLinks.forEach((link) => link.classList.remove('active'));
        if (index > 0) {
            navLinks[index - 1].classList.add('active');
        }
    }

    highlightNavLink();
    window.addEventListener('scroll', highlightNavLink);
});