package com.incognitos.bfar_3lcems.Databases;

/**
 * Created by charl on 1/6/2016.
 */
public class LCEMSDB {
    public static final String COLUMN_ID = "_id";

    public static final String TABLE_USER = "tbl_userinfo";
    public static final String USER_ID = "id";
    public static final String USER_LNAME = "lastname";
    public static final String USER_FNAME = "firstname";
    public static final String USER_MNAME = "middlename";
    public static final String USER_UNAME = "username";
    public static final String USER_PWORD = "password";
    public static final String USER_POSITION = "position";
    public static final String USER_ASSIGNEDLOC = "assignedlocation";
    public static final String USER_ACCESSTYPE = "accesstype";
    public static final String USER_CONTACTNUM = "contactnumber";
    public static final String USER_EMAILADD = "emailadd";
    public static final String USER_BDAY = "bday";

    public static final String TABLE_LOGS = "tbl_logs";
    public static final String LOGS_USERID = "userid";
    public static final String LOGS_LOGDATE = "logdate";
    public static final String LOGS_LOGTIME = "logtime";

    public static final String TABLE_BASICSURVEY = "tbl_basicsurvey";
    public static final String BASICSURVEY_SAMPLESERIALNO = "sampleserialno";
    public static final String BASICSURVEY_BOATID = "boatidsurvey";
    public static final String BASICSURVEY_TOTALBOATCATCH = "totalboatcatch";
    public static final String BASICSURVEY_TOTALWEIGHT = "totalweight";
    public static final String BASICSURVEY_FISHINGEFFORT = "fishingeffort";
    public static final String BASICSURVEY_SAMPLINGDATE = "samplingdate";
    public static final String BASICSURVEY_SURVEYREMARKS = "surveyremarks";
    public static final String BASICSURVEY_LANDINGCENTER = "landingcenter";
    public static final String BASICSURVEY_FISHINGGROUND = "fishingground";
    public static final String BASICSURVEY_FISHINGGEAR = "fishinggear";
    public static final String BASICSURVEY_BOATCATEGORY = "boatcategory";

    public static final String TABLE_BOATINFO = "tbl_boatinfo";
    public static final String BOATINFO_BOATID = "boatid";
    public static final String BOATINFO_BOATNAME = "boatname";
    public static final String BOATINFO_PROVINCE = "province";
    public static final String BOATINFO_TOWN = "town";
    public static final String BOATINFO_BARANGAY = "barangay";

    public static final String TABLE_BOX = "tbl_box";
    public static final String BOX_BOXNO = "boxno";
    public static final String BOX_SPECIESID = "boxspeciesid";
    public static final String BOX_SAMPLEDSPECIESWEIGHT = "samplespeciesweight";
    public static final String BOX_SAMPLESERIALNO = "sampleserialno";


    public static final String TABLE_SIZES = "tbl_sizes";
    public static final String SIZES_FISHNO = "fishno";
    public static final String SIZES_LENGTH = "length";
    public static final String SIZES_BOXNO = "boxno";

    public static final String TABLE_SPECIESINFO = "tbl_speciesinfo";
    public static final String SPECIESINFO_SPECIESID = "speciesid";
    public static final String SPECIESINFO_SCIENTIFICNAME = "scientificname";
    public static final String SPECIESINFO_FISHIMAGE = "fishimage";

    public static final String TABLE_GEARTYPEINFO = "tbl_fishinggearid";
    public static final String GEARTYPEINFO_FISGINGGEARID = "fishinggearid";
    public static final String GEARTYPEINFO_GEARNAME = "gearname";


    public static final String CREATE_USERINFO = "CREATE TABLE " +
            TABLE_USER + " ( " +
            COLUMN_ID + " INTEGER PRIMARY KEY, " +
            USER_ID  + " TEXT, " +
            USER_LNAME + " TEXT, " +
            USER_FNAME + " TEXT, " +
            USER_MNAME + " TEXT, " +
            USER_UNAME + " TEXT," +
            USER_PWORD + " TEXT, " +
            USER_POSITION + " TEXT, " +
            USER_ASSIGNEDLOC + " TEXT, " +
            USER_ACCESSTYPE + " TEXT, " +
            USER_CONTACTNUM + " TEXT, " +
            USER_EMAILADD + " TEXT, " +
            USER_BDAY + " TEXT" +
            ")";

    public static final String CREATE_USERLOGS = "CREATE TABLE " +
            TABLE_LOGS + " ( " +
            COLUMN_ID + " INTEGER PRIMARY KEY, " +
            LOGS_USERID + " TEXT, " +
            LOGS_LOGDATE + " TEXT, " +
            LOGS_LOGTIME + " TEXT " +
            ")";

    public static final String CREATE_BASICSURVEY = "CREATE TABLE " +
            TABLE_BASICSURVEY + " ( " +
            COLUMN_ID + "INTEGER PRIMARY KEY," +
            BASICSURVEY_SAMPLESERIALNO + " TEXT," +
            BASICSURVEY_TOTALBOATCATCH + " TEXT," +
            BASICSURVEY_TOTALWEIGHT + " TEXT," +
            BASICSURVEY_FISHINGEFFORT + " TEXT," +
            BASICSURVEY_SAMPLINGDATE + " TEXT, " +
            BASICSURVEY_SURVEYREMARKS + " TEXT," +
            BASICSURVEY_LANDINGCENTER + " TEXT," +
            BASICSURVEY_FISHINGGROUND +" TEXT," +
            BASICSURVEY_FISHINGGEAR + " TEXT," +
            BASICSURVEY_BOATCATEGORY + " TEXT" +
            ")";



    public static final String CREATE_BOATINFO = "CREATE TABLE " +
            TABLE_BOATINFO + " ( " +
            COLUMN_ID + " INTEGER PRIMARY KEY," +
            BOATINFO_BOATID + " TEXT," +
            BOATINFO_BOATNAME + " TEXT," +
            BOATINFO_PROVINCE + " TEXT," +
            BOATINFO_TOWN + " TEXT," +
            BOATINFO_BARANGAY + " TEXT" +
            ")";

    public static final String CREATE_BOX = "CREATE TABLE " +
            TABLE_BOX + " ( " +
            COLUMN_ID + " INTEGER PRIMARY KEY," +
            BOX_BOXNO + " TEXT, " +
            BOX_SPECIESID + " TEXT," +
            BOX_SAMPLEDSPECIESWEIGHT + " TEXT," +
            BOX_SAMPLESERIALNO + " TEXT" +
            ") ";

    public static final String CREATE_SIZES = "CREATE TABLE " +
            TABLE_SIZES + " ( " +
            COLUMN_ID + " INTEGER PRIMARY KEY," +
            SIZES_FISHNO + " TEXT," +
            SIZES_LENGTH + " TEXT," +
            SIZES_BOXNO + " TEXT" +
            ")";


    public static final String CREATE_SPECIESINFO = "CREATE TABLE " +
            TABLE_SPECIESINFO + " (" +
            COLUMN_ID + " INTEGER PRIMARY KEY," +
            SPECIESINFO_SPECIESID + " INTEGER AUTO_INCREMENT," +
            SPECIESINFO_SCIENTIFICNAME + " TEXT," +
            SPECIESINFO_FISHIMAGE + " TEXT" +
            ")";

    public static final String CREATE_GEARTYPEINFO = "CREATE TABLE " +
            TABLE_GEARTYPEINFO + " (" +
            COLUMN_ID + " INTEGER PRIMARY KEY," +
            GEARTYPEINFO_GEARNAME + " TEXT," +
            GEARTYPEINFO_FISGINGGEARID + " TEXT " +
            ")";

}