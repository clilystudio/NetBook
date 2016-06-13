package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.model.Splash;

import java.util.Date;
import java.util.List;

@Table(name = "SplashRecord")
public class SplashRecord
        extends Model {
    @Column(name = "end")
    public Date end;
    @Column(name = "img3x4")
    public String img3x4;
    @Column(name = "insideLink")
    public String insideLink;
    @Column(name = "isShow")
    public boolean isShow = false;
    @Column(name = "link")
    public String link;
    @Column(name = "splashId", unique = 1)
    public String splashId;
    @Column(name = "start")
    public Date start;

    public static void create(Splash splash) {
        SplashRecord splashRecord = new SplashRecord();
        splashRecord.splashId = splash.get_id();
        splashRecord.link = splash.getLink();
        splashRecord.img3x4 = splash.getImg3x4();
        splashRecord.insideLink = splash.getInsideLink();
        splashRecord.start = splash.getStart();
        splashRecord.end = splash.getEnd();
        splashRecord.save();
    }

    public static void delete(String string) {
        new Delete().from(SplashRecord.class).where("splashId = ?", string).execute();
    }

    public static SplashRecord get(String string) {
        if (string == null) {
            return null;
        }
        return (SplashRecord) new Select().from(SplashRecord.class).where("splashId = ?", string).executeSingle();
    }

    public static List<SplashRecord> getAll() {
        return new Select().from(SplashRecord.class).execute();
    }

    public static List<SplashRecord> getAllNotShow() {
        From from = new Select().from(SplashRecord.class);
        Object[] arrobject = new Object[]{0};
        return from.where("isShow = ?", arrobject).execute();
    }
}
