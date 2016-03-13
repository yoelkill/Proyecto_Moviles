package com.moviles.jlpsoft.inventarline;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;

public class AddProduct extends AppCompatActivity {
    Button buttonAdd,buttonBack;
    EditText editTextProducto,editTextPric,editTextCantidad,editTextCat,editTextMar,editTextCol;
    RequestQueue requestQueue;

    String insertUrl="http://192.168.1.44:80/app/InsertarProd.php";
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        setContentView(R.layout.activity_add_product);

        editTextProducto = (EditText) findViewById(R.id.editTextProducto);
        editTextPric = (EditText) findViewById(R.id.editTextPric);
        editTextCantidad = (EditText) findViewById(R.id.editTextCantidad);
        editTextCat = (EditText) findViewById(R.id.editTextCat);
        editTextMar = (EditText) findViewById(R.id.editTextMar);
        editTextCol = (EditText) findViewById(R.id.editTextCol);

        buttonAdd=(Button)findViewById(R.id.buttonAdd);
        buttonBack=(Button)findViewById(R.id.buttonBack);
    }

}

