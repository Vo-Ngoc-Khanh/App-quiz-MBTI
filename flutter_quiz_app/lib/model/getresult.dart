int getResult(String result){
    int id;
    if (result =="ENFJ") {
      id = 0;
    } else if (result =="ENFP") {
      id = 1;
    } else if (result =="ENTJ") {
      id =2;
    } else if (result =="ENTP") {
      id = 3;
    } else if (result =="ESFJ") {
      id = 4;
    }else if (result =="ESFP") {
      id = 5;
    } else if (result =="ESTJ") {
      id = 6;
    } else if (result =="ESTP") {
      id = 7;
    } else if (result =="INFJ") {
      id = 8;
    } else if (result =="INFP") {
      id = 9;
    } else if (result =="INTJ") {
      id = 10;
    } else if (result =="INTP ") {
      id = 11;
    } else if (result =="ISFJ") {
      id = 12;
    }else if (result =="ISFP ") {
      id = 13;
    } else if (result =="ISTJ") {
      id = 14;
    }else {
      id = 15;
    }
    return id;
}


int getResultJohnHolland(String result){
    int id;
    if (result =="R") {
      id = 0;
    } else if (result =="I") {
      id = 1;
    } else if (result =="A") {
      id =2;
    } else if (result =="S") {
      id = 3;
    } else if (result =="E") {
      id = 4;
    }else {
      id = 5;
    } 
    return id;
}