<%--
  Created by IntelliJ IDEA.
  User: lazy
  Date: 4/8/2023
  Time: 8:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
</head>
<body>
<div class="addCategory">
  <form action="user?page=newCategory" method="post"  class="form">
    <h1 class="title">Category Detail</h1>

    <div class="inputContainer">
      <input type="text" name="categoryTitle" class="input" placeholder="a" required>
      <label for="" class="label">Category Title</label>
    </div>
    <div class="inputContainer">
      <input type="text" class="input" name="categoryDescription" placeholder="a" required>
      <label for="" class="label">Category Description</label>
    </div>

    <input type="submit" class="submitBtn" value="Add Category">

  </form>
</div>

</body>
</html>

<style>
  body {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    background-color: white;
    font-family: "lato", sans-serif;
  }

  .addCategory {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  .form {
    background-color: white;
    width: 400px;
    border-radius: 8px;
    padding: 20px 40px;
    box-shadow: 0 10px 25px rgba(92, 99, 105, .2);
  }

  .title {
    font-size: 50px;
    margin-bottom: 50px;
  }
  .inputContainer {
    position: relative;
    height: 45px;
    width: 90%;
    margin-bottom: 17px;
  }


  .input {
    position: absolute;
    top: 0px;
    left: 0px;
    height: 100%;
    width: 100%;
    border: 1px solid #DADCE0;
    border-radius: 7px;
    font-size: 16px;
    padding: 0 20px;
    outline: none;
    background: none;
    z-index: 1;
  }


  /* Hide the placeholder texts (a) */

  ::placeholder {
    color: transparent;
  }

  .label {
    position: absolute;
    top: 15px;
    left: 15px;
    padding: 0 4px;
    background-color: white;
    color: #DADCE0;
    font-size: 16px;
    transition: 0.5s;
    z-index: 0;
  }
  .submitBtn {
    display: block;
    /*margin-left: auto;*/
    padding: 15px 30px;
    border: none;
    background-color: #616896;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 30px;
  }

  .submitBtn:hover {
    background-color: #616896;
    transform: translateY(-2px);
  }
  .input:focus + .label {
    top: -7px;
    left: 3px;
    z-index: 10;
    font-size: 14px;
    font-weight: 600;
    color: #616896;
  }
  .input:focus {
    border: 2px solid #616896;
  }
  .input:not(:placeholder-shown)+ .label {
    top: -7px;
    left: 3px;
    z-index: 10;
    font-size: 14px;
    font-weight: 600;
  }
</style>
