<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Two.aspx.cs" Inherits="Two" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration</title>
<style>
*{ margin:0; padding:0;}
.main{ width:1000px; height:700px; border:1px solid #333; margin:0 auto; background:#f2f0f3; }
h2{ height:55px; background:#2995d8; font:24px/55px Georgia, "Times New Roman", Times, serif; color:#FFF; padding-left:20px; }
.middle{ width:721px; height:516px; margin:50px auto;  }
h3{ text-align:center; width:800px; margin-bottom:25px; font-family:Segoe UI; font-weight:bolder; font-size:24px; font-weight:normal;}
.middle-cont{ width:721px; height:518px; border:1px solid #666; border-radius:10px;   }
.form{ }
.head{ margin:10px 0 0 0;  height:160px; width:708px; float:left;}
h4{ margin:7px 0 0 5px; color:#fff; font-family:arial; background:#f5f5f5; width:708px; height:35px; border:1px solid #999; text-align:center; line-height:35px; color:#01578c; font-weight:normal;}
.input-forms{ width:444px; margin:12px auto; }
.head p{   width:150px; float:left; font:14px/40px Arial, Helvetica, sans-serif; }
input[type="text"]{ width:250px; height:38px;   border:1px solid #CCC; background:#fafafa; border-radius:3px;}
input[type="placeholder"]{ color:#00F;}

.search{ width:40px; height:38px; background:#8d1949; float:right; border:1px solid #ccc; }
.search img{ padding:15px;}
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
 <input type="text"   placeholder="search in blugraphic.com" /> <div class="search"><img src="images/search-icon.png" /></div></div>
 <div class="input-forms"><p>* Unique Site Traffic:</p>
 <input type="text" &21C2 /><div class="search"><img src="images/search-icon.png" /></div></div>

</div>


<div class="head"><h4>Publisher Information</h4>
<div class="input-forms"><p>First Name:</p>
 <input type="text"   placeholder="search in blugraphic.com" /> <div class="search"><img src="images/search-icon.png" /></div></div>
 <div class="input-forms"><p>Last Name:</p>
 <input type="text" /><div class="search"><img src="images/search-icon.png" /></div></div>

</div>


<div class="head"><h4>Payment Information</h4>
<div class="input-forms"><p>Payment Method :</p>
 <input type="text"   placeholder="search in blugraphic.com" /> <div class="search"><img src="images/search-icon.png" /></div></div>
 <div class="input-forms"><p> Payee Name:</p>
 <input type="text" /><div class="search"><img src="images/search-icon.png" /></div></div>

</div>
<!--
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

</div>-->

<div class="middle-cont">


</div>


</div>
</div>

</div>
    </form>
</body>
</html>
