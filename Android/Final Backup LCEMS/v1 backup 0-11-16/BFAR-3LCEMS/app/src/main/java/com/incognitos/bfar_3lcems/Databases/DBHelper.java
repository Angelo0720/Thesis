package com.incognitos.bfar_3lcems.Databases;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by charl on 1/6/2016.
 */
public class DBHelper extends SQLiteOpenHelper {

    private static final String DATABASE_NAME = "lcems.db";
    private static final int DATABASE_VERSION = 1;

    public DBHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {

        sqLiteDatabase.execSQL(LCEMSDB.CREATE_USERINFO);
        sqLiteDatabase.execSQL(LCEMSDB.CREATE_USERLOGS);
        sqLiteDatabase.execSQL(LCEMSDB.CREATE_BASICSURVEY);
        sqLiteDatabase.execSQL(LCEMSDB.CREATE_BOATINFO);
        sqLiteDatabase.execSQL(LCEMSDB.CREATE_BOX);
        sqLiteDatabase.execSQL(LCEMSDB.CREATE_SIZES);
        sqLiteDatabase.execSQL(LCEMSDB.CREATE_SPECIESINFO);
        sqLiteDatabase.execSQL(LCEMSDB.CREATE_GEARTYPEINFO);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
}
