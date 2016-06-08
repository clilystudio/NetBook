package com.clilystudio.netbook.model;

import android.graphics.Bitmap;

import com.clilystudio.netbook.db.SplashRecord;

public class SplashAdvert {
    private Bitmap bitmap;
    private SplashRecord splashRecord;

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public void setBitmap(Bitmap paramBitmap) {
        this.bitmap = paramBitmap;
    }

    public SplashRecord getSplashRecord() {
        return this.splashRecord;
    }

    public void setSplashRecord(SplashRecord paramSplashRecord) {
        this.splashRecord = paramSplashRecord;
    }
}

