/**
 * 

 */

const show1 = document.querySelector(".login-button");
const closeb = document.querySelector(".close");
const closeb1 = document.querySelector(".close1");
const overlay = document.querySelector(".overlay");
const login = document.querySelector(".login");
const show2 = document.querySelector(".signup-button");
const signup = document.querySelector(".signup");

function closelogin() {
  login.classList.add("hidden");
  overlay.classList.toggle("hidden");
}

function openlogin() {
  login.classList.remove("hidden");
  overlay.classList.toggle("hidden");
}
function opensignup() {
  signup.classList.remove("hidden");
  overlay.classList.toggle("hidden");
}


function closesignup() {
  signup.classList.add("hidden");
  overlay.classList.toggle("hidden");
}

function close() {
  overlay.classList.toggle("hidden");
  if (signup.classList.contains("hidden")) login.classList.add("hidden");
  else signup.classList.add("hidden");
}

function opensignupfromlogin() {
	login.classList.add("hidden");
  	overlay.classList.toggle("hidden");
  	signup.classList.remove("hidden");
  	overlay.classList.toggle("hidden");
}

function openloginfromsignup() {
	signup.classList.add("hidden");
  	overlay.classList.toggle("hidden");
  	login.classList.remove("hidden");
 	overlay.classList.toggle("hidden");
}



//checking username exists or not 
function sendInfo()
{
var v=document.getElementById("uname").value;
var url="checkusername.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}

//showing quiznames according to user input
function searchquizname()
{
var v=document.getElementById("searchsubject").value;
var url="searchquiz.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getquizname;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getquizname(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('searchtablebody').innerHTML=val;
}
}


//showing details of clicked quiz
function viewAll(name)
{
var v=name;
var url="searchquizdetail.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getquizdetail;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getquizdetail(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}




