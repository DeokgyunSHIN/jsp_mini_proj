<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
  .allpage{          /*폼에 대한 css*/
      margin: 20px;
      margin-left: 620px;
      width: 400px;
      height: 500px;
      border: solid rgb(53, 9, 231) ;
      text-align : center;
      
  }
  
  div{
    margin-top: 19px;
  }
  /*타입 number에 화살표 제거 */
  input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
    </style>
    
</head>
    <form class="allpage">
   <h1>회원가입</h1>
      
     <!--유저 아이디,이름, 패스워드 -->
     <div><input type="email" id="email" style="width: 310px; height: 25px;"required placeholder="이메일 입력해주세요"value=""></div> 
     <div><input type="text" id="id"style="width: 310px; height: 25px;"required placeholder="아이디 입력해주세요."value=""></div> 
     <div><input type="text" id="name" style="width: 310px; height: 25px;"required placeholder="이름 입력해주세요"value=""></div>
     <div><input type="password" id="passwd" style="width: 310px; height: 25px;"required placeholder="비밀번호 입력해주세요"value=""></div> 
     
      <!--생년월일 --> 
     <!--<div><input type="date" style="width: 310px; height: 25px; " name="date" value="date" required></div> -->

     <div>  <!--전화번호-->
    <select style="width: 60px;height: 25px;" id="phone_fast">
        <option value="010"selected="selected"> 010</option>  
        <option value="011">011</option>
        <option value="012">012</option>
    
     </select>&nbsp;-
     <input type="number"id ="phone_middle" style="width:100px;height: 20px;" autocomplete="on"  placeholder="" oninput="lengthLimit4(this)"
      required>&nbsp;-
     <input type="number" id ="phone_last" style="width:100px;height: 20px;" placeholder="" oninput="lengthLimit4(this)"required>
     </div>
     

    <!--성별-->
     <div>
     <input type="radio"name="gender" id ="gender" value="남성"required>남성 &nbsp;
     <input type="radio" name="gender" id ="gender" value="여성"required>여성
     </div>
    

     <!--취미-->
     <div>
        취미: <input type="checkbox" name ="hobby" id="hobby"value="여행">여행 
        <input type="checkbox" name ="hobby" id="hobby"value="운동">운동 
        <input type="checkbox" name ="hobby" id="hobby"value="영화">영화 
        <input type="checkbox" name ="hobby" id="hobby"value="게임">게임 <br>
     </div>

     <!--버튼 -->
     <br>
    <button type="button" onclick="SignUp();"> 회원가입 </button>
     <input type="reset" value="초기화">

    </form>
</body>
<script>
    
    /*전화번호 number 칸에 숫자 4자리 이상 제한하기 위한 스크립트*/
       function lengthLimit4(e){
        if(e.value.length > 4){
            e.value = e.value.slice(0, 4)
        }
    }

     function SignUp(){
        let arr=[];    /*전화번호 담을 배열 생성*/
        let hobbies=[];
        let my_email=document.getElementById('email').value;
        let name=document.getElementById('name').value;
        let id=document.getElementById('id').value;
        let passwd=document.getElementById('passwd').value;
        arr[0] =document.getElementById('phone_fast').value;
        arr[1] =document.getElementById('phone_middle').value;
        arr[2] =document.getElementById('phone_last').value;    
        let gender=document.getElementById('gender').value;
        const checkArry=document.getElementsByName('hobby');
        for(let i=0;i<checkArry.length;i++){    
            if(checkArry[i].checked){
                hobbies.push(checkArry[i].value);
            }
        }
      

        alert("이메일: "+my_email+"\n이름: "+name+"\n아이디: "+id+"\n패스워드: "+passwd
        +"\n전화번호: "+arr[0]+"-"+arr[1]+"-"+arr[2]+"\n성별: "+gender+"\n취미: "+hobbies.join(','));
     }
   

</script>
</html>