<%--
  Created by IntelliJ IDEA.
  User: SimonettaStefania
  Date: 05/06/2018
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="../stylesheets/RecapTemplateStyle.css">

    <title>Reservation State </title>

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



<div class="jumbotron" style="background-color:#f1f1f1d1; padding:2%; margin-top:3%; margin-left:5%;margin-right:5%">
    <h1 style="margin-left: 7%; color: black">Reservation State</h1>
    <div class="row"  id="row1_pg2">

        <div class="col-md-5">
            <ul class="list-group mb-3" style="margin-left: 10%; padding: 2%; margin-top:7%; width:103% ">
                <a class="list-view bg-dark" style="height: 10%; color: antiquewhite; text-align: center">Added Menù</a>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Menu 1 </h6>
                        <small class="text-muted">Fatto bene, è bello</small>
                    </div>
                    <form action="/selection" method="post">
                        <input type="hidden" value="1">
                        <button class="btn" style="background-color: #6576a5; color: white;" id="modify0" >Modify</button>
                    </form>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Menu 2</h6>
                        <small class="text-muted">Caruccio, dai</small>
                    </div>
                    <form action="/selection" method="post">
                        <input type="hidden" value="2">
                        <button class="btn" style="background-color: #6576a5; color: white;" id="modify1" >Modify</button>
                    </form>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Menu 3</h6>
                        <small class="text-muted">Vegano stai lontano</small>
                    </div>
                    <form action="/selection" method="post">
                        <input type="hidden" value="3">
                        <button class="btn" style="background-color: #6576a5; color: white;" id="modify2" >Modify</button>
                    </form>
                </li>
            </ul>
        </div>

        <div class="col-md-5" style=" margin-left:12%">

            <span style="font-size: larger; font-style: inherit">You can create your own menu or we can do it for you: you've just to insert the budget!</span>



            <form action="/selection" method="post">
                <br>
                <input type="submit" class="btn" style="background:#6576a5; color: white; width: 100%" value="Create your own Menu &raquo;">
                <br>
            </form>

            <center><span style="font-size: larger; margin-bottom: 0%">OR</span></center>
            <br>
            <form action="/optimize" method="post">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="addon1" style="background-color:#6576a5;color: white; width: 100%">Budget</span>
                    </div>
                    <input name ="budget" type="number" class="form-control" min="20" placeholder="Insert Budget" aria-label="" aria-describedby="basic-addon1" style="width:50%">
                </div>
                <input type="submit" class="btn" style="background:#6576a5; color: white; width: 100%" value="Create a budget optimized Menu &raquo;">
            </form>


        </div>
    </div>

        <br/>

        <div class="row">

            <div class="col">
                <form action="/home" method="post" style="  margin-left: 19.3%">
                    <input type="hidden" name="backToHome" value="true">
                    <input type="submit" class="btn btn-danger btn-lg" id="btnBack" value=" &laquo; Cancel">
                </form></div>

            <div class="col">
            <form action="/recap" method="post" style="margin-left: 62%;">
                <input type="submit" class="btn btn-lg btn-success" style="width:50%" value="Next &raquo;">
            </form></div>
        </div>


</div>

</body>
</html>
