package com.ushaqi.zhuishushenqi.db;

import android.support.design.widget.am;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Follower;
import com.ushaqi.zhuishushenqi.model.User;
import java.util.List;

@Table(name="FollowRecord")
public class FollowRecord extends Model
{

  @Column(name="followedId")
  private String followedId;

  @Column(name="userId")
  private String userId;

  public static void cancelFollow(String paramString1, String paramString2)
  {
    new Delete().from(FollowRecord.class).where(" userId = ? and followedId = ? ", new Object[] { paramString1, paramString2 }).execute();
  }

  public static void clear(String paramString)
  {
    new Delete().from(FollowRecord.class).where(" userId = ? ", new Object[] { paramString }).execute();
  }

  public static List<FollowRecord> findAll(String paramString)
  {
    return new Select().distinct().from(FollowRecord.class).where(" userId = ? ").execute();
  }

  public static boolean isFollowed(String paramString1, String paramString2)
  {
    return new Select().from(FollowRecord.class).where(" userId = ? and followedId = ?", new Object[] { paramString1, paramString2 }).exists();
  }

  public static void save2DB(String paramString1, String paramString2)
  {
    FollowRecord localFollowRecord = new FollowRecord();
    localFollowRecord.setUserId(paramString1);
    localFollowRecord.setFollowedId(paramString2);
    localFollowRecord.save();
  }

  public static void save2DB(Follower[] paramArrayOfFollower)
  {
    User localUser = am.e().getUser();
    ActiveAndroid.beginTransaction();
    try
    {
      int i = paramArrayOfFollower.length;
      for (int j = 0; j < i; j++)
      {
        Follower localFollower = paramArrayOfFollower[j];
        FollowRecord localFollowRecord = new FollowRecord();
        localFollowRecord.setUserId(localUser.getId());
        localFollowRecord.setFollowedId(localFollower.get_id());
        localFollowRecord.save();
      }
      ActiveAndroid.setTransactionSuccessful();
      return;
    }
    finally
    {
      ActiveAndroid.endTransaction();
    }
    throw localObject;
  }

  public String getFollowedId()
  {
    return this.followedId;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setFollowedId(String paramString)
  {
    this.followedId = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.db.FollowRecord
 * JD-Core Version:    0.6.0
 */