package com.clilystudio.netbook.model;

import android.graphics.Bitmap;
import com.clilystudio.netbook.db.SplashRecord;

public class SplashAdvert
{
  private Bitmap bitmap;
  private SplashRecord splashRecord;

  public Bitmap getBitmap()
  {
    return this.bitmap;
  }

  public SplashRecord getSplashRecord()
  {
    return this.splashRecord;
  }

  public void setBitmap(Bitmap paramBitmap)
  {
    this.bitmap = paramBitmap;
  }

  public void setSplashRecord(SplashRecord paramSplashRecord)
  {
    this.splashRecord = paramSplashRecord;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.SplashAdvert
 * JD-Core Version:    0.6.0
 */