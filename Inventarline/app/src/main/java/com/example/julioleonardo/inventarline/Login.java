package com.example.julioleonardo.inventarline;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;

public class Login extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        Button btLogin=(Button)findViewById(R.id.btLogin);
        btLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String txtUser=((EditText)findViewById(R.id.txtUser)).getText().toString();
                String txtPassword=((EditText)findViewById(R.id.txtPassword)).getText().toString();
                if(txtUser.equals("admin")&&txtPassword.equals("admin")){
                    Intent Cpanel=new Intent(Login.this,Cpanel.class);
                    startActivity(Cpanel);
                }
                else{
                    Toast.makeText(getApplicationContext(),"Usuario Incorrecto",Toast.LENGTH_SHORT);
                }
            }
        });
    }
}
