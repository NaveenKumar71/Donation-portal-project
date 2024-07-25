<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Helping Hands: Donations Received</title>
    <link rel="stylesheet" href="css/donations.css"> </head>
<body>
    <header>
        <h1>Helping Hands</h1>
        <h2>Thank You for Your Generous Donations!</h2>
    </header>

    <main>
        <p>Your kindness makes a difference. We appreciate your support in feeding those in need.</p>

        <?php
        // Database connection (replace with your actual credentials)
        $servername = "localhost";
        $username = "root";
        $password = "";
        $database = "donation";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $database);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // SQL query to retrieve donation data
        $sql = "SELECT * FROM food";
        $result = $conn->query($sql);

        // Prepare output (empty array for donations)
        $donations = [];

        if ($result->num_rows > 0) {
            // Loop through results and create an array of donations
            while ($row = $result->fetch_assoc()) {
                $donations[] = $row;
            }
        }

        // Close connection
        $conn->close();
        ?>

        <?php if (count($donations) > 0) : ?>
            <section class="donations">
                <h2>Recent Donations</h2>
                <ul class="donations-list">
                    <?php foreach ($donations as $donation) : ?>
                        <li class="donation-card">
                            <div class="donor-info">
                                <h3><?= $donation['name'] ?></h3>
                                <span class="email">Email: <?= $donation['email'] ?></span>
                                <span class="phone">Phone: <?= $donation['phone'] ?></span>
                            </div>

                            <div class="donation-details">
                                <span class="food-type">Food Type: <?= $donation['food_type'] ?></span>
                                <span class="quantity">Quantity: <?= $donation['quantity'] ?></span>
                            </div>

                            <div class="preferences">
                                <span class="date">Preferred Date: <?= $donation['preferred_date'] ?></span>
                                <span class="time">Preferred Time: <?= $donation['preferred_time'] ?></span>
                                <span class="address">Preferred Address: <?= $donation['preferred_address'] ?></span>
                            </div>

                            <?php if (!empty($donation['message'])) : ?>
                                <div class="message">
                                    <p>Message: <?= $donation['message'] ?></p>
                                </div>
                            <?php endif; ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </section>
        <?php else : ?>
            <p class="no-donations">We haven't received any donations yet, but we hope yours will be the first!</p>
        <?php endif; ?>
    </main>

    <footer>
        <p>&copy; Helping Hands <?= date('Y') ?></p>
    </footer>

    <script src="script.js"></script> </body>
</html>
