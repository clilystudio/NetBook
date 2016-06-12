package com.clilystudio.netbook.model;

import android.graphics.Bitmap;

import com.clilystudio.netbook.db.SplashRecord;

public class SplashAdvert {

    private Bitmap bitmap;
    private SplashRecord splashRecord;

    public Bitmap getBitmap() {
        return bitmap;
    }

    public void setBitmap(Bitmap Bitmap1) {
        bitmap = Bitmap1;
    }

    public SplashRecord getSplashRecord() {
        return splashRecord;
    }

    public void setSplashRecord(SplashRecord SplashRecord1) {
        splashRecord = SplashRecord1;
    }
}
