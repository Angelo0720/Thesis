package com.incognitos.bfar_3lcems;

import android.app.DatePickerDialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.incognitos.bfar_3lcems.Databases.BackgroundTask;
import com.incognitos.bfar_3lcems.Databases.DBHelper;
import com.incognitos.bfar_3lcems.Databases.GetData;
import com.incognitos.bfar_3lcems.Databases.InsertLCEMS;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class BasicSurveyInfo extends AppCompatActivity {
    Button BtnAddSurvey, BtnBasicSurveyClear;
    SimpleDateFormat sdf;
    DatePickerDialog.OnDateSetListener date;
    Calendar myCalendar;

    DBHelper dbHelper;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_basic_survey_info);
        final TextView tvDate = (TextView) findViewById(R.id.tvDate);
        dbHelper = new DBHelper(this);

        final AutoCompleteTextView boatidname = (AutoCompleteTextView) findViewById(R.id.etBoatIDBasicSurveyInfo);
        ArrayList<String> listboatname = GetData.getBoat(dbHelper);
        ArrayAdapter<String> adapterboat = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, listboatname);
        boatidname.setAdapter(adapterboat);

        boatidname.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                String vesselAr = boatidname.getText().toString();
                ArrayList<String> vessellist = GetData.getVessel(dbHelper, vesselAr);
                EditText EtLandingCenter;
                EtLandingCenter = (EditText) findViewById(R.id.spinLandingCenterBasicSurveyInfo);
                EtLandingCenter.setText(vessellist.get(0));

            }
        });

       /* Spinner spinLandingCenter = (Spinner) findViewById(R.id.spinLandingCenterBasicSurveyInfo);
        List<String> landingcenter = new ArrayList<>(Arrays.asList("data1", "data2", "data3"));
        ArrayAdapter<String> adapterlandingCenter = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, landingcenter);
        spinLandingCenter.setAdapter(adapterlandingCenter);*/

        Spinner spinFishingGround = (Spinner) findViewById(R.id.spinFishingGroundBasicSurveyInfo);
        List<String> fishingground = new ArrayList<>(Arrays.asList("West Philippine Sea",
                "Manila Bay", "Pacific Ocean", "Casiguran Sound",
                "Baler Bay", "Casapsapan Bay", "Dingalan Bay", "Dibut Bay",
                "Pampanga River", "Swips in Muños", "Pahingahan Lake",
                "Singgalat Dam and Lake", "Pantabangan Dam"));
        ArrayAdapter<String> adapterFishingGround = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, fishingground);
        spinFishingGround.setAdapter(adapterFishingGround);

        Spinner spinFishingGear = (Spinner) findViewById(R.id.spinFishingGearBasicSurveyInfo);
        List<String> fishinggear = new ArrayList<>(Arrays.asList("Ringnet", "Bagnet", "Otter Trawl", "Multiple Handline",
                "Handline", "Spear Gun", "Troll Line", "Scoop Net",
                "Gillnet", "Jigger", "Drift Gillnet"));
        ArrayAdapter<String> adapterFishingGear = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, fishinggear);
        spinFishingGear.setAdapter(adapterFishingGear);

        final Spinner spinBoatCategory = (Spinner) findViewById(R.id.spinBoatCategoryBasicSurveyInfo);
        List<String> boatcategory = new ArrayList<>(Arrays.asList("Municipal", "Commercial"));
        ArrayAdapter<String> adapterBoatCategory = new ArrayAdapter<String>(getApplicationContext(), R.layout.items_objects, R.id.tvOutPut, boatcategory);
        spinBoatCategory.setAdapter(adapterBoatCategory);

        BtnAddSurvey = (Button) findViewById(R.id.btnAddSurveyBasicSurveyInfo);
        BtnAddSurvey.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView tvDate = (TextView) findViewById(R.id.tvDate);

                EditText etBoatId = (EditText) findViewById(R.id.etBoatIDBasicSurveyInfo);
                TextView tvSerialNo = (TextView) findViewById(R.id.tvSampleSerialNo);
                EditText etFishEffort = (EditText) findViewById(R.id.etFishingEffortBasicSurveyInfo);
                EditText etTotalWeight = (EditText) findViewById(R.id.etTotalWeightBasicSurveyInfo);
                EditText etTotalBoatCatch = (EditText) findViewById(R.id.etTotalBoatCatchBasicSurveyInfo);
                EditText etRemarks = (EditText) findViewById(R.id.etSurveyRemarksBasicSurveyInfo);
                EditText etLandingCenter = (EditText) findViewById(R.id.spinLandingCenterBasicSurveyInfo);
                Spinner etFishingGround = (Spinner) findViewById(R.id.spinFishingGroundBasicSurveyInfo);
                Spinner etFishingGear = (Spinner) findViewById(R.id.spinFishingGearBasicSurveyInfo);

                String boatid = etBoatId.getText().toString();
                String serialno = tvSerialNo.getText().toString();
                String fisheffort = etFishEffort.getText().toString();
                String totalweight = etTotalWeight.getText().toString();
                String totalboatcatch = etTotalBoatCatch.getText().toString();
                String remarks = etRemarks.getText().toString();
                String landingcenter = etLandingCenter.getText().toString();
                String fishingground = etFishingGround.getSelectedItem().toString();
                String fishinggear = etFishingGear.getSelectedItem().toString();
                String category = spinBoatCategory.getSelectedItem().toString();
                String date = tvDate.getText().toString();

                String method = "basicsurveyinfo";
                BackgroundTask backgroundTask = new BackgroundTask(BasicSurveyInfo.this);
                backgroundTask.execute(method, boatid, serialno, totalboatcatch, totalweight, fisheffort, date, remarks, landingcenter, fishingground, fishinggear, category);

                InsertLCEMS.insertBasicSurvey(dbHelper, serialno, boatid, totalboatcatch, totalweight, fisheffort, date, remarks, landingcenter, fishingground,
                        fishinggear, category);

                Toast.makeText(getApplication(), "Data Save", Toast.LENGTH_LONG).show();
                Intent intent = new Intent(BasicSurveyInfo.this, Box.class);
                startActivity(intent);

            }
        });

        BtnBasicSurveyClear = (Button) findViewById(R.id.btnClear);
        BtnBasicSurveyClear.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                EditText etBoatId = (EditText) findViewById(R.id.etBoatIDBasicSurveyInfo);
                TextView tvSerialNo = (TextView) findViewById(R.id.tvSampleSerialNo);
                EditText etFishEffort = (EditText) findViewById(R.id.etFishingEffortBasicSurveyInfo);
                EditText etTotalWeight = (EditText) findViewById(R.id.etTotalWeightBasicSurveyInfo);
                EditText etTotalBoatCatch = (EditText) findViewById(R.id.etTotalBoatCatchBasicSurveyInfo);
                EditText etRemarks = (EditText) findViewById(R.id.etSurveyRemarksBasicSurveyInfo);
                Spinner etFishingGround = (Spinner) findViewById(R.id.spinFishingGroundBasicSurveyInfo);
                Spinner etFishingGear = (Spinner) findViewById(R.id.spinFishingGearBasicSurveyInfo);
                Spinner etCategory = (Spinner) findViewById(R.id.spinBoatCategoryBasicSurveyInfo);

                etFishEffort.setText("");
                etTotalWeight.setText("");
                etBoatId.setText("");
                tvSerialNo.setText("");
                etTotalBoatCatch.setText("");
                etRemarks.setText("");


            }
        });
        myCalendar = Calendar.getInstance();
        sdf = new SimpleDateFormat("yyyy-MMM-dd", Locale.US);
        tvDate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                date = new DatePickerDialog.OnDateSetListener() {
                    @Override
                    public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
                        myCalendar.set(Calendar.YEAR, year);
                        myCalendar.set(Calendar.MONTH, monthOfYear);
                        myCalendar.set(Calendar.DAY_OF_MONTH, dayOfMonth);
                        tvDate.setText(sdf.format(myCalendar.getTime()));
                    }
                };
                new DatePickerDialog(BasicSurveyInfo.this, date,
                        myCalendar.get(Calendar.YEAR),
                        myCalendar.get(Calendar.MONTH),
                        myCalendar.get(Calendar.DAY_OF_MONTH)).show();

            }


        });

    }}