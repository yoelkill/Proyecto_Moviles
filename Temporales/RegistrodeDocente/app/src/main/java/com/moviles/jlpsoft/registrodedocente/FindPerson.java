package com.moviles.jlpsoft.registrodedocente;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class FindPerson extends AppCompatActivity {
    EditText editTextLastName;
    RequestQueue requestQueue;
    TextView textViewDetails;
    Button buttonFind,buttonBack;
    //String showUrl = "http://192.168.1.105:80/RegistrodeDocente/showTeacher.php";
    String showUrl = "http://3jmovil.esy.es/RegistrodeDocente/showTeacher.php";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        setContentView(R.layout.activity_find_person);
        editTextLastName=(EditText)findViewById(R.id.editTextLastName);
        textViewDetails=(TextView)findViewById(R.id.textViewDetails);
        buttonFind=(Button)findViewById(R.id.buttonFind);
        buttonBack=(Button)findViewById(R.id.buttonBack);
        requestQueue = Volley.newRequestQueue(getApplicationContext());
        buttonFind.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                textViewDetails.setText("");
                Map<String,String> parameters  = new HashMap<String, String>();
                parameters.put("lastname",editTextLastName.getText().toString());
                CustomRequest jsonObjectRequest = new CustomRequest(Request.Method.POST, showUrl,parameters, new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        try {

                            textViewDetails.append("----------------------------------------\n");
                            JSONArray students = response.getJSONArray("teachers");
                            for (int i = 0; i < students.length(); i++) {
                                JSONObject student = students.getJSONObject(i);
                                String code = student.getString("CODPERSO");
                                String name = student.getString("NOMPERSO");
                                String lastname = student.getString("APELLIPERSO");
                                textViewDetails.append("Código : "+code + "\nNombre : "+ name + "\nApellido : " + lastname + " \n");
                                textViewDetails.append("----------------------------------------\n");
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }

                    }
                }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        System.out.append(error.getMessage());
                    }
                });
                requestQueue.add(jsonObjectRequest);
            }
        });
        buttonBack.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                startActivity(new Intent().setClass(FindPerson.this,MainActivity.class));
                finish();
            }
        });
    }
}
