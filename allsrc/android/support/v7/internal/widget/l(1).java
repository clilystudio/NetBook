package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.support.v4.os.AsyncTaskCompat;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class l extends DataSetObservable
{
  private static final String a = l.class.getSimpleName();
  private static final Object b = new Object();
  private static final Map<String, l> c = new HashMap();
  private final Object d = new Object();
  private final List<m> e = new ArrayList();
  private final List<p> f = new ArrayList();
  private final Context g;
  private final String h;
  private n i = new o(this, 0);
  private int j = 50;
  private boolean k = true;
  private boolean l = false;
  private boolean m = true;
  private boolean n = false;

  private l(Context paramContext, String paramString)
  {
    this.g = paramContext.getApplicationContext();
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.endsWith(".xml")))
    {
      this.h = (paramString + ".xml");
      return;
    }
    this.h = paramString;
  }

  public static l a(Context paramContext, String paramString)
  {
    synchronized (b)
    {
      l locall = (l)c.get(paramString);
      if (locall == null)
      {
        locall = new l(paramContext, paramString);
        c.put(paramString, locall);
      }
      return locall;
    }
  }

  private void e()
  {
    boolean bool = true;
    if ((this.k) && (this.m) && (!TextUtils.isEmpty(this.h)))
    {
      this.k = false;
      this.l = bool;
      g();
    }
    while (true)
    {
      int i1 = bool | false;
      f();
      if (i1 != 0)
        notifyChanged();
      return;
      bool = false;
    }
  }

  private void f()
  {
    int i1 = this.f.size() - this.j;
    if (i1 <= 0);
    while (true)
    {
      return;
      this.m = true;
      for (int i2 = 0; i2 < i1; i2++)
        this.f.remove(0);
    }
  }

  // ERROR //
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 87	android/support/v7/internal/widget/l:g	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 113	android/support/v7/internal/widget/l:h	Ljava/lang/String;
    //   8: invokevirtual 156	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 162	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore 11
    //   17: aload 11
    //   19: aload_2
    //   20: aconst_null
    //   21: invokeinterface 168 3 0
    //   26: iconst_0
    //   27: istore 12
    //   29: iload 12
    //   31: iconst_1
    //   32: if_icmpeq +21 -> 53
    //   35: iload 12
    //   37: iconst_2
    //   38: if_icmpeq +15 -> 53
    //   41: aload 11
    //   43: invokeinterface 171 1 0
    //   48: istore 12
    //   50: goto -21 -> 29
    //   53: ldc 173
    //   55: aload 11
    //   57: invokeinterface 176 1 0
    //   62: invokevirtual 180	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   65: ifne +52 -> 117
    //   68: new 150	org/xmlpull/v1/XmlPullParserException
    //   71: dup
    //   72: ldc 182
    //   74: invokespecial 185	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   77: athrow
    //   78: astore 8
    //   80: getstatic 39	android/support/v7/internal/widget/l:a	Ljava/lang/String;
    //   83: new 103	java/lang/StringBuilder
    //   86: dup
    //   87: ldc 187
    //   89: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: aload_0
    //   93: getfield 113	android/support/v7/internal/widget/l:h	Ljava/lang/String;
    //   96: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: aload 8
    //   104: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   107: pop
    //   108: aload_2
    //   109: ifnull +7 -> 116
    //   112: aload_2
    //   113: invokevirtual 198	java/io/FileInputStream:close	()V
    //   116: return
    //   117: aload_0
    //   118: getfield 62	android/support/v7/internal/widget/l:f	Ljava/util/List;
    //   121: astore 13
    //   123: aload 13
    //   125: invokeinterface 201 1 0
    //   130: aload 11
    //   132: invokeinterface 171 1 0
    //   137: istore 14
    //   139: iload 14
    //   141: iconst_1
    //   142: if_icmpeq +147 -> 289
    //   145: iload 14
    //   147: iconst_3
    //   148: if_icmpeq -18 -> 130
    //   151: iload 14
    //   153: iconst_4
    //   154: if_icmpeq -24 -> 130
    //   157: ldc 203
    //   159: aload 11
    //   161: invokeinterface 176 1 0
    //   166: invokevirtual 180	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   169: ifne +55 -> 224
    //   172: new 150	org/xmlpull/v1/XmlPullParserException
    //   175: dup
    //   176: ldc 205
    //   178: invokespecial 185	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   181: athrow
    //   182: astore 5
    //   184: getstatic 39	android/support/v7/internal/widget/l:a	Ljava/lang/String;
    //   187: new 103	java/lang/StringBuilder
    //   190: dup
    //   191: ldc 187
    //   193: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   196: aload_0
    //   197: getfield 113	android/support/v7/internal/widget/l:h	Ljava/lang/String;
    //   200: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: aload 5
    //   208: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   211: pop
    //   212: aload_2
    //   213: ifnull -97 -> 116
    //   216: aload_2
    //   217: invokevirtual 198	java/io/FileInputStream:close	()V
    //   220: return
    //   221: astore 7
    //   223: return
    //   224: aload 13
    //   226: new 207	android/support/v7/internal/widget/p
    //   229: dup
    //   230: aload 11
    //   232: aconst_null
    //   233: ldc 209
    //   235: invokeinterface 213 3 0
    //   240: aload 11
    //   242: aconst_null
    //   243: ldc 215
    //   245: invokeinterface 213 3 0
    //   250: invokestatic 221	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   253: aload 11
    //   255: aconst_null
    //   256: ldc 223
    //   258: invokeinterface 213 3 0
    //   263: invokestatic 229	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   266: invokespecial 232	android/support/v7/internal/widget/p:<init>	(Ljava/lang/String;JF)V
    //   269: invokeinterface 235 2 0
    //   274: pop
    //   275: goto -145 -> 130
    //   278: astore_3
    //   279: aload_2
    //   280: ifnull +7 -> 287
    //   283: aload_2
    //   284: invokevirtual 198	java/io/FileInputStream:close	()V
    //   287: aload_3
    //   288: athrow
    //   289: aload_2
    //   290: ifnull -174 -> 116
    //   293: aload_2
    //   294: invokevirtual 198	java/io/FileInputStream:close	()V
    //   297: return
    //   298: astore 15
    //   300: return
    //   301: astore 10
    //   303: return
    //   304: astore 4
    //   306: goto -19 -> 287
    //   309: astore_1
    //   310: return
    //
    // Exception table:
    //   from	to	target	type
    //   12	26	78	org/xmlpull/v1/XmlPullParserException
    //   41	50	78	org/xmlpull/v1/XmlPullParserException
    //   53	78	78	org/xmlpull/v1/XmlPullParserException
    //   117	130	78	org/xmlpull/v1/XmlPullParserException
    //   130	139	78	org/xmlpull/v1/XmlPullParserException
    //   157	182	78	org/xmlpull/v1/XmlPullParserException
    //   224	275	78	org/xmlpull/v1/XmlPullParserException
    //   12	26	182	java/io/IOException
    //   41	50	182	java/io/IOException
    //   53	78	182	java/io/IOException
    //   117	130	182	java/io/IOException
    //   130	139	182	java/io/IOException
    //   157	182	182	java/io/IOException
    //   224	275	182	java/io/IOException
    //   216	220	221	java/io/IOException
    //   12	26	278	finally
    //   41	50	278	finally
    //   53	78	278	finally
    //   80	108	278	finally
    //   117	130	278	finally
    //   130	139	278	finally
    //   157	182	278	finally
    //   184	212	278	finally
    //   224	275	278	finally
    //   293	297	298	java/io/IOException
    //   112	116	301	java/io/IOException
    //   283	287	304	java/io/IOException
    //   0	12	309	java/io/FileNotFoundException
  }

  public final int a()
  {
    synchronized (this.d)
    {
      e();
      int i1 = this.e.size();
      return i1;
    }
  }

  public final int a(ResolveInfo paramResolveInfo)
  {
    while (true)
    {
      int i2;
      synchronized (this.d)
      {
        e();
        List localList = this.e;
        int i1 = localList.size();
        i2 = 0;
        if (i2 >= i1)
          continue;
        if (((m)localList.get(i2)).a == paramResolveInfo)
        {
          return i2;
          return -1;
        }
      }
      i2++;
    }
  }

  public final ResolveInfo a(int paramInt)
  {
    synchronized (this.d)
    {
      e();
      ResolveInfo localResolveInfo = ((m)this.e.get(paramInt)).a;
      return localResolveInfo;
    }
  }

  public final Intent b(int paramInt)
  {
    synchronized (this.d)
    {
      return null;
    }
  }

  public final ResolveInfo b()
  {
    synchronized (this.d)
    {
      e();
      if (!this.e.isEmpty())
      {
        ResolveInfo localResolveInfo = ((m)this.e.get(0)).a;
        return localResolveInfo;
      }
      return null;
    }
  }

  public final int c()
  {
    synchronized (this.d)
    {
      e();
      int i1 = this.f.size();
      return i1;
    }
  }

  public final void c(int paramInt)
  {
    while (true)
    {
      synchronized (this.d)
      {
        e();
        m localm1 = (m)this.e.get(paramInt);
        m localm2 = (m)this.e.get(0);
        if (localm2 != null)
        {
          f1 = 5.0F + (localm2.b - localm1.b);
          p localp = new p(new ComponentName(localm1.a.activityInfo.packageName, localm1.a.activityInfo.name), System.currentTimeMillis(), f1);
          if (!this.f.add(localp))
            break;
          this.m = true;
          f();
          if (this.l)
            break label157;
          throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
      }
      float f1 = 1.0F;
      continue;
      label157: if (this.m)
      {
        this.m = false;
        if (!TextUtils.isEmpty(this.h))
        {
          q localq = new q(this, 0);
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = this.f;
          arrayOfObject[1] = this.h;
          AsyncTaskCompat.executeParallel(localq, arrayOfObject);
        }
      }
      notifyChanged();
    }
    monitorexit;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.l
 * JD-Core Version:    0.6.0
 */