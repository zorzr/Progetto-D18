<%--
  Created by IntelliJ IDEA.
  User: Chiara
  Date: 05/06/2018
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <title> Reservation State </title>

</head>
<body background="../img/background.jpg">

<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
    <a class="navbar-brand" href="#">Project D-18</a>
    <div class="navbar-collapse offcanvas-collapse" id="navbarProject">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
            <li class="nav-item"><a class="nav-link active" href="#">Reservations</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Catalogue</a></li>
        </ul>
    </div>
</nav>

<h1 style="margin-left: 50px; font-style: italic;color: lightyellow">Reservation State</h1>

</br>
</br>
</br>

<div class="container" style="background-color:#f1f1f1d1; padding: 2%;">

    <div class="row"  id="row1_pg2">

        <div class="col-sm-5">
            <ul class="list-group mb-3" style="margin-left: 20%;">
                <a class="list-view bg-dark" style="height: 30px; color: antiquewhite; text-align: center">Added Menù</a>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Menu 1 </h6>
                        <small class="text-muted">Fatto bene, è bello</small>
                    </div>
                    <button class="btn" style="background-color: #6576a5; color: white;" id="modify0" >Modify</button>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Menu 2</h6>
                        <small class="text-muted">Caruccio, dai</small>
                    </div>
                    <button class="btn" style="background-color:#6576a5; color: white;"  id="modify1">Modify</button>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Menu 3</h6>
                        <small class="text-muted">Vegano stai lontano</small>
                    </div>
                    <button class="btn" style="background-color: #6576a5; color: white;" id="modify2">Modify</button>
                </li>
            </ul>
        </div>

        <div class="col-sm-4" style="margin-left: 90px; width: 400px; ">

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="addon1" style="background-color:#6576a5;color: white; width: 100%">Number of Guests</span>
                </div>
                <input type="text" class="form-control" placeholder="How many?" aria-label="Username" aria-describedby="basic-addon1" style="width:50%">
            </div>

            <form action="/selection" method="post">
                <input type="submit" class="btn" style="background:#6576a5; color: white; width: 100%" value="Create your own Menu &raquo;">
            </form>

            <span style="font-size: small; margin-bottom: 0%">If you want to optimize your menu</span>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="addon1" style="background-color:#6576a5;color: white; width: 100%">Budget</span>
                </div>
                <input type="text" class="form-control" placeholder="Insert Budget" aria-label="" aria-describedby="basic-addon1" style="width:50%">
            </div>


            <form action="/selection" method="post">
                <input type="submit" class="btn" style="background:#6576a5; color: white; width: 100%" value="Create your optimized Menu &raquo;">
            </form>


        </div>
    </div>

        <br/>

        <div class="row">

            <div class="col">
            <form action="/recap" method="post" style="margin-right: 50%; margin-left: 10%">
                <input type="submit" class="btn btn-lg btn-success" value="Next">
            </form></div>
            <div class="col">
            <form action="/home" method="post" style=" margin-left: 50%; margin-right: 10%">
                <input type="submit" class="btn btn-lg" value="Cancel">
            </form></div>
        </div>


</div>

</body>
</html>
