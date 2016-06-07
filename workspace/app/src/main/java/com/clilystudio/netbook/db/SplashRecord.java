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

@Table(name="SplashRecord")
public class SplashRecord extends Model
{

  @Column(name="end")
  public Date end;

  @Column(name="img3x4")
  public String img3x4;

  @Column(name="insideLink")
  public String insideLink;

  @Column(name="isShow")
  public boolean isShow = false;

  @Column(name="link")
  public String link;

  @Column(name="splashId", unique=true)
  public String splashId;

  @Column(name="start")
  public Date start;

  public static void create(Splash paramSplash)
  {
    SplashRecord localSplashRecord = new SplashRecord();
    localSplashRecord.splashId = paramSplash.get_id();
    localSplashRecord.link = paramSplash.getLink();
    localSplashRecord.img3x4 = paramSplash.getImg3x4();
    localSplashRecord.insideLink = paramSplash.getInsideLink();
    localSplashRecord.start = paramSplash.getStart();
    localSplashRecord.end = paramSplash.getEnd();
    localSplashRecord.save();
  }

  public static void delete(String paramString)
  {
    new Delete().from(SplashRecord.class).where("splashId = ?", new Object[] { paramString }).execute();
  }

  public static SplashRecord get(String paramString)
  {
    if (paramString == null)
      return null;
    return (SplashRecord)new Select().from(SplashRecord.class).where("splashId = ?", new Object[] { paramString }).executeSingle();
  }

  public static List<SplashRecord> getAll()
  {
    return new Select().from(SplashRecord.class).execute();
  }

  public static List<SplashRecord> getAllNotShow()
  {
    From localFrom = new Select().from(SplashRecord.class);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(0);
    return localFrom.where("isShow = ?", arrayOfObject).execute();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.db.SplashRecord
 * JD-Core Version:    0.6.0
 */