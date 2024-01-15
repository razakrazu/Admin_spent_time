
class SignUpValidater {


static String? validateEmptyText(String? fieldName, String value){
  if(value == '' ||value.isEmpty){
    return '$fieldName is required';
  }
  return null;
}

  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is Empty';
    }
    // final emailRegExp= RegExp('!@#%^&*()<>?:"|[{}].,/;');
    // if(!emailRegExp.hasMatch(value)){
    //   return 'Invalid Email address';

    // }
    return null;
  }
  static String? validatePassword(String? value){
    if(value==null ||value.isEmpty){
return 'password is Empty';
    }
    
    // if(value.length<10){
    //   return 'Password must be at least 9 characters long';
    // }

    // if(!value.contains(RegExp('r[A-Z]'))){
    //   return 'Password must contain at least one uppercase letter';
    // }
    // if(!value.contains(RegExp('r[0-9]'))){
    //   return 'Password must contain at least one number';
    // }
    // if(!value.contains(RegExp('r[!@#%^&*()<>,.?:;{}]'))){
    //   return 'Password must contain at least one special character';
    // }
    return null;
  }
  

    static String? validateNumber(String? value){
    if(value==null ||value.isEmpty){
return 'Number is Empty';
    }
    
    // if(value.length<10){
    //   return 'Number must be at least 9 characters long';
    // }

    
    // if(!value.contains(RegExp('r[0-9]'))){
    //   return 'Number must contain at least one number';
    // }
   
    return null;
  }


    static String? validateName(String? value){
    if(value==null ||value.isEmpty){
return 'Name is Empty';
    }
    
    // if(value.length<20){
    //   return 'Name must be at least 9 characters long';
    // }

    // if(!value.contains(RegExp('r[A-Z]'))){
    //   return 'Name must contain at least one uppercase letter';
    // }
    
    // if(!value.contains(RegExp('r[!@#%^&*()<>,.?:;{}]'))){
    //   return 'Name must contain at least one special character';
    // }
    return null;
  }
}