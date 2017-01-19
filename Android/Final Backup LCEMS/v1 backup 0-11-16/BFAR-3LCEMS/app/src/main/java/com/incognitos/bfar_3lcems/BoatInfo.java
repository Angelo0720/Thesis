package com.incognitos.bfar_3lcems;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import com.incognitos.bfar_3lcems.Databases.BackgroundTask;
import com.incognitos.bfar_3lcems.Databases.DBHelper;
import com.incognitos.bfar_3lcems.Databases.InsertLCEMS;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BoatInfo extends AppCompatActivity {
    Button BtnAddBoat, BtnClearBoatInfo;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_boat_info);
        final DBHelper dbHelper = new DBHelper(this);

        final Spinner spinProvince = (Spinner) findViewById(R.id.spinProvinceBoatInfo);
        List<String> province = new ArrayList<>(Arrays.asList("Bataan", "Aurora", "Zambales"));
        ArrayAdapter<String> adapterProvince= new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, province);
        spinProvince.setAdapter(adapterProvince);

        Spinner spinTown = (Spinner) findViewById(R.id.spinTownBoatInfo);
        List<String> town = new ArrayList<>(Arrays.asList("Balanga", "Pilar", "Morong", "Bagac", "Abucay", "Samal",
                "Limay", "Mariveles", "Orion"));
        ArrayAdapter<String> adapterTown= new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
        spinTown.setAdapter(adapterTown);

        Spinner spinBarangay = (Spinner) findViewById((R.id.spinBarangayBoatInfo));
        List<String> barangay = new ArrayList<>(Arrays.asList("Puerto Rivas", "Landing", "Sabang", "Pagasa", "Wawa", "Tabing-ilog",
                "St Francis 1", "Townsite", "Batangas 2", "Capunitan"));
        ArrayAdapter<String> adapterBarangay= new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, barangay);
        spinBarangay.setAdapter(adapterBarangay);

        BtnAddBoat = (Button) findViewById(R.id.btnAddBoatInfo);
        BtnAddBoat.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {


                EditText etBoatId = (EditText) findViewById(R.id.etBoatIDBoatInfo);
                EditText etBoatName = (EditText) findViewById(R.id.etBoatNameBoatInfo);
                Spinner spProvince = (Spinner) findViewById(R.id.spinProvinceBoatInfo);
                Spinner spTown = (Spinner) findViewById(R.id.spinTownBoatInfo);
                Spinner spBarangay = (Spinner) findViewById(R.id.spinBarangayBoatInfo);

                String boatid = etBoatId.getText().toString();
                String boatname = etBoatName.getText().toString();
                String province = spProvince.getSelectedItem().toString();
                String town = spTown.getSelectedItem().toString();
                String barangay = spBarangay.getSelectedItem().toString();

                String method = "boatinfo";
                BackgroundTask backgroundTask = new BackgroundTask(BoatInfo.this);
                backgroundTask.execute(method,boatid, boatname, province, town, barangay);
                finish();

                if (boatid.equals("") || boatname.equals("") || province.equals("") || town.equals("") || barangay.equals("")) {
                    Toast.makeText(getApplicationContext(), "All fields need to filled up", Toast.LENGTH_LONG).show();
                } else {
                    InsertLCEMS.insertBoatinfo(dbHelper, boatid, boatname, province, town, barangay);
                    Toast.makeText(getApplication(), "BOAT SUCCESSFULLY ADDED", Toast.LENGTH_LONG).show();
                }

            }
        });

        BtnClearBoatInfo = (Button)findViewById(R.id.btnClearBoatInfo);
        BtnClearBoatInfo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                EditText etBoatId = (EditText) findViewById(R.id.etBoatIDBoatInfo);
                EditText etBoatName = (EditText) findViewById(R.id.etBoatNameBoatInfo);



                etBoatId.setText("");
                etBoatName.setText("");


            }
        });



        final Spinner autoProvince = (Spinner) findViewById(R.id.spinProvinceBoatInfo);

        autoProvince.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                                                   @Override
                                                   public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                                                       Spinner autoTown = (Spinner) findViewById(R.id.spinTownBoatInfo);
                                                       if (autoProvince.getSelectedItem().equals("Bataan")) {
                                                           String[] town = new String[]{"Balanga", "Pilar", "Morong", "Bagac", "Abucay", "Samal", "Limay", "Mariveles", "Orion"};
                                                           ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                           adapter.setDropDownViewResource(R.layout.items_objects);
                                                           autoTown.setAdapter(adapter);

                                                       } else if (autoProvince.getSelectedItem().equals("Aurora")) {
                                                           String[] town = new String[]{"Dilasag", "Casiguran", "Dinalungan", "Dipaculao", "Dingalan", "Baler",};
                                                           ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                           adapter.setDropDownViewResource(R.layout.items_objects);
                                                           autoTown.setAdapter(adapter);

                                                       } else if (autoProvince.getSelectedItem().equals("Zambales")) {
                                                           String[] town = new String[]{"Sta Cruz", "Masinloc", "Palauig", "Candelaria", "Iba", "Cabangan", "San Antonio", "Subic"};
                                                           ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                           adapter.setDropDownViewResource(R.layout.items_objects);
                                                           autoTown.setAdapter(adapter);

                                                       }
                                                   }

                                                   @Override
                                                   public void onNothingSelected(AdapterView<?> adapterView) {

                                                   }
                                               }


        );
        final Spinner autoTown = (Spinner) findViewById(R.id.spinTownBoatInfo);

        autoTown.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                                               @Override
                                               public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                                                   Spinner autobarangay = (Spinner) findViewById(R.id.spinBarangayBoatInfo);

                                                   if (autoTown.getSelectedItem().equals("Balanga")) {
                                                       String[] barangay = new String[]{"Puerto Rivas"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, barangay);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);
                                                   } else if (autoTown.getSelectedItem().equals("Pilar")) {
                                                       String[] town = new String[]{"Landing"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Morong")) {
                                                       String[] town = new String[]{"Sabang"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Bagac")) {
                                                       String[] town = new String[]{"Pagasa"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Abucay")) {
                                                       String[] town = new String[]{"Wawa"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Samal")) {
                                                       String[] town = new String[]{"Tabing-ilog"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Limay")) {
                                                       String[] town = new String[]{"St Francis 1", "St Francis 2"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Mariveles")) {
                                                       String[] town = new String[]{"Townsite", "Batangas 2"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Orion")) {
                                                       String[] town = new String[]{"Capunitan"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Dilasag")) {
                                                       String[] town = new String[]{"Diniog", "Masagana"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Casiguran")) {
                                                       String[] town = new String[]{"Busok-busok", "Dilud", "Dibacong", "Esteves"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Dinalungan")) {
                                                       String[] town = new String[]{"Poblacion", "Mapalad"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Dipaculao")) {
                                                       String[] town = new String[]{"Dinadiawan", "Borlongan", "Dianed"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Dingalan")) {
                                                       String[] town = new String[]{"Dingalan Fishport"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Baler")) {
                                                       String[] town = new String[]{"Zabali", "Sabang"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Sta. Cruz")) {
                                                       String[] town = new String[]{"Calibungan", "Misa (Private Port)", "Lipay", "Venus (Private Port)"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Masinloc")) {
                                                       String[] town = new String[]{"Poblacion ", "Balogo/Matalvis"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Palauig")) {
                                                       String[] town = new String[]{"San Juan ", "Sitio, Lipay", "Garreta"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Candelaria")) {
                                                       String[] town = new String[]{"Uacon"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Iba")) {
                                                       String[] town = new String[]{"Amungan", "Sto. Rosario"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Cabangan")) {
                                                       String[] town = new String[]{"Macampao", "Laoag"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("San Antonio")) {
                                                       String[] town = new String[]{"San Miguel", "Pundaquit"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);

                                                   } else if (autoTown.getSelectedItem().equals("Subic")) {
                                                       String[] town = new String[]{"Subic Fishport"};
                                                       ArrayAdapter<String> adapter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, town);
                                                       adapter.setDropDownViewResource(R.layout.items_objects);
                                                       autobarangay.setAdapter(adapter);


                                                   }
                                               }

                                               @Override
                                               public void onNothingSelected(AdapterView<?> adapterView) {

                                               }
                                           }

        );
    }


}