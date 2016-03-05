package com.moviles.jlpsoft.registrodedocente;

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

public class InsertPerson extends AppCompatActivity {
    Button buttonSave,buttonBack;
    EditText editTextCode,editTextName,editTextLastName;
    RequestQueue requestQueue;
    //String insertUrl="http://192.168.1.105:80/RegistrodeDocente/insertTeacher.php";
    String insertUrl="http://3jmovil.esy.es/RegistrodeDocente/insertTeacher.php";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        setContentView(R.layout.activity_insert_person);

        editTextCode = (EditText) findViewById(R.id.editTextCode);
        editTextName = (EditText) findViewById(R.id.editTextName);
        editTextLastName = (EditText) findViewById(R.id.editTextLastName);
        buttonSave = (Button) findViewById(R.id.buttonSave);
        buttonBack = (Button) findViewById(R.id.buttonBack);

        requestQueue = Volley.newRequestQueue(getApplicationContext());

        buttonSave.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                StringRequest request = new StringRequest(Request.Method.POST, insertUrl, new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {

                        System.out.println(response.toString());
                        Toast toast = Toast.makeText(getApplicationContext(), "Los Datos fueron Enviados correctamente", Toast.LENGTH_SHORT);
                        toast.show();
                    }
                }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Toast toast = Toast.makeText(getApplicationContext(), "No se pudo Insertar Elemento", Toast.LENGTH_SHORT);
                        toast.show();
                    }
                }) {

                    @Override
                    protected Map<String, String> getParams() throws AuthFailureError {
                        Map<String,String> parameters  = new HashMap<String, String>();
                        parameters.put("code",editTextCode.getText().toString());
                        parameters.put("name",editTextName.getText().toString());
                        parameters.put("lastname",editTextLastName.getText().toString());

                        return parameters;
                    }
                };
                requestQueue.add(request);
            }

        });
        buttonBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent().setClass(InsertPerson.this,MainActivity.class));
                finish();
            }
        });

    }

}
