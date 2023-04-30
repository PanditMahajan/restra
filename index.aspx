<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="restrarent_project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
    <title>Restra Webapplication</title>


    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
        crossorigin="anonymous" />


    <script src="js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <style>
        .card {
            margin: 20px;
            transition: transform 0.5s;
        }

            .card:hover {
                transform: scale(1.1);
            }

        .nav-item {
            transition: transform 0.5s;
        }

            .nav-item:hover {
                transform: scale(1.1);
            }

        .navbar {
            position: fixed;
        }

        #footer {
            margin: 0px;
            padding: 0px;
        }

        .divider {
            transition: transform 0.5s;
        }

            .divider:hover {
                transform: scaleY(2.1);
            }
      
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg fixed-top bg-transparent">
        <div class="container-fluid">
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            &nbsp &nbsp&nbsp&nbsp&nbsp 
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a href="#" class="nav-link active rounded bg-success-subtle" aria-current="page" href="/Home.aspx">Home</a>
                    </li>
                    &nbsp&nbsp&nbsp&nbsp
                    <li class="nav-item">
                        <a class="nav-link active rounded bg-success-subtle" aria-current="page" href="/ordernow.aspx">Place Order</a>
                    </li>
                    &nbsp&nbsp&nbsp&nbsp
                    <li class="nav-item">
                        <a class="nav-link active rounded bg-success-subtle" aria-current="page" href="#">Order Details</a>
                    </li>
                    &nbsp&nbsp&nbsp&nbsp
                   
                    <li class="nav-item">
                        <a class="nav-link active rounded bg-success-subtle" aria-current="page" href="#">AboutUS</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="row">
        <div class="col-lg-12 col-12 p-0 container-fluid">
            <div id="carouselExample" class="carousel carousel-fade slide">
                <div class="carousel-inner shadow-lg p-3 mb-5 bg-white rounded">
                    <div class="carousel-item active">
                        <img src="images/coffe2.jpg" class="img-fluid hover-zoom" alt="image not found!!" />
                        <div class="carousel-caption d-flex flex-column justify-content-end">
                            <h1 class="text-success">Refreshing Coffee!!</h1>

                            <p class="text-primary">
                                <small>A Hot Cup of Happiness.</small>
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/frenchfries.jpg" class="img-fluid hover-zoom" alt="image not found!!" />
                        <div class="carousel-caption d-flex flex-column justify-content-end">
                            <h1 class="text-success">Yummy Frenchfries!!</h1>

                            <p class="text-primary">
                                <small>Keep your friends close and your french fries closer.</small>
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/momos.jpg" class="img-fluid hover-zoom" alt="image not found!!" />
                        <div class="carousel-caption d-flex flex-column justify-content-end">
                            <h1 class="text-success">Tangy Momos!!</h1>

                            <p class="text-primary">
                                <small>I was not allowed to go out of the home so I cooked at home.</small>
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/pasta.jpg" class="img-fluid hover-zoom" alt="image not found!!" />
                        <div class="carousel-caption d-flex flex-column justify-content-end">
                            <h1 class="text-success">Creamy Pasta!!</h1>

                            <p class="text-primary">
                                <small>Pasta that lasts a lifetime.</small>
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/pizza.jpg" class="img-fluid hover-zoom" alt="image not found!!" />
                        <div class="carousel-caption d-flex flex-column justify-content-end">
                            <h1 class="text-success">Loaded Pizza!!</h1>

                            <p class="text-primary">
                                <small>keep calm and eat pizza.</small>
                            </p>
                        </div>
                    </div>
                    
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
    <center>

        <div class="col-12">
            <div class="card d-inline-block shadow-lg p-3 mb-5 bg-white" style="width: 18rem;">
                <img class="card-img-top" src="/images/sandwitch1.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title text-success">Sandwitch</h5>
                    <p class="card-text text-primary">A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item text-success">Bombay sandwitch ₹80</li>
                    <li class="list-group-item text-success">Veg sandwitch ₹90</li>
                    <li class="list-group-item text-success">Non-veg sandwitch ₹130</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Order Now</a>
                </div>
            </div>
            <div class="card d-inline-block shadow-lg p-3 mb-5 bg-white" style="width: 18rem;">
                <img class="card-img-top" src="/images/momos1.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title text-success">Momos</h5>
                    <p class="card-text text-primary">Momo is a type of steamed dumpling with some form of filling, most commonly chicken is steamed</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item text-success">Fried momos ₹140</li>
                    <li class="list-group-item text-success">Regular momos ₹90</li>
                    <li class="list-group-item text-success">Veg Cheese ₹250</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Order Now</a>
                </div>
            </div>
            <div class="card d-inline-block shadow-lg p-3 mb-5 bg-white" style="width: 18rem;">
                <img class="card-img-top" src="/images/pizza1.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title text-success">Pizza</h5>
                    <p class="card-text text-primary">In order for something to be called a pizza, it must have dough, tomato sauce and cheese.</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item text-success">Tandoori paneer Pizza ₹350</li>
                    <li class="list-group-item text-success">Pepproni Pizza ₹200</li>
                    <li class="list-group-item text-success">Non-veg Pizza ₹500</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Order Now</a>
                </div>
            </div>
            <div class="card d-inline-block shadow-lg p-3 mb-5 bg-white" style="width: 18rem;">
                <img class="card-img-top" src="/images/pasta1.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title text-success">Pasta</h5>
                    <p class="card-text text-primary">an Italian food made from flour, eggs and water, formed into different shapes and usually served with a sauce.</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item text-success">Masala pasta ₹60</li>
                    <li class="list-group-item text-success">White pasta ₹100</li>
                    <li class="list-group-item text-success">Regular pasta ₹150</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Order Now</a>
                </div>
            </div>
            <div class="card d-inline-block shadow-lg p-3 mb-5 bg-white" style="width: 18rem;">
                <img class="card-img-top" src="/images/burger1.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title text-success">Burger</h5>
                    <p class="card-text text-primary">meat or vegetables into a flat round-shaped cutlet, that you eat between two pieces of bread..</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item text-success">Cheese Buger ₹160</li>
                    <li class="list-group-item text-success">NonVeg Burger ₹190</li>
                    <li class="list-group-item text-success">Meo buger ₹270</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Order Now</a>
                </div>
            </div>
            <div class="card d-inline-block shadow-lg p-3 mb-5 bg-white" style="width: 18rem;">
                <img class="card-img-top" src="/images/french1.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title text-success">French Fries</h5>
                    <p class="card-text text-primary">a strip of potato typically cooked by being fried in deep fat. usually plural. french fry. Actualy it is from belgium</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item text-success">Pery-pery Fries ₹190</li>
                    <li class="list-group-item text-success">Cheese Fries ₹300</li>
                    <li class="list-group-item text-success">Simply Salted ₹100</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Order Now</a>
                </div>
            </div>
            <div class="card d-inline-block shadow-lg p-3 mb-5 bg-white" style="width: 18rem;">
                <img class="card-img-top" src="/images/coffee1.jpg" alt="Card image cap" />
                <div class="card-body">
                    <h5 class="card-title text-success">Coffee</h5>
                    <p class="card-text text-primary">the cooked seeds (coffee beans) of a tropical tree, made into powder and used for making a drink.</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item text-success">Cold Coffee ₹90</li>
                    <li class="list-group-item text-success">Hot Coffee ₹110</li>
                    <li class="list-group-item text-success">Creamy Coffee ₹400</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Order Now</a>
                </div>
            </div>
        </div>
    </center>
    <div class="divider py-1 bg-primary-subtle shadow-lg "></div>
    <br />

    <div>

        <footer id="footer" class="text-center text-lg-start text-white" style="background-color: #929fba">

            <div class="container p-4 pb-0">

                <section class="">

                    <div class="row">

                        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold text-success">Fo Restaurants
                            </h6>
                            <p>
                            <div class="text-primary">
                               We’re hot and spicy… literally!!!!!!!
                            </div>
                            </p>
                        </div>


                        <hr class="w-100 clearfix d-md-none" />

                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold text-success">Our Best</h6>
                            <p>
                                <a class="text-primary">Momos</a>
                            </p>
                            <p>
                                <a class="text-primary">Pizza</a>
                            </p>
                            <p>
                                <a class="text-primary">Coffee</a>
                            </p>
                            <p>
                                <a class="text-primary">French Fries</a>
                            </p>
                        </div>


                        <hr class="w-100 clearfix d-md-none" />


                        <hr class="w-100 clearfix d-md-none" />


                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold text-success">Contact</h6>
                            <p class="text-primary"><i class="fas fa-home mr-3"></i>Lakshmi Road BudhvarPeth</p>
                            <p class="text-primary"><i class="fas fa-envelope mr-3"></i>FoodieRestaurants@gmail.com</p>
                            <p class="text-primary"><i class="fas fa-phone mr-3"></i>+ 91 7956345611</p>
                            <p class="text-primary"><i class="fas fa-print mr-3"></i>+ 91 8944714412</p>
                        </div>

                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                            <h6 class="text-uppercase mb-4 font-weight-bold text-success">Follow us</h6>

                            <a class="btn btn-primary btn-floating m-1" style="background-color: #3b5998" href="#!"
                                role="button"><i class="fab fa-facebook-f"></i></a>

                            <a class="btn btn-primary btn-floating m-1" style="background-color: #55acee" href="#!"
                                role="button"><i class="fab fa-twitter"></i></a>

                            <a class="btn btn-primary btn-floating m-1" style="background-color: #dd4b39" href="#!"
                                role="button"><i class="fab fa-google"></i></a>

                            <a class="btn btn-primary btn-floating m-1" style="background-color: #ac2bac" href="#!"
                                role="button"><i class="fab fa-instagram"></i></a>

                            <a class="btn btn-primary btn-floating m-1" style="background-color: #0082ca" href="#!"
                                role="button"><i class="fab fa-linkedin-in"></i></a>

                            <a class="btn btn-primary btn-floating m-1" style="background-color: #333333" href="#!"
                                role="button"><i class="fab fa-github"></i></a>
                        </div>
                    </div>

                </section>

            </div>

        </footer>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
</body>

</html>





