package com.moviles.jlpsoft.inventarline;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

public class AddProduct extends AppCompatActivity {
    Button buttonAdd,buttonBack;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_product);

        buttonAdd=(Button)findViewById(R.id.buttonAdd);
        buttonBack=(Button)findViewById(R.id.buttonBack);
    }

}

