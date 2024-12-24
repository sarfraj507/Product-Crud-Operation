<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Product Management</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" 
        data-target="#navbarContent" aria-controls="navbarContent" 
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index-page">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="display-product">Display Product</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="add-product">Add Product</a>
            </li>
        
        </ul>
    </div>
</nav>

<!-- Additional Custom Styling for the Navbar -->
<style>
    /* Navbar Styling */
    .navbar {
        padding: 10px 30px;
        background: #343a40; /* Dark background */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Subtle shadow */
    }

    .navbar-brand {
        font-size: 1.8rem;
        font-weight: 600;
        color: #ff9a00; /* Brand color */
        text-transform: uppercase;
    }

    .navbar-brand:hover {
        color: #fff; /* Hover effect */
        text-decoration: none;
    }

    .navbar-nav .nav-item {
        margin-left: 15px;
    }

    .navbar-nav .nav-link {
        font-size: 1.1rem;
        color: #fff;
        padding: 12px 20px;
        transition: all 0.3s ease;
        text-transform: capitalize;
    }

    .navbar-nav .nav-link:hover {
        color: #ff9a00; /* Hover color for links */
        background-color: rgba(255, 255, 255, 0.2);
        border-radius: 5px;
    }

    .navbar-toggler {
        border: none;
        outline: none;
    }

    /* Mobile Navbar */
    @media (max-width: 768px) {
        .navbar-nav {
            text-align: center;
        }
        .navbar-nav .nav-item {
            margin: 10px 0;
        }
    }
</style>
