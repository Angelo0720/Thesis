package com.incognitos.bfar_3lcems.Databases;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/**
 * Created by charl on 1/6/2016.
 */
public class InsertLCEMS {

    public static long insertUser(
            DBHelper dbHelper, String userid, String lname, String fname, String mname,
            String uname, String pword, String position, String assignedlocation, String accesstype,
            String contactnum, String emailadd, String bday) {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.USER_ID, userid);
        values.put(LCEMSDB.USER_LNAME, lname);
        values.put(LCEMSDB.USER_FNAME, fname);
        values.put(LCEMSDB.USER_MNAME, mname);
        values.put(LCEMSDB.USER_UNAME, uname);
        values.put(LCEMSDB.USER_PWORD, pword);
        values.put(LCEMSDB.USER_POSITION, position);
        values.put(LCEMSDB.USER_ASSIGNEDLOC, assignedlocation);
        values.put(LCEMSDB.USER_ACCESSTYPE, accesstype);
        values.put(LCEMSDB.USER_CONTACTNUM, contactnum);
        values.put(LCEMSDB.USER_EMAILADD, emailadd);
        values.put(LCEMSDB.USER_BDAY, bday);

        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_USER, null, values);

        return newRecord;
    }

    public static long insertLogs(DBHelper dbHelper, String userid, String logdate, String logtime)

    {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.LOGS_USERID, userid);
        values.put(LCEMSDB.LOGS_LOGDATE, logdate);
        values.put(LCEMSDB.LOGS_LOGTIME, logtime);


        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_LOGS, null, values);

        return newRecord;
    }


    public static long insertBasicSurvey(DBHelper dbHelper, String sample_serial_no, String boat_id, String total_boatcatch, String total_weight,
                                         String fishing_effort, String sampling_date, String survey_remarks, String landing_center, String fishing_ground, String fishing_gear, String boat_category) {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.BASICSURVEY_SAMPLESERIALNO, sample_serial_no);
        values.put(LCEMSDB.BASICSURVEY_BOATID, boat_id);
        values.put(LCEMSDB.BASICSURVEY_TOTALBOATCATCH, total_boatcatch);
        values.put(LCEMSDB.BASICSURVEY_TOTALWEIGHT, total_weight);
        values.put(LCEMSDB.BASICSURVEY_FISHINGEFFORT, fishing_effort);
        values.put(LCEMSDB.BASICSURVEY_SAMPLINGDATE, sampling_date);
        values.put(LCEMSDB.BASICSURVEY_SURVEYREMARKS, survey_remarks);
        values.put(LCEMSDB.BASICSURVEY_LANDINGCENTER, landing_center);
        values.put(LCEMSDB.BASICSURVEY_FISHINGGROUND, fishing_ground);
        values.put(LCEMSDB.BASICSURVEY_FISHINGGEAR, fishing_gear);
        values.put(LCEMSDB.BASICSURVEY_BOATCATEGORY, boat_category);


        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_BASICSURVEY, null, values);

        return newRecord;

    }

    public static long insertBoatinfo(DBHelper dbHelper, String boatid, String boatname,
                                      String province, String town, String barangay) {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.BOATINFO_BOATID, boatid);
        values.put(LCEMSDB.BOATINFO_BOATNAME, boatname);
        values.put(LCEMSDB.BOATINFO_PROVINCE, province);
        values.put(LCEMSDB.BOATINFO_TOWN, town);
        values.put(LCEMSDB.BOATINFO_BARANGAY, barangay);


        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_BOATINFO, null, values);

        return newRecord;
    }

    public static long insertBox(DBHelper dbHelper, String box_no, String species_id, String samplespeciesweight, String sample_serial_no)

    {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.BOX_BOXNO, box_no);
        values.put(LCEMSDB.BOX_SPECIESID, species_id);
        values.put(LCEMSDB.BOX_SAMPLEDSPECIESWEIGHT, samplespeciesweight);
        values.put(LCEMSDB.BOX_SAMPLESERIALNO, sample_serial_no);

        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_BOX, null, values);

        return newRecord;
    }


    public static long insertSizes(DBHelper dbHelper, String fish_no, String length, String box_no) {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.SIZES_FISHNO, fish_no);
        values.put(LCEMSDB.SIZES_LENGTH, length);
        values.put(LCEMSDB.SIZES_BOXNO, box_no);

        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_SIZES, null, values);

        return newRecord;
    }

    public static long insertSpecies(DBHelper dbHelper, String speciesid, String scientific_name, String fish_image) {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.SPECIESINFO_SPECIESID, speciesid);
        values.put(LCEMSDB.SPECIESINFO_SCIENTIFICNAME, scientific_name);
        values.put(LCEMSDB.SPECIESINFO_FISHIMAGE, fish_image);

        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_SPECIESINFO, null, values);

        return newRecord;
    }

    public static long insertGear(DBHelper dbHelper, String fishing_gear_id, String gearname) {
        ContentValues values = new ContentValues();
        values.put(LCEMSDB.GEARTYPEINFO_FISGINGGEARID, fishing_gear_id);
        values.put(LCEMSDB.GEARTYPEINFO_GEARNAME, gearname);

        SQLiteDatabase db = dbHelper.getWritableDatabase();
        long newRecord = db.insert(LCEMSDB.TABLE_GEARTYPEINFO, null, values);

        return newRecord;
    }
}