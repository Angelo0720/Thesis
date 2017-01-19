package com.incognitos.bfar_3lcems;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

public class ChooseSurvey extends AppCompatActivity {
    ImageButton ImgNewBoat,ImgNewSurvey,ImgLogout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_choose_survey);


        ImgNewBoat = (ImageButton)findViewById(R.id.imageButton);
        ImgNewBoat.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(ChooseSurvey.this,BoatInfo.class);
                startActivity(intent);


            }
        });


        ImgNewSurvey = (ImageButton)findViewById(R.id.imageButton2);
        ImgNewSurvey.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(ChooseSurvey.this,BasicSurveyInfo.class);
                startActivity(intent);

            }
        });


        ImgLogout = (ImageButton)findViewById(R.id.imageButton3);
        ImgLogout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(ChooseSurvey.this, MainActivity.class);
                startActivity(intent);

            }
        });

    }

}



