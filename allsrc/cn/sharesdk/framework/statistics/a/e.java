package cn.sharesdk.framework.statistics.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.util.ArrayList;

public class e
{
  public static int a = 0;
  public static int b = 1;
  public static int c = 2;

  public static long a(Context paramContext, String paramString, long paramLong)
  {
    monitorenter;
    if (paramString != null);
    try
    {
      String str = paramString.trim();
      long l1;
      if (str == "")
        l1 = -1L;
      while (true)
      {
        return l1;
        b localb = b.a(paramContext);
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("post_time", Long.valueOf(paramLong));
        localContentValues.put("message_data", paramString.toString());
        long l2 = localb.a("message", localContentValues);
        l1 = l2;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static long a(Context paramContext, ArrayList<String> paramArrayList)
  {
    monitorenter;
    long l;
    if (paramArrayList == null)
      l = 0L;
    while (true)
    {
      monitorexit;
      return l;
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        for (int i = 0; i < paramArrayList.size(); i++)
        {
          localStringBuilder.append("'");
          localStringBuilder.append((String)paramArrayList.get(i));
          localStringBuilder.append("'");
          localStringBuilder.append(",");
        }
        String str = localStringBuilder.toString().substring(0, -1 + localStringBuilder.length());
        int j = b.a(paramContext).a("message", "_id in ( " + str + " )", null);
        com.mob.tools.log.d locald = cn.sharesdk.framework.utils.d.a();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(j);
        locald.i("delete COUNT == %s", arrayOfObject);
        l = j;
        continue;
      }
      finally
      {
        monitorexit;
      }
    }
    throw localObject;
  }

  public static ArrayList<d> a(Context paramContext)
  {
    monitorenter;
    try
    {
      ArrayList localArrayList2;
      if (b.a(paramContext).a("message") > 0)
        localArrayList2 = a(paramContext, null, null);
      for (ArrayList localArrayList1 = localArrayList2; ; localArrayList1 = new ArrayList())
        return localArrayList1;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static ArrayList<d> a(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    monitorenter;
    ArrayList localArrayList;
    Cursor localCursor;
    StringBuilder localStringBuilder2;
    d locald2;
    while (true)
    {
      try
      {
        localArrayList = new ArrayList();
        d locald1 = new d();
        StringBuilder localStringBuilder1 = new StringBuilder();
        localCursor = b.a(paramContext).a("message", new String[] { "_id", "post_time", "message_data" }, paramString, paramArrayOfString, null);
        localStringBuilder2 = localStringBuilder1;
        locald2 = locald1;
        if ((localCursor == null) || (!localCursor.moveToNext()))
          break;
        locald2.b.add(localCursor.getString(0));
        if (locald2.b.size() == 100)
        {
          localStringBuilder2.append(localCursor.getString(2));
          locald2.a = localStringBuilder2.toString();
          localArrayList.add(locald2);
          locald2 = new d();
          localStringBuilder2 = new StringBuilder();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      localStringBuilder2.append(localCursor.getString(2) + "\n");
    }
    localCursor.close();
    if (locald2.b.size() != 0)
    {
      locald2.a = localStringBuilder2.toString().substring(0, -1 + localStringBuilder2.length());
      localArrayList.add(locald2);
    }
    monitorexit;
    return localArrayList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.a.e
 * JD-Core Version:    0.6.0
 */