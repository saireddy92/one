<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Nebula | Futuristic E‑Commerce</title>
    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Swiper for touch-friendly slider -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Space Grotesk', sans-serif;
            background: #0B0E17;
            color: #EDF2FF;
            transition: background 0.3s ease, color 0.2s ease;
            scroll-behavior: smooth;
        }

        /* Light mode */
        body.light {
            background: #F8FAFF;
            color: #0A0C15;
        }

        body.light .glass-card,
        body.light .product-card,
        body.light .cat-card,
        body.light .testimonial-card {
            background: rgba(255, 255, 255, 0.96);
            box-shadow: 0 20px 35px -12px rgba(0, 0, 0, 0.05);
            border: 1px solid rgba(0, 0, 0, 0.04);
        }

        body.light .nav-links a,
        body.light .footer-col p {
            color: #2D3A5E;
        }

        body.light header {
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        }

        body.light .btn-outline-light {
            border-color: #1E2A44;
            color: #1E2A44;
        }

        body.light .price {
            color: #0F2B3D;
        }

        .container {
            max-width: 1300px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Header Glassmorphism */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(11, 14, 23, 0.78);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.08);
            transition: all 0.2s;
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
            gap: 20px;
            flex-wrap: wrap;
        }

        .logo {
            font-size: 1.9rem;
            font-weight: 700;
            letter-spacing: -0.03em;
            background: linear-gradient(135deg, #FFFFFF, #A5F0FF);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .logo span {
            color: #2AD4FF;
            background: none;
            -webkit-background-clip: unset;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }

        .nav-links a {
            font-weight: 500;
            transition: 0.2s;
            color: #D9E2F5;
        }

        .nav-links a:hover {
            color: #2AD4FF;
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.08);
            border-radius: 48px;
            padding: 6px 16px;
            gap: 8px;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .search-wrapper input {
            background: transparent;
            border: none;
            padding: 10px 0;
            font-size: 0.9rem;
            width: 200px;
            color: white;
            outline: none;
        }

        body.light .search-wrapper {
            background: #EFF3FC;
            border-color: #CBD5E1;
        }

        body.light .search-wrapper input {
            color: #0A0C15;
        }

        .action-icons {
            display: flex;
            gap: 18px;
            align-items: center;
        }

        .icon-circle {
            font-size: 1.3rem;
            cursor: pointer;
            transition: 0.2s;
            background: rgba(255, 255, 255, 0.05);
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
        }

        .cart-badge {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -8px;
            background: #2AD4FF;
            border-radius: 30px;
            font-size: 0.7rem;
            font-weight: bold;
            padding: 2px 7px;
            color: #0B0E17;
        }

        /* Hero 3D */
        .hero-3d {
            margin-top: 20px;
            border-radius: 48px;
            background: radial-gradient(circle at 70% 20%, #152032, #070A12);
            padding: 60px 40px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .hero-text h1 {
            font-size: 3.2rem;
            line-height: 1.2;
            font-weight: 700;
        }

        .gradient-text {
            background: linear-gradient(125deg, #FFFFFF, #2AD4FF, #A155FF);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .btn-glow {
            background: linear-gradient(95deg, #2AD4FF, #0077FF);
            border: none;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 600;
            color: #0A0C15;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 8px 20px rgba(42, 212, 255, 0.3);
        }

        /* Cards */
        .grid-auto {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
            gap: 24px;
            margin: 48px 0;
        }

        .cat-card {
            background: #141B2B;
            border-radius: 32px;
            padding: 24px 12px;
            text-align: center;
            transition: 0.2s;
            cursor: pointer;
            backdrop-filter: blur(2px);
        }

        .cat-card i {
            font-size: 2.5rem;
            color: #2AD4FF;
            margin-bottom: 12px;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
            margin: 40px 0;
        }

        .product-card {
            background: #101624;
            border-radius: 32px;
            overflow: hidden;
            transition: all 0.25s ease;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(42, 212, 255, 0.1);
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: #2AD4FF;
            box-shadow: 0 30px 40px -15px rgba(0, 0, 0, 0.5);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: 0.3s;
        }

        .product-info {
            padding: 18px;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 12px 0;
        }

        .price {
            font-weight: 700;
            font-size: 1.5rem;
            color: #2AD4FF;
        }

        .add-cart {
            background: rgba(42, 212, 255, 0.12);
            border: 1px solid #2AD4FF;
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .flash-sale {
            background: linear-gradient(115deg, #201A30, #0B0E22);
            border-radius: 40px;
            padding: 40px;
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
            margin: 60px 0;
        }

        .timer-grid {
            display: flex;
            gap: 18px;
        }

        .time-block {
            background: #00000044;
            backdrop-filter: blur(8px);
            padding: 16px 20px;
            border-radius: 28px;
            text-align: center;
            min-width: 80px;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        /* testimonials swiper */
        .swiper {
            padding: 20px 0 40px;
        }

        .testimonial-card {
            background: #111827;
            border-radius: 32px;
            padding: 28px;
        }

        .newsletter-modern {
            background: linear-gradient(135deg, #1B243F, #0C1122);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
        }

        .footer {
            padding: 48px 0 28px;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
            margin-top: 40px;
        }

        @media (max-width: 800px) {
            .nav-links {
                display: none;
            }
            .hero-text h1 {
                font-size: 2rem;
            }
            .product-grid {
                grid-template-columns: 1fr 1fr;
            }
        }
        @media (max-width: 500px) {
            .product-grid {
                grid-template-columns: 1fr;
            }
        }
        button, .add-cart, .cat-card {
            cursor: pointer;
        }
        .toast-msg {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: #2AD4FF;
            color: #0B0E17;
            padding: 12px 24px;
            border-radius: 60px;
            font-weight: 600;
            z-index: 200;
            transform: translateY(100px);
            transition: 0.3s;
            opacity: 0;
        }
        .toast-msg.show {
            transform: translateY(0);
            opacity: 1;
        }
        .theme-toggle {
            background: none;
            border: none;
            font-size: 1.3rem;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-flex">
        <div class="logo">NEBULA<span>STORE</span></div>
        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#products">Shop</a>
            <a href="#deals">Flash Sale</a>
            <a href="#reviews">Reviews</a>
        </div>
        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search-wrapper">
                <i class="fas fa-search"></i>
                <input type="text" id="searchInputGlobal" placeholder="Search products...">
            </div>
            <div class="action-icons">
                <div class="icon-circle theme-toggle" id="themeToggle">
                    <i class="fas fa-moon"></i>
                </div>
                <div class="icon-circle cart-badge" id="cartIcon">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count" id="cartTotalCount">0</span>
                </div>
            </div>
        </div>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero Section with Diagonal 3D feel -->
        <div class="hero-3d">
            <div class="hero-text">
                <h1>Beyond the <span class="gradient-text">ordinary</span><br>next‑gen style</h1>
                <p style="margin: 20px 0; opacity: 0.8;">Discover futuristic designs & premium quality. Free shipping worldwide.</p>
                <button class="btn-glow" id="exploreBtn">Explore collection <i class="fas fa-arrow-right"></i></button>
            </div>
            <div style="flex-shrink: 0;">
                <img src="https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?auto=format&fit=crop&w=400&q=80" style="width: 240px; border-radius: 38px; rotate: 4deg; box-shadow: 0 20px 35px rgba(0,0,0,0.4);" alt="hero">
            </div>
        </div>

        <!-- Categories -->
        <div style="margin: 50px 0 20px;">
            <h2 style="font-size: 2rem;">Shop by <span style="color:#2AD4FF;">Vibe</span></h2>
            <div class="grid-auto" id="categoriesContainer"></div>
        </div>

        <!-- Products Section -->
        <div id="products">
            <h2 style="font-size: 2rem; margin-top: 20px;">✨ Trending Drops</h2>
            <div class="product-grid" id="productsGrid"></div>
        </div>

        <!-- Flash Sale Deal -->
        <div id="deals">
            <div class="flash-sale">
                <div style="flex: 1;">
                    <h2 style="font-size: 2.2rem;">⚡ FLASH SALE</h2>
                    <p style="margin: 10px 0 20px;">Limited time on XR眼镜 + Smart Gear</p>
                    <div class="timer-grid" id="timerBlock">
                        <div class="time-block"><span id="days">00</span><br>Days</div>
                        <div class="time-block"><span id="hours">00</span><br>Hrs</div>
                        <div class="time-block"><span id="minutes">00</span><br>Min</div>
                        <div class="time-block"><span id="seconds">00</span><br>Sec</div>
                    </div>
                    <div style="margin-top: 24px;"><span style="font-size: 2rem; font-weight: 700;">$249</span> <span style="text-decoration: line-through; opacity: 0.6;">$499</span></div>
                    <button class="btn-glow" id="flashDealBtn" style="margin-top: 18px;">Grab Deal <i class="fas fa-bolt"></i></button>
                </div>
                <div><img src="https://images.unsplash.com/photo-1622979135225-d2ba269cf1ac?auto=format&fit=crop&w=300&q=80" style="border-radius: 32px; width: 220px;" alt="deal"></div>
            </div>
        </div>

        <!-- Testimonials Carousel -->
        <div id="reviews" style="margin: 50px 0;">
            <h2 style="text-align: center;">❤️ Loved by Creators</h2>
            <div class="swiper mySwiper">
                <div class="swiper-wrapper" id="testimonialsSwiper"></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>

        <!-- Newsletter -->
        <div class="newsletter-modern">
            <h3>Join the Nebula Club</h3>
            <p style="margin: 12px 0;">Get early access & 15% off your first order</p>
            <div style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; margin-top: 16px;">
                <input type="email" id="newsEmail" placeholder="you@example.com" style="padding: 14px 24px; border-radius: 60px; border: none; width: 280px; background: #ffffff20; color: white;">
                <button id="subNewsBtn" style="background: #2AD4FF; border: none; padding: 14px 28px; border-radius: 60px; font-weight: bold;">Subscribe →</button>
            </div>
            <div id="newsMsg" style="margin-top: 12px;"></div>
        </div>
    </div>
</main>

<footer class="footer">
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 30px;">
        <div><div class="logo" style="font-size: 1.8rem;">NEBULA</div><p style="margin-top: 12px;">Elevate your everyday<br>© 2026</p></div>
        <div><h4>Explore</h4><p>New Arrivals<br>Best sellers<br>Gift cards</p></div>
        <div><h4>Support</h4><p>FAQs<br>Returns<br>Contact</p></div>
        <div><div style="display: flex; gap: 18px;"><i class="fab fa-instagram"></i><i class="fab fa-x-twitter"></i><i class="fab fa-tiktok"></i></div></div>
    </div>
</footer>
<div id="toastMsg" class="toast-msg">✨ Added to cart</div>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    // ----- DATA -----
    const categoriesData = [
        { id: 1, name: "Audio", icon: "fas fa-headphones" },
        { id: 2, name: "Wearables", icon: "fas fa-clock" },
        { id: 3, name: "Gaming", icon: "fas fa-gamepad" },
        { id: 4, name: "Camera", icon: "fas fa-camera" },
        { id: 5, name: "Fashion", icon: "fas fa-tshirt" },
        { id: 6, name: "Drone", icon: "fas fa-drone" }
    ];
    const productsData = [
        { id: 101, title: "Orion XR Glasses", price: 349, oldPrice: 599, rating: 5, img: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80", category: "Wearables" },
        { id: 102, title: "NOVA Pro Headphones", price: 199, oldPrice: 279, rating: 4, img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80", category: "Audio" },
        { id: 103, title: "Cyberpunk 2077 Edge", price: 89, rating: 5, img: "https://images.unsplash.com/photo-1612287230202-1ff1d85d1bdf?auto=format&fit=crop&w=600&q=80", category: "Gaming" },
        { id: 104, title: "Drone X-Pulse", price: 599, oldPrice: 799, rating: 5, img: "https://images.unsplash.com/photo-1507582020474-9a35b7d455d9?auto=format&fit=crop&w=600&q=80", category: "Drone" },
        { id: 105, title: "Aether Watch Ultra", price: 399, rating: 4, img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80", category: "Wearables" },
        { id: 106, title: "Retro Hoodie", price: 79, oldPrice: 129, rating: 5, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "Fashion" }
    ];
    let cartItemsCount = 0;
    let currentFilter = "";

    // Helper dom elements
    const categoriesContainer = document.getElementById('categoriesContainer');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountSpan = document.getElementById('cartTotalCount');
    const searchGlobal = document.getElementById('searchInputGlobal');
    const toast = document.getElementById('toastMsg');
    const themeToggleBtn = document.getElementById('themeToggle');

    function showToast(msg) {
        toast.textContent = msg || "✨ Added to cart";
        toast.classList.add('show');
        setTimeout(() => toast.classList.remove('show'), 1800);
    }

    function updateCartUI() {
        cartCountSpan.textContent = cartItemsCount;
        localStorage.setItem('nebulaCartCount', cartItemsCount);
    }

    function addToCart(productId) {
        const product = productsData.find(p => p.id === productId);
        if(!product) return;
        cartItemsCount++;
        updateCartUI();
        showToast(`${product.title} added`);
    }

    function renderCategories() {
        categoriesContainer.innerHTML = categoriesData.map(cat => `
            <div class="cat-card" data-cat="${cat.name}">
                <i class="${cat.icon}"></i>
                <h4>${cat.name}</h4>
                <p style="font-size: 12px;">Explore</p>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(el => {
            el.addEventListener('click', () => {
                const catName = el.getAttribute('data-cat');
                currentFilter = catName;
                filterAndRenderProducts();
                document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
            });
        });
    }

    function filterAndRenderProducts() {
        let filtered = [...productsData];
        if(currentFilter && searchGlobal.value.trim() === "") {
            filtered = productsData.filter(p => p.category.toLowerCase().includes(currentFilter.toLowerCase()));
        }
        if(searchGlobal.value.trim() !== "") {
            const query = searchGlobal.value.trim().toLowerCase();
            filtered = productsData.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
            if(currentFilter && searchGlobal.value.trim() === "") filtered = productsData.filter(p => p.category.toLowerCase().includes(currentFilter.toLowerCase()));
        }
        renderProducts(filtered);
    }

    function renderProducts(productsArr) {
        if(productsArr.length === 0) {
            productsGrid.innerHTML = `<div style="grid-column:1/-1; text-align:center;">✨ No products found. Explore other categories ✨</div>`;
            return;
        }
        productsGrid.innerHTML = productsArr.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <h3>${p.title}</h3>
                    <div class="price-row">
                        <span class="price">$${p.price}</span>
                        ${p.oldPrice ? `<span style="text-decoration:line-through; opacity:0.6;">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div style="display:flex; justify-content: space-between; align-items:center;">
                        <span><i class="fas fa-star" style="color:#FFD966;"></i> ${p.rating}/5</span>
                        <button class="add-cart" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const id = parseInt(btn.getAttribute('data-id'));
                addToCart(id);
            });
        });
    }

    // Timer for flash sale (ends in 2 days)
    function startTimer() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 2);
        targetDate.setHours(23, 59, 59, 999);
        function update() {
            const now = new Date();
            const diff = targetDate - now;
            if (diff <= 0) {
                document.getElementById('days').innerText = "00";
                document.getElementById('hours').innerText = "00";
                document.getElementById('minutes').innerText = "00";
                document.getElementById('seconds').innerText = "00";
                return;
            }
            const days = Math.floor(diff / (1000*60*60*24));
            const hrs = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('days').innerText = days < 10 ? "0"+days : days;
            document.getElementById('hours').innerText = hrs < 10 ? "0"+hrs : hrs;
            document.getElementById('minutes').innerText = mins < 10 ? "0"+mins : mins;
            document.getElementById('seconds').innerText = secs < 10 ? "0"+secs : secs;
        }
        update();
        setInterval(update, 1000);
    }

    // Testimonials Swiper
    const testimonialList = [
        { name: "Zara Chen", text: "Slick UI and super fast delivery. The watch is a game changer!", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Marcus V.", text: "Best shopping experience on modern web. Love the design", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
        { name: "Lena K.", text: "Got the drone, feels premium. Customer support was awesome", rating: 4, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
    ];
    function loadTestimonials() {
        const swiperWrapper = document.querySelector('.swiper-wrapper');
        swiperWrapper.innerHTML = testimonialList.map(t => `
            <div class="swiper-slide">
                <div class="testimonial-card">
                    <div style="display:flex; gap:12px; align-items:center;">
                        <img src="${t.avatar}" style="width:48px; height:48px; border-radius:50%; object-fit:cover;">
                        <div><strong>${t.name}</strong> <div>${'⭐'.repeat(t.rating)}</div></div>
                    </div>
                    <p style="margin-top: 14px;">“${t.text}”</p>
                </div>
            </div>
        `).join('');
        new Swiper('.mySwiper', {
            loop: true,
            slidesPerView: 1,
            spaceBetween: 20,
            pagination: { el: ".swiper-pagination", clickable: true },
            breakpoints: { 768: { slidesPerView: 2 }, 1024: { slidesPerView: 3 } }
        });
    }

    // newsletter
    document.getElementById('subNewsBtn')?.addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if(!email.includes('@')) msgDiv.innerText = "Valid email please 💫";
        else { msgDiv.innerText = "Subscribed! 15% off on first order 🚀"; setTimeout(()=> msgDiv.innerText="",3000);}
    });
    document.getElementById('flashDealBtn')?.addEventListener('click', () => {
        cartItemsCount +=1;
        updateCartUI();
        showToast("🔥 Flash Deal added to cart");
    });
    document.getElementById('exploreBtn')?.addEventListener('click', ()=>{
        document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });
    searchGlobal.addEventListener('input', () => {
        currentFilter = "";
        filterAndRenderProducts();
    });

    // Theme toggle with local persistence
    function initTheme() {
        const saved = localStorage.getItem('theme');
        if(saved === 'light') {
            document.body.classList.add('light');
            themeToggleBtn.innerHTML = '<i class="fas fa-sun"></i>';
        } else {
            document.body.classList.remove('light');
            themeToggleBtn.innerHTML = '<i class="fas fa-moon"></i>';
        }
    }
    themeToggleBtn.addEventListener('click', () => {
        if(document.body.classList.contains('light')) {
            document.body.classList.remove('light');
            localStorage.setItem('theme', 'dark');
            themeToggleBtn.innerHTML = '<i class="fas fa-moon"></i>';
        } else {
            document.body.classList.add('light');
            localStorage.setItem('theme', 'light');
            themeToggleBtn.innerHTML = '<i class="fas fa-sun"></i>';
        }
    });
    // load cart from localStorage
    const storedCart = localStorage.getItem('nebulaCartCount');
    if(storedCart) cartItemsCount = parseInt(storedCart) || 0;
    updateCartUI();

    // final init
    renderCategories();
    renderProducts(productsData);
    startTimer();
    loadTestimonials();
    initTheme();
    document.getElementById('cartIcon')?.addEventListener('click', () => {
        showToast(`🛒 Cart total: ${cartItemsCount} item(s) | Checkout demo`);
    });
</script>
</body>
</html>
