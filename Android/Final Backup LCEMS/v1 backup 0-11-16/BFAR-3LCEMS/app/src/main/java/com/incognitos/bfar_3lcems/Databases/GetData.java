package com.incognitos.bfar_3lcems.Databases;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;

/**
 * Created by charl on 1/6/2016.
 */
public class GetData {
    public static ArrayList<String> getSpecies(DBHelper dbHelper) {
        ArrayList<String> list = new ArrayList<String>();
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        db.beginTransaction();

        String selectQuery = "SELECT * FROM " + LCEMSDB.TABLE_SPECIESINFO;
        Cursor cursor = db.rawQuery(selectQuery, null);

        try {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    String sciName = cursor.getString(cursor.getColumnIndex(LCEMSDB.SPECIESINFO_SCIENTIFICNAME));
                    list.add(sciName);
                }
            }
            db.setTransactionSuccessful();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.endTransaction();
            db.close();
        }
        return list;
    }

    public static ArrayList<String> getBoat(DBHelper dbHelper) {
        ArrayList<String> list = new ArrayList<String>();
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        db.beginTransaction();

        String selectQuery = "SELECT * FROM " + LCEMSDB.TABLE_BOATINFO;
        Cursor cursor = db.rawQuery(selectQuery, null);

        try {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    String boatName = cursor.getString(cursor.getColumnIndex(LCEMSDB.BOATINFO_BOATNAME));
                    list.add(boatName);
                }
            }
            db.setTransactionSuccessful();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.endTransaction();
            db.close();
        }
        return list;
    }


    public static ArrayList<String> getVessel(DBHelper dbHelper, String val) {
        ArrayList<String> list = new ArrayList<String>();
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        db.beginTransaction();

        String selectQuery = "SELECT * FROM " + LCEMSDB.TABLE_BOATINFO + " WHERE " +
                LCEMSDB.BOATINFO_BOATNAME + " = ?";
        Cursor cursor = db.rawQuery(selectQuery, new String[]{val});

        try {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    String province = cursor.getString(cursor.getColumnIndex(LCEMSDB.BOATINFO_PROVINCE));
                    String town = cursor.getString(cursor.getColumnIndex(LCEMSDB.BOATINFO_TOWN));
                    String brgy = cursor.getString(cursor.getColumnIndex(LCEMSDB.BOATINFO_BARANGAY));
                    String loc = brgy + " " + town + ", " + province;
                    list.add(loc);
                }
            }
            db.setTransactionSuccessful();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.endTransaction();
            db.close();
        }
        return list;
    }
    public static Cursor getBoatIDName(DBHelper dbHelper, String tblBoat, String tblSurvey, String tblcol,  String val){
        ArrayList<String> List = new ArrayList<>();
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        db.beginTransaction();

        String selectQuery = "SELECT * FROM " +
                tblBoat + " boat INNER JOIN " +
                tblSurvey + " survey ON " +
                "boat."+LCEMSDB.BOATINFO_BOATID +
                " = survey."+LCEMSDB.BASICSURVEY_BOATID+
                " WHERE " + tblcol +" = ?";
        Cursor cursor = db.rawQuery(selectQuery, new String[]{val});

        return cursor;
    }
    public static Cursor getSpeciesName(DBHelper dbHelper, String tblSpecies, String tblBox, String tblcol,  String val){
        ArrayList<String> List = new ArrayList<>();
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        db.beginTransaction();

        String selectQuery = "SELECT * FROM " +
                tblSpecies + " species INNER JOIN " +
                tblBox + " box ON " +
                "box."+LCEMSDB.BOX_SPECIESID +
                " = species."+LCEMSDB.SPECIESINFO_SPECIESID+
                " WHERE " + tblcol +" = ?";
        Cursor cursor = db.rawQuery(selectQuery, new String[]{val});

        return cursor;
    }
}
