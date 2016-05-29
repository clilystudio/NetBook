package com.clilystudio.app.netbook.model;

import android.graphics.Bitmap;

import com.clilystudio.app.netbook.db.SplashRecord;

public class SplashAdvert {
    private Bitmap bitmap;
    private SplashRecord splashRecord;

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public SplashRecord getSplashRecord() {
        return this.splashRecord;
    }

    public void setBitmap(Bitmap paramBitmap) {
        this.bitmap = paramBitmap;
    }

    public void setSplashRecord(SplashRecord paramSplashRecord) {
        this.splashRecord = paramSplashRecord;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.SplashAdvert
 * JD-Core Version:    0.6.2
 */