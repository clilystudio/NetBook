package com.ushaqi.zhuishushenqi.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

@Table(name="TweetCache")
public class TweetCache extends Model
{
  public static final String HOT_USER_ID = "zhuishushenqi_hot_user_id";
  public static final int TYPE_HOT = 2;
  public static final int TYPE_MY = 3;
  public static final int TYPE_TIMELINE = 1;

  @Column(name="content")
  private String content;

  @Column(name="type")
  private int type;

  @Column(name="userId")
  private String userId;

  public static void clear(String paramString)
  {
    new Delete().from(TweetCache.class).where(" userId = ? ", new Object[] { paramString }).execute();
  }

  public static void delete(String paramString, int paramInt)
  {
    From localFrom = new Delete().from(TweetCache.class);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    localFrom.where(" userId = ? and type = ?", arrayOfObject).execute();
  }

  public static List<TweetCache> find(String paramString, int paramInt)
  {
    From localFrom = new Select().from(TweetCache.class);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    return localFrom.where(" userId = ? and type = ? ", arrayOfObject).orderBy(" id ").execute();
  }

  public static void save2DB(String paramString1, int paramInt, String paramString2)
  {
    TweetCache localTweetCache = new TweetCache();
    localTweetCache.setUserId(paramString1);
    localTweetCache.setType(paramInt);
    localTweetCache.setContent(paramString2);
    localTweetCache.save();
  }

  public String getContent()
  {
    return this.content;
  }

  public int getType()
  {
    return this.type;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.db.TweetCache
 * JD-Core Version:    0.6.0
 */