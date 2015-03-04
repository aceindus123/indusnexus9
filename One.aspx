<%@ Page Language="C#" AutoEventWireup="true" CodeFile="One.aspx.cs" Inherits="One" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration</title>
<style>
*{ margin:0; padding:0;}
.main{ width:1024px; height:700px; border:1px solid #999; margin:0 auto; background:#f5f5f5; border-radius:5px 5px 0 0;}
h2{ height:55px; background:#2995d8; font:24px/55px Georgia, "Times New Roman", Times, serif; color:#FFF; padding-left:20px;}
.middle{ width:819px; margin:50px auto;  }
h3{ text-align:center; width:800px; margin-bottom:25px; font-family:Segoe UI; font-weight:bolder; font-size:24px; font-weight:normal;}
.middle-cont{ width:800px; height:500px; border:1px solid #999; border-radius:10px; position:relative; float:right; }
.form{ }
.head{ background:url(images/bg.png) no-repeat; margin:10px 0 0 0;  height:160px; width:819px; position:absolute; float:left;}
h4{ margin:7px 0 0 25px; color:#fff; font-family:Segoe UI;}
.input-forms{ width:600px; margin:25px auto; }
.head p{ float:left;  width:150px; float:left; }
input[type="text"]{ width:244px; height:25px;  border-radius:10px; border:1px solid #CCC;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">

<h2>Public Registration</h2>

<div class="middle">
<h3>Account Information</h3>
<div class="form">
<div class="head"><h4>Site Information</h4>
<div class="input-forms"><p>* Site URL:</p>
 <input type="text"  /></div>
 <div class="input-forms"><p>* Unique Site Traffic:</p>
 <input type="text"  /></div>

</div>

<div class="head" style="margin:172px 0 0 0;"><h4>Publisher Information</h4>
<div class="input-forms"><p>* First Name:</p>

<input type="text" /></div>

 <div class="input-forms"><p>* Last Name:</p>
 <input type="text"  /></div>

</div>


<div class="head" style="margin:320px 0 0 0;"><h4>Payment Information</h4>
<div class="input-forms"><p>* Payment Method :</p>
 <input type="text"  /></div>
 <div class="input-forms"><p>* Payee Name:</p>
<input type="text" /></div>

</div>

<div class="middle-cont">


</div>


</div>
</div>

</div>
    </form>
</body>
</html>
