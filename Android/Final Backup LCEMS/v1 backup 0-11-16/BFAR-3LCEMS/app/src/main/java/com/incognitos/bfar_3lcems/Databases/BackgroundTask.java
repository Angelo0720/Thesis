package com.incognitos.bfar_3lcems.Databases;

import android.app.AlertDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

/**
 * Created by Charles de Lazo on 1/7/2016.
 */
public class BackgroundTask extends AsyncTask<String,Void,String> {
    AlertDialog alertDialog;
    Context ctx;
    public BackgroundTask(Context ctx)
    {
        this.ctx=ctx;
    }
    @Override
    protected void onPreExecute() {
        alertDialog = new AlertDialog.Builder(ctx).create();
        alertDialog.setTitle("Login Information.....");
    }

    @Override
    protected String doInBackground(String... params) {
        String boat_url = "http://aqdr201995-001-site1.atempurl.com/boatinfo.php";
        String basicsurveyinfo_url = "http://aqdr201995-001-site1.atempurl.com/basicsurveyinfo.php";
        String login_url = "http://aqdr201995-001-site1.atempurl.com/login.php";
        String box_url = "http://aqdr201995-001-site1.atempurl.com/box.php";
        String sizes_url = "http://aqdr201995-001-site1.atempurl.com/sizes.php";
        String method = params[0];
        if (method.equals("boatinfo"))
        {
            String Boat_ID = params[1];
            String Boat_Name = params[2];
            String Province = params [3];
            String Town = params [4];
            String Barangay = params [5];

            try {
                URL url = new URL (boat_url);
                HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                OutputStream OS = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(OS,"UTF-8"));
                String data = URLEncoder.encode("Boat_ID", "UTF-8") +"="+URLEncoder.encode(Boat_ID,"UTF-8")+"&"+
                        URLEncoder.encode("Boat_Name","UTF-8") +"="+URLEncoder.encode(Boat_Name,"UTF-8")+"&"+
                        URLEncoder.encode("Province","UTF-8") +"="+URLEncoder.encode(Province,"UTF-8")+"&"+
                        URLEncoder.encode("Town","UTF-8") +"="+URLEncoder.encode(Town,"UTF-8")+"&"+
                        URLEncoder.encode("Barangay","UTF-8") +"="+URLEncoder.encode(Barangay, "UTF-8");
                bufferedWriter.write(data);
                bufferedWriter.flush();
                bufferedWriter.close();
                OS.close();
                InputStream IS = httpURLConnection.getInputStream();
                IS.close();
                return "Registration SUCCESS....";
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if (method.equals("basicsurveyinfo"))
        {
            String sampleserialno = params [1];
            String boatid = params [2];
            String totalboatcatch = params [3];
            String totalweight = params [4];
            String fishingeffort = params [5];
            String samplingdate = params [6];
            String surveyremarks = params [7];
            String landingcenter = params [8];
            String fishingground = params [9];
            String fishinggear = params [10];
            String boatcategory = params [11];

            try {
                URL url = new URL (basicsurveyinfo_url);
                HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                OutputStream OS = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(OS,"UTF-8"));
                String data = URLEncoder.encode("Sampleserialno", "UTF-8") +"="+URLEncoder.encode(sampleserialno,"UTF-8")+"&"+
                        URLEncoder.encode("Boatid","UTF-8") +"="+URLEncoder.encode(boatid,"UTF-8")+"&"+
                        URLEncoder.encode("Totalboatcatch","UTF-8") +"="+URLEncoder.encode(totalboatcatch,"UTF-8")+"&"+
                        URLEncoder.encode("Totalweight","UTF-8") +"="+URLEncoder.encode(totalweight,"UTF-8")+"&"+
                        URLEncoder.encode("Fishingeffort","UTF-8") +"="+URLEncoder.encode(fishingeffort,"UTF-8")+"&"+
                        URLEncoder.encode("Samplingdate","UTF-8") +"="+URLEncoder.encode(samplingdate,"UTF-8")+"&"+
                        URLEncoder.encode("Surveyremarks","UTF-8") +"="+URLEncoder.encode(surveyremarks,"UTF-8")+"&"+
                        URLEncoder.encode("Landingcenter","UTF-8") +"="+URLEncoder.encode(landingcenter,"UTF-8")+"&"+
                        URLEncoder.encode("Fishingground","UTF-8") +"="+URLEncoder.encode(fishingground,"UTF-8")+"&"+
                        URLEncoder.encode("Fishinggear","UTF-8") +"="+URLEncoder.encode(fishinggear,"UTF-8")+"&"+
                        URLEncoder.encode("Boatcategory","UTF-8") +"="+URLEncoder.encode(boatcategory, "UTF-8");
                bufferedWriter.write(data);
                bufferedWriter.flush();
                bufferedWriter.close();
                OS.close();
                InputStream IS = httpURLConnection.getInputStream();
                IS.close();
                return "Survey SUCCESS....";
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else if (method.equals("box"))
        {
            String Box_No = params[1];
            String Species_ID = params[2];
            String Sample_Species_Weight = params [3];
            String Sample_Serial_No = params [4];

            try {
                URL url = new URL (box_url);
                HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                OutputStream OS = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(OS,"UTF-8"));
                String data = URLEncoder.encode("Box_No", "UTF-8") +"="+URLEncoder.encode(Box_No,"UTF-8")+"&"+
                        URLEncoder.encode("Species_ID","UTF-8") +"="+URLEncoder.encode(Species_ID,"UTF-8")+"&"+
                        URLEncoder.encode("Sample_Species_Weight","UTF-8") +"="+URLEncoder.encode(Sample_Species_Weight,"UTF-8")+"&"+
                        URLEncoder.encode("Sample_Serial_No","UTF-8") +"="+URLEncoder.encode(Sample_Serial_No, "UTF-8");
                bufferedWriter.write(data);
                bufferedWriter.flush();
                bufferedWriter.close();
                OS.close();
                InputStream IS = httpURLConnection.getInputStream();
                IS.close();
                return "Box SUCCESS....";
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


        else if (method.equals("sizes"))
        {
            String Species_Name = params[1];
            String Box_no = params[2];
            String Fish_Length = params [3];

            try {
                URL url = new URL (sizes_url);
                HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                OutputStream OS = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(OS,"UTF-8"));
                String data = URLEncoder.encode("SpeciesName", "UTF-8") +"="+URLEncoder.encode(Species_Name,"UTF-8")+"&"+
                        URLEncoder.encode("BoxNo","UTF-8") +"="+URLEncoder.encode(Box_no,"UTF-8")+"&"+
                        URLEncoder.encode("FishLength","UTF-8") +"="+URLEncoder.encode(Fish_Length, "UTF-8");
                bufferedWriter.write(data);
                bufferedWriter.flush();
                bufferedWriter.close();
                OS.close();
                InputStream IS = httpURLConnection.getInputStream();
                IS.close();
                return "Sizes SUCCESS....";
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


        else if (method.equals("login"))
        {
            String login_name = params [1];
            String login_pass = params [2];
            try {
                URL url = new URL(login_url);
                HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8"));

                String data = URLEncoder.encode("login_name","UTF-8")+"="+URLEncoder.encode(login_name,"UTF-8")+"&"+
                        URLEncoder.encode("login_pass","UTF-8")+"="+URLEncoder.encode(login_pass,"UTF-8");
                bufferedWriter.write(data);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();

                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                String response = "";
                String line = "";
                while ((line = bufferedReader.readLine())!=null)
                {
                    response+=line;
                }
                bufferedReader.close();
                inputStream.close();
                httpURLConnection.disconnect();
                return response;


            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return null;
    }

    @Override
    protected void onProgressUpdate(Void... values) {
        super.onProgressUpdate(values);
    }

    @Override
    protected void onPostExecute(String result) {
        if (result.equals("Registration SUCCESS....")){
            Toast.makeText(ctx, result, Toast.LENGTH_LONG).show();
        }else if (result.equals("Survey SUCCESS....")){
            Toast.makeText(ctx, result, Toast.LENGTH_LONG).show();
        }else if (result.equals("Box SUCCESS....")){
            Toast.makeText(ctx, result, Toast.LENGTH_LONG).show();
        }else if (result.equals("Sizes SUCCESS....")) {
            Toast.makeText(ctx, result, Toast.LENGTH_LONG).show();
        }


        else {
            alertDialog.setMessage(result);
            alertDialog.show();
        }


    }
}

