<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    
<script src="https://sandbox.paypal.com/sdk/js?client-id=ARFAg0j2rr9yURfj1N9sYUaEHU-ZC3AUuBY5q-QnvrJ0Vr2MptiSyuUwCAqcIa7aHc547GQ5cj-EnLF6"></script>

</head>
<body>

    <div id="paypal-button-container"></div>

    <script>
        paypal.Buttons({
            style:{
                color: 'blue',
                shape: 'pill',
                label: 'pay'
            },
            createOrder: function(data, actions){
                return actions.create.order.create({
                    purchase_units: [{
                        amount: {
                            value: 50
                        }
                    }]
                });
            },
            onCancel: function(data){
                alert("Pago cancelado")
            }
        }).render('#paypal-button-container');
    </script>
    
</body>
</html>