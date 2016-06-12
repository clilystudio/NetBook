package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.clilystudio.netbook.model.Splash;

import java.util.Date;
import java.util.List;

public class SplashRecord extends Model {

    public Date end;
    public String img3x4;
    public String insideLink;
    public String link;
    public String splashId;
    public Date start;
    public boolean isShow = false;

    public static void create(Splash Splash1) {
        SplashRecord SplashRecord2 = new SplashRecord();

        SplashRecord2.splashId = Splash1.get_id();
        SplashRecord2.link = Splash1.getLink();
        SplashRecord2.img3x4 = Splash1.getImg3x4();
        SplashRecord2.insideLink = Splash1.getInsideLink();
        SplashRecord2.start = Splash1.getStart();
        SplashRecord2.end = Splash1.getEnd();
        SplashRecord2.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void delete(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static SplashRecord get(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAll() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllNotShow() {
    }
}
