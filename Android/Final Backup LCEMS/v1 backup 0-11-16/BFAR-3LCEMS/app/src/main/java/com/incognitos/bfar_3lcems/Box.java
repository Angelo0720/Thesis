package com.incognitos.bfar_3lcems;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.incognitos.bfar_3lcems.Databases.BackgroundTask;
import com.incognitos.bfar_3lcems.Databases.DBHelper;
import com.incognitos.bfar_3lcems.Databases.InsertLCEMS;

public class Box extends AppCompatActivity {
    Button BtnAddBox;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_box);
        final DBHelper dbHelper = new DBHelper(this);

        BtnAddBox = (Button) findViewById(R.id.btnAddBox);
        BtnAddBox.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                EditText etBoxno = (EditText) findViewById(R.id.etBoxNoBox);
                EditText etSpeciesName = (EditText) findViewById(R.id.etSpeciesIDBox);
                TextView etSampleSerialNo = (TextView) findViewById(R.id.tvserialno);
                EditText etSampleSpeciesWeight = (EditText) findViewById(R.id.etSampledSpeciesWeightBox);

                String boxno = etBoxno.getText().toString();
                String speciesname = etSpeciesName.getText().toString();
                String sampleserialno = etSampleSerialNo.getText().toString();
                String samplespeciesweight = etSampleSpeciesWeight.getText().toString();

                String method = "box";
                BackgroundTask backgroundTask = new BackgroundTask(Box.this);
                backgroundTask.execute(method,boxno,speciesname,samplespeciesweight,sampleserialno);

                if (boxno.equals("") || speciesname.equals("") || sampleserialno.equals("") || samplespeciesweight.equals("")) {
                    Toast.makeText(getApplicationContext(), "All fields need to filled up", Toast.LENGTH_LONG).show();
                } else {
                    Intent intent = new Intent(Box.this, Sizes.class);
                    startActivity(intent);
                    InsertLCEMS.insertBox(dbHelper, boxno, speciesname, sampleserialno, samplespeciesweight);
                    Toast.makeText(getApplication(), "BOX SUCCESSFULLY ADDED", Toast.LENGTH_LONG).show();
                }


            }
        });


    }


}
