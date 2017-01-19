package com.incognitos.bfar_3lcems;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.incognitos.bfar_3lcems.Databases.BackgroundTask;
import com.incognitos.bfar_3lcems.Databases.DBHelper;
import com.incognitos.bfar_3lcems.Databases.InsertLCEMS;

public class Sizes extends AppCompatActivity {
    Button BtnAddSizes;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sizes);
        final DBHelper dbHelper = new DBHelper(this);
        BtnAddSizes = (Button) findViewById(R.id.btnAddSizes);
        BtnAddSizes.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                EditText etSpeciesId = (EditText) findViewById(R.id.etSpeciesIDSizes);
                EditText etBoxNo = (EditText) findViewById(R.id.etBoxNoSizes);
                EditText etFishLength = (EditText) findViewById(R.id.etFishLengthSizes);


                String speciesid = etSpeciesId.getText().toString();
                String boxno = etBoxNo.getText().toString();
                String fishlength = etFishLength.getText().toString();

                String method = "sizes";
                BackgroundTask backgroundTask = new BackgroundTask(Sizes.this);
                backgroundTask.execute(method,speciesid,boxno,fishlength);


                if (speciesid.equals("") || boxno.equals("") || fishlength.equals("")) {
                    Toast.makeText(getApplicationContext(), "All fields need to filled up", Toast.LENGTH_LONG).show();
                } else {
                    InsertLCEMS.insertSizes(dbHelper, speciesid, boxno, fishlength);
                    etFishLength.setText("");
                    Toast.makeText(getApplication(), "SIZES SUCCESSFULLY ADDED", Toast.LENGTH_LONG).show();
                }


            }
        });


    }


}