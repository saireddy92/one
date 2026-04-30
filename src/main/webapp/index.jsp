<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>PRIME Drive | Premium Car Booking India</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <!-- Icons & Swiper -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background: #0A0C10;
            color: #FFFFFF;
            scroll-behavior: smooth;
        }

        /* premium gradient background */
        .bg-radial {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 30%, #141824, #07090E);
            z-index: -2;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 40px;
        }

        /* glassmorphic header */
        header {
            backdrop-filter: blur(18px);
            background: rgba(10, 12, 18, 0.65);
            border-bottom: 1px solid rgba(255, 215, 150, 0.15);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 18px 0;
            flex-wrap: wrap;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 800;
            letter-spacing: -0.5px;
            background: linear-gradient(125deg, #F5E6CC, #E2B87A);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .logo span {
            color: #E2B87A;
            background: none;
        }
        .nav-links {
            display: flex;
            gap: 32px;
        }
        .nav-links a {
            color: #D4D8E6;
            font-weight: 500;
            transition: 0.2s;
        }
        .nav-links a:hover { color: #E2B87A; }
        .booking-btn {
            background: rgba(226, 184, 122, 0.12);
            border: 1px solid rgba(226, 184, 122, 0.5);
            padding: 10px 24px;
            border-radius: 40px;
            font-weight: 600;
            color: #E2B87A;
            transition: 0.2s;
        }

        /* Hero Premium */
        .hero-premium {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            margin: 60px 0 40px;
            gap: 40px;
        }
        .hero-text h1 {
            font-size: 3.8rem;
            font-weight: 800;
            line-height: 1.2;
        }
        .gold-text {
            background: linear-gradient(135deg, #F9D976, #E2B87A);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .hero-badge {
            display: inline-flex;
            background: rgba(226, 184, 122, 0.15);
            border-radius: 60px;
            padding: 6px 18px;
            margin-bottom: 24px;
            font-size: 0.8rem;
            border: 0.5px solid rgba(226,184,122,0.4);
        }
        .cta-button {
            background: linear-gradient(95deg, #E2B87A, #C99E5F);
            border: none;
            padding: 14px 36px;
            border-radius: 48px;
            font-weight: 700;
            color: #0A0C10;
            font-size: 1rem;
            cursor: pointer;
            margin-top: 28px;
            box-shadow: 0 12px 28px rgba(226,184,122,0.25);
        }

        /* Car cards grid */
        .section-title {
            font-size: 2.2rem;
            font-weight: 700;
            margin: 50px 0 20px;
            letter-spacing: -0.3px;
        }
        .car-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(340px, 1fr));
            gap: 28px;
            margin: 30px 0 60px;
        }
        .car-card {
            background: rgba(18, 22, 32, 0.7);
            backdrop-filter: blur(12px);
            border-radius: 32px;
            overflow: hidden;
            border: 1px solid rgba(226, 184, 122, 0.2);
            transition: all 0.3s ease;
        }
        .car-card:hover {
            transform: translateY(-6px);
            border-color: #E2B87A;
            box-shadow: 0 25px 35px -12px rgba(0,0,0,0.5);
        }
        .car-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
        }
        .car-info {
            padding: 24px;
        }
        .car-title {
            font-size: 1.6rem;
            font-weight: 700;
            display: flex;
            justify-content: space-between;
        }
        .price-inr {
            font-weight: 800;
            color: #E2B87A;
            font-size: 1.4rem;
        }
        .features {
            display: flex;
            gap: 15px;
            margin: 14px 0;
            color: #B0B7CF;
            font-size: 0.85rem;
        }
        .btn-book {
            width: 100%;
            background: rgba(226, 184, 122, 0.1);
            border: 1px solid rgba(226, 184, 122, 0.5);
            padding: 12px;
            border-radius: 40px;
            font-weight: 700;
            color: #E2B87A;
            transition: 0.2s;
            cursor: pointer;
            margin-top: 12px;
        }
        .btn-book:hover {
            background: #E2B87A;
            color: #0A0C10;
        }

        /* why choose us */
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px,1fr));
            gap: 30px;
            margin: 50px 0;
        }
        .feature-card {
            background: rgba(20, 25, 36, 0.6);
            backdrop-filter: blur(8px);
            border-radius: 28px;
            padding: 28px;
            text-align: center;
            border: 1px solid rgba(255,215,150,0.1);
        }

        /* testimonial swiper */
        .testi-slide {
            background: rgba(22, 26, 38, 0.8);
            backdrop-filter: blur(8px);
            border-radius: 28px;
            padding: 28px;
            border: 1px solid #2F3545;
        }

        /* booking modal (clean) */
        .modal {
            display: none;
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0,0,0,0.8);
            backdrop-filter: blur(8px);
            z-index: 1000;
            align-items: center;
            justify-content: center;
        }
        .modal-content {
            background: #10131E;
            max-width: 460px;
            width: 90%;
            border-radius: 40px;
            padding: 32px;
            border: 1px solid #E2B87A;
            color: white;
        }
        .close-modal {
            float: right;
            font-size: 28px;
            cursor: pointer;
        }
        .form-group {
            margin: 20px 0;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 14px;
            border-radius: 60px;
            background: #1E2332;
            border: 1px solid #3A4055;
            color: white;
            outline: none;
        }
        .toast-premium {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: #1E2A3A;
            backdrop-filter: blur(12px);
            padding: 14px 28px;
            border-radius: 60px;
            border-left: 4px solid #E2B87A;
            z-index: 1100;
            transform: translateY(60px);
            transition: 0.3s;
            opacity: 0;
            font-weight: 500;
        }
        .toast-premium.show {
            transform: translateY(0);
            opacity: 1;
        }
        footer {
            border-top: 1px solid rgba(226,184,122,0.2);
            padding: 48px 0 28px;
            margin-top: 40px;
        }
        @media (max-width: 900px) {
            .container { padding: 0 24px; }
            .hero-text h1 { font-size: 2.4rem; }
            .nav-links { display: none; }
        }
    </style>
</head>
<body>
<div class="bg-radial"></div>

<header>
    <div class="container header-flex">
        <div class="logo">PRIME<span>DRIVE</span></div>
        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#fleet">Our Fleet</a>
            <a href="#why">Luxury Promise</a>
            <a href="#testimonials">Experiences</a>
        </div>
        <div><button class="booking-btn" id="quickSupport"><i class="fas fa-headset"></i> 24/7 Concierge</button></div>
    </div>
</header>

<main>
    <div class="container">
        <!-- HERO -->
        <div class="hero-premium">
            <div class="hero-text">
                <div class="hero-badge"><i class="fas fa-gem"></i> India’s Most Premium Chauffeured Fleet</div>
                <h1>Drive the extraordinary.<br><span class="gold-text">Luxury at your command</span></h1>
                <p style="margin: 22px 0; color: #B7C0D8; max-width: 550px;">Choose from a fleet of handpicked luxury cars – Mercedes, BMW, Audi, Range Rover. Zero hidden charges, expert chauffeurs, and 5-star hospitality.</p>
                <button class="cta-button" id="exploreFleet"><i class="fas fa-car-side"></i> Explore Vehicles</button>
            </div>
            <div style="background: radial-gradient(circle, #302b1e22, transparent); border-radius: 50px;">
                <img src="https://images.unsplash.com/photo-1603584173870-7f23fdae1b7a?auto=format&fit=crop&w=500&h=450&q=80" style="width: 380px; border-radius: 38px; filter: drop-shadow(0 20px 30px rgba(0,0,0,0.6));" alt="luxury car">
            </div>
        </div>

        <!-- FLEET SECTION with INR pricing -->
        <div id="fleet">
            <div class="section-title">✨ Choose your <span class="gold-text">premium ride</span>  ·  INR / day</div>
            <div class="car-grid" id="carsContainer"></div>
        </div>

        <!-- Why Choose us -->
        <div id="why">
            <div class="section-title">Why <span class="gold-text">PRIME DRIVE</span>?</div>
            <div class="features-grid">
                <div class="feature-card"><i class="fas fa-crown" style="font-size: 2rem; color:#E2B87A;"></i><h3 style="margin:12px 0">Elite Fleet</h3><p>Curated luxury vehicles meticulously maintained.</p></div>
                <div class="feature-card"><i class="fas fa-user-shield" style="font-size: 2rem; color:#E2B87A;"></i><h3 style="margin:12px 0">Trained Chauffeurs</h3><p>Professional, courteous, uniformed drivers.</p></div>
                <div class="feature-card"><i class="fas fa-rupee-sign" style="font-size: 2rem; color:#E2B87A;"></i><h3 style="margin:12px 0">No Surge Pricing</h3><p>Fixed transparent rates + 24/7 support.</p></div>
                <div class="feature-card"><i class="fas fa-map-marked-alt" style="font-size: 2rem; color:#E2B87A;"></i><h3 style="margin:12px 0">Pan India Coverage</h3><p>Delhi, Mumbai, Bangalore, Goa & more.</p></div>
            </div>
        </div>

        <!-- Testimonials Swiper -->
        <div id="testimonials">
            <div class="section-title">What our <span class="gold-text">guests say</span></div>
            <div class="swiper mySwiper" style="margin: 30px 0 60px;">
                <div class="swiper-wrapper" id="testimonialSlider"></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 24px;">
        <div><div class="logo" style="font-size: 1.8rem;">PRIME<span>DRIVE</span></div><p style="margin-top: 10px;">Luxury Redefined for Indian Roads</p><p style="font-size: 13px;">📍 Delhi | Mumbai | Bengaluru | Hyderabad</p></div>
        <div><h4>Quick Links</h4><p>Corporate Booking<br>Wedding Fleet<br>Airport Transfer</p></div>
        <div><h4>Support</h4><p>+91 9999 888 777<br>care@primedrive.in<br>24/7 Concierge</p></div>
        <div><div style="display: flex; gap: 18px;"><i class="fab fa-instagram fa-lg"></i><i class="fab fa-linkedin-in fa-lg"></i><i class="fab fa-x-twitter"></i></div></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; font-size: 12px;">© 2026 PRIME DRIVE — India’s Premium Car Booking Service</div>
</footer>

<div id="bookingModal" class="modal">
    <div class="modal-content">
        <span class="close-modal" id="closeModalBtn">&times;</span>
        <h3 style="margin-bottom: 15px;">📅 Reserve your <span id="modalCarName">Luxury Car</span></h3>
        <form id="bookingForm">
            <div class="form-group"><input type="text" id="userName" placeholder="Full Name" required></div>
            <div class="form-group"><input type="tel" id="userPhone" placeholder="Mobile Number" required></div>
            <div class="form-group"><input type="email" id="userEmail" placeholder="Email Address"></div>
            <div class="form-group"><input type="date" id="pickupDate" required></div>
            <div class="form-group"><select id="citySelect"><option value="Delhi">Delhi NCR</option><option value="Mumbai">Mumbai</option><option value="Bangalore">Bangalore</option><option value="Goa">Goa</option></select></div>
            <button type="submit" class="btn-book" style="width:100%; background:#E2B87A; color:#0A0C10; border: none;">Confirm Booking (No payment now)</button>
        </form>
        <p style="font-size: 12px; margin-top: 12px;">* our concierge will call to confirm within 2 hours</p>
    </div>
</div>

<div id="toastPremium" class="toast-premium">✨ Booking request sent! We'll contact you shortly.</div>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    // ---------- PREMIUM CAR DATA (INR PRICING) ----------
    const cars = [
        { id: 1, name: "Mercedes-Benz S-Class", pricePerDay: 24999, fuel: "Diesel", seats: 4, transmission: "Automatic", img: "https://images.unsplash.com/photo-1621135802920-133df287f89c?auto=format&fit=crop&w=600&h=400&q=80", badge:"Flagship" },
        { id: 2, name: "BMW 7 Series", pricePerDay: 22999, fuel: "Petrol", seats: 4, transmission: "Auto", img: "https://images.unsplash.com/photo-1555215695-3004980ad54e?auto=format&fit=crop&w=600&h=400&q=80", badge:"Executive" },
        { id: 3, name: "Audi Q7", pricePerDay: 21999, fuel: "Petrol", seats: 6, transmission: "Quattro", img: "https://images.unsplash.com/photo-1606664515524-8b0bf7d743bc?auto=format&fit=crop&w=600&h=400&q=80", badge:"SUV Luxury" },
        { id: 4, name: "Range Rover Velar", pricePerDay: 27999, fuel: "Diesel", seats: 5, transmission: "4x4", img: "https://images.unsplash.com/photo-1536730343531-6b2c2aed5985?auto=format&fit=crop&w=600&h=400&q=80", badge:"Iconic" },
        { id: 5, name: "Porsche Cayenne", pricePerDay: 31999, fuel: "Petrol", seats: 4, transmission: "PDK", img: "https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=600&h=400&q=80", badge:"Sport" },
        { id: 6, name: "Volvo XC90", pricePerDay: 18999, fuel: "Hybrid", seats: 7, transmission: "Auto", img: "https://images.unsplash.com/photo-1559416523-140ddc3d238c?auto=format&fit=crop&w=600&h=400&q=80", badge:"Family" }
    ];

    let currentSelectedCar = null;

    function renderCarCards() {
        const container = document.getElementById('carsContainer');
        container.innerHTML = cars.map(car => `
            <div class="car-card" data-car-id="${car.id}">
                <img class="car-img" src="${car.img}" alt="${car.name}" loading="lazy">
                <div class="car-info">
                    <div class="car-title">
                        ${car.name}
                        <span class="price-inr">₹${car.pricePerDay.toLocaleString('en-IN')}</span>
                    </div>
                    <div class="features">
                        <span><i class="fas fa-gas-pump"></i> ${car.fuel}</span>
                        <span><i class="fas fa-users"></i> ${car.seats} seats</span>
                        <span><i class="fas fa-cogs"></i> ${car.transmission}</span>
                    </div>
                    <div style="margin: 6px 0;"><span style="background:rgba(226,184,122,0.2); padding:4px 12px; border-radius:40px; font-size:12px;">${car.badge}</span></div>
                    <button class="btn-book book-now-btn" data-id="${car.id}"><i class="fas fa-calendar-check"></i> Book Now</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.book-now-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const carId = parseInt(btn.getAttribute('data-id'));
                const car = cars.find(c => c.id === carId);
                if(car) {
                    currentSelectedCar = car;
                    document.getElementById('modalCarName').innerText = car.name;
                    document.getElementById('bookingModal').style.display = 'flex';
                }
            });
        });
    }

    // modal handling
    const modal = document.getElementById('bookingModal');
    const closeModal = document.getElementById('closeModalBtn');
    const bookingForm = document.getElementById('bookingForm');
    const toastPremium = document.getElementById('toastPremium');

    function showToastMsg(message) {
        toastPremium.textContent = message || "✨ Booking request sent! We'll contact you shortly.";
        toastPremium.classList.add('show');
        setTimeout(() => toastPremium.classList.remove('show'), 3500);
    }

    closeModal.onclick = () => modal.style.display = 'none';
    window.onclick = (e) => { if (e.target === modal) modal.style.display = 'none'; };

    bookingForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const name = document.getElementById('userName').value.trim();
        const phone = document.getElementById('userPhone').value.trim();
        const date = document.getElementById('pickupDate').value;
        const city = document.getElementById('citySelect').value;
        if (!name || !phone || !date) {
            showToastMsg("Please fill all required fields (name, phone, date)");
            return;
        }
        if(phone.length < 10) {
            showToastMsg("Enter valid 10-digit mobile number");
            return;
        }
        // store booking info locally (demo)
        const bookingData = {
            car: currentSelectedCar?.name,
            name, phone, date, city
        };
        console.log("Booking confirmed:", bookingData);
        showToastMsg(`✅ Booking confirmed for ${currentSelectedCar?.name}. Our team will call you.`);
        modal.style.display = 'none';
        bookingForm.reset();
    });

    // testimonial data (premium indian clients)
    const testimonials = [
        { name: "Rahul Mehta", role: "CEO, Agora Ventures", text: "The S-Class was pristine, chauffeur extremely professional. Made a client meeting feel world-class.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/15.jpg" },
        { name: "Neha Singhania", role: "Fashion Designer", text: "Booked Range Rover for my wedding guest transfer. Arrived early, clean, and elegant. Highly recommend!", rating: 5, avatar: "https://randomuser.me/api/portraits/women/33.jpg" },
        { name: "Vikram Raj", role: "Startup Founder", text: "Super easy booking, transparent pricing, no hidden charges. Porsche Cayenne was pure adrenaline!", rating: 5, avatar: "https://randomuser.me/api/portraits/men/45.jpg" }
    ];

    function initTestimonialSwiper() {
        const swiperWrapper = document.querySelector('.swiper-wrapper');
        if(!swiperWrapper) return;
        swiperWrapper.innerHTML = testimonials.map(t => `
            <div class="swiper-slide">
                <div class="testi-slide">
                    <div style="display:flex; align-items:center; gap:16px;">
                        <img src="${t.avatar}" style="width:56px;height:56px;border-radius:50%;object-fit:cover; border:2px solid #E2B87A;">
                        <div><strong>${t.name}</strong><br><span style="font-size:12px; color:#BFAA7A;">${t.role}</span></div>
                    </div>
                    <div style="margin: 16px 0;">${'⭐'.repeat(t.rating)}</div>
                    <p>“${t.text}”</p>
                </div>
            </div>
        `).join('');
        new Swiper('.mySwiper', {
            loop: true,
            slidesPerView: 1,
            spaceBetween: 24,
            pagination: { el: ".swiper-pagination", clickable: true },
            breakpoints: { 768: { slidesPerView: 2 }, 1024: { slidesPerView: 3 } }
        });
    }

    // quick support / scroll
    document.getElementById('quickSupport')?.addEventListener('click', () => {
        showToastMsg("📞 Concierge: +91 9999 888 777 | Available 24x7");
    });
    document.getElementById('exploreFleet')?.addEventListener('click', () => {
        document.getElementById('fleet').scrollIntoView({ behavior: 'smooth' });
    });

    renderCarCards();
    initTestimonialSwiper();
</script>
</body>
</html>
