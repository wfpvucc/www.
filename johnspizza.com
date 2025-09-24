<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tommy John's Pizzeria</title>
<style>
:root {
  --red: #e63946;
  --dark: #222;
  --muted: #777;
}

body {
  font-family: Arial, sans-serif;
  margin: 0;
  background: #fafafa;
  color: var(--dark);
  line-height: 1.5;
}

nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px;
  background: white;
  box-shadow: 0 2px 6px rgba(0,0,0,0.05);
  position: sticky;
  top: 0;
  z-index: 100;
}

nav ul {
  display: flex;
  gap: 16px;
  list-style: none;
  margin: 0;
  padding: 0;
}

nav a {
  text-decoration: none;
  color: var(--dark);
  font-weight: 600;
}

.btn {
  background: var(--red);
  color: white;
  border: none;
  border-radius: 8px;
  padding: 8px 14px;
  cursor: pointer;
  font-weight: bold;
  text-decoration: none;
  display: inline-block;
}

header {
  background: url('https://source.unsplash.com/1600x600/?pizza') center/cover no-repeat;
  color: white;
  text-align: center;
  padding: 120px 20px;
}

header h1 {
  font-size: 48px;
  margin: 0;
  text-shadow: 2px 2px 6px rgba(0,0,0,0.5);
}

header p {
  font-size: 20px;
  margin-top: 10px;
  text-shadow: 1px 1px 4px rgba(0,0,0,0.5);
}

.grid { display: grid; grid-template-columns: 1fr; gap: 18px; margin: 20px; }
.panel { background:white; border-radius:12px; padding:16px; box-shadow:0 6px 18px rgba(12,12,12,0.03); }
.menu-section { font-size:20px; font-weight:bold; margin: 16px 0 10px; }
.item { display:flex; justify-content:space-between; padding:8px 0; border-bottom:1px dashed #f0f0f0; }
.item .name { font-weight:600 }
.muted { color:var(--muted); font-size:13px }

.callout { background:linear-gradient(90deg,var(--red),#ff7043); color:white; padding:16px; border-radius:10px; display:flex; align-items:center; gap:16px; margin-top:16px; }
.callout .badge { background:rgba(255,255,255,0.12); padding:8px 12px; border-radius:8px; font-weight:700 }
.special-price { font-size:28px; margin:0 }
.subl { font-size:14px; color:rgba(255,255,255,0.95) }

.gallery { display:grid; grid-template-columns:repeat(3,1fr); gap:8px; margin-top:12px; }
.gallery img { width:100%; height:120px; object-fit:cover; border-radius:8px }

footer { margin-top:18px; padding:18px 0; text-align:center; color:var(--muted); font-size:14px; background:#fff; }

@media(min-width:880px){
  .grid { grid-template-columns:2fr 1fr; }
}
@media(max-width:680px){
  nav ul { display:none; }
}

.mobile-nav { display:none; padding:12px; background:white; border-top:1px solid #eee; }
.mobile-nav a { display:block; padding:10px 0; border-bottom:1px solid #f3f3f3; color:var(--dark); text-decoration:none }
.show { display:block }
</style>
</head>
<body>
<nav>
  <div><strong>🍕 Tommy John's</strong></div>
  <ul>
    <li><a href="#menu">Menu</a></li>
    <li><a href="#specials">Specials</a></li>
    <li><a href="#gallery">Gallery</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
  <a href="#order" class="btn">Order Online</a>
</nav>

<header>
  <h1>Welcome to Tommy John's Pizzeria</h1>
  <p>Fresh dough. Bold BBQ. Family-owned vibes.</p>
</header>

<main class="grid">
  <section class="panel" id="menu">
    <h2 class="menu-section">Pizza Menu</h2>
    <div class="item"><div class="name">Cheese Slice</div><div>$2.25</div></div>
    <div class="item"><div class="name">Pepperoni Slice</div><div>$2.50</div></div>
    <div class="item"><div class="name">BBQ Slice</div><div>$2.50</div></div>

    <h2 class="menu-section">Whole Pizzas</h2>
    <div class="item"><div>Cheese</div><div>14” $14 / 16” $16</div></div>
    <div class="item"><div>Pepperoni</div><div>14” $14 / 16” $16</div></div>
    <div class="item"><div>BBQ</div><div>14” $18 / 16” $20</div></div>

    <div class="callout">
      <div>
        <div class="badge">FRIDAY SPECIAL</div>
        <p class="special-price">$10 Large Pizza</p>
        <p class="subl">Every Friday. Up to 50% off.</p>
      </div>
    </div>
  </section>

  <aside class="panel" id="specials">
    <h3>Why Choose Us?</h3>
    <p class="muted">Family-owned, fast service, and unbeatable BBQ pizza flavor.</p>

    <h3 style="margin-top:16px">Gallery</h3>
    <div class="gallery" id="gallery">
      <img src="https://source.unsplash.com/400x300/?pizza" alt="Pizza">
      <img src="https://source.unsplash.com/400x300/?bbq" alt="BBQ">
      <img src="https://source.unsplash.com/400x300/?wings" alt="Wings">
    </div>
  </aside>
</main>

<section class="panel" id="contact" style="margin:20px">
  <h3>Contact & Location</h3>
  <p class="muted">
    Tommy John's Pizzeria<br>
    411 W Bridge St, Morrisville, PA 19067<br>
    Phone: (267) 833-3911
  </p>
  <a class="btn btn-primary" href="tel:+12678333911">Call Now</a>
</section>

<footer>
  © Tommy John's Pizzeria • Morrisville, PA
</footer>
</body>
</html>
