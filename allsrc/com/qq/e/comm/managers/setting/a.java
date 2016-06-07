package com.qq.e.comm.managers.setting;

import android.content.Context;
import android.util.Base64;
import android.util.Pair;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private JSONObject a = new JSONObject();

  public a()
  {
  }

  public a(String paramString)
  {
    this();
    GDTLogger.d("Initialize GDTAPPSetting,Json=" + paramString);
    if (!StringUtil.isEmpty(paramString));
    try
    {
      this.a = new JSONObject(paramString);
      return;
    }
    catch (JSONException localJSONException)
    {
      GDTLogger.e("JsonException While build GDTAPPSetting Instance from JSON", localJSONException);
    }
  }

  private static Pair<String, String> a(Context paramContext, String paramString)
  {
    File localFile1 = paramContext.getDir("e_qq_com_setting", 0);
    if (localFile1.exists())
    {
      File localFile2 = new File(localFile1, paramString + ".sig");
      File localFile3 = new File(localFile1, paramString + ".cfg");
      if ((!localFile2.exists()) || (!localFile3.exists()))
        return null;
      try
      {
        Pair localPair = new Pair(StringUtil.readAll(localFile2), StringUtil.readAll(localFile3));
        return localPair;
      }
      catch (IOException localIOException)
      {
        return null;
      }
    }
    return null;
  }

  public static com.qq.e.comm.a a(Context paramContext)
  {
    Pair localPair = a(paramContext, "devCloudSetting");
    if (localPair == null)
      return null;
    try
    {
      if (com.qq.e.comm.util.a.a().a((String)localPair.first, (String)localPair.second))
        return new com.qq.e.comm.a((String)localPair.first, new a(new String(Base64.decode((String)localPair.second, 0), "UTF-8")));
      GDTLogger.e("verify local dev cloud setting fail");
      return null;
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.e("exception while loading local dev cloud setting", localThrowable);
    }
    return null;
  }

  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, "sdkCloudSetting", paramString1, paramString2);
  }

  private static boolean a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((!StringUtil.isEmpty(paramString2)) && (!StringUtil.isEmpty(paramString3)))
    {
      if (com.qq.e.comm.util.a.a().a(paramString2, paramString3))
        return b(paramContext, paramString1, paramString2, paramString3);
      GDTLogger.e(String.format("Fail to update Cloud setting due to sig verify fail,name=%s\tsig=%s\tsetting=%s", new Object[] { paramString1, paramString2, paramString3 }));
      return false;
    }
    GDTLogger.e(String.format("Fail to update Cloud setting due to sig or setting is empty,name=%s\tsig=%s\tsetting=%s", new Object[] { paramString1, paramString2, paramString3 }));
    return false;
  }

  public static d b(Context paramContext)
  {
    Pair localPair = a(paramContext, "sdkCloudSetting");
    if (localPair == null)
      return null;
    try
    {
      if (com.qq.e.comm.util.a.a().a((String)localPair.first, (String)localPair.second))
        return new d((String)localPair.first, new c(new String(Base64.decode((String)localPair.second, 0), "UTF-8")), 0);
      GDTLogger.e("verify local sdk cloud setting fail");
      return null;
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.e("exception while loading local sdk cloud setting", localThrowable);
    }
    return null;
  }

  public static boolean b(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, "devCloudSetting", paramString1, paramString2);
  }

  // ERROR //
  private static boolean b(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: ldc 56
    //   6: iconst_0
    //   7: invokevirtual 62	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   10: astore 5
    //   12: aload 5
    //   14: invokevirtual 68	java/io/File:exists	()Z
    //   17: ifne +9 -> 26
    //   20: aload 5
    //   22: invokevirtual 167	java/io/File:mkdirs	()Z
    //   25: pop
    //   26: new 64	java/io/File
    //   29: dup
    //   30: aload 5
    //   32: new 21	java/lang/StringBuilder
    //   35: dup
    //   36: invokespecial 69	java/lang/StringBuilder:<init>	()V
    //   39: aload_1
    //   40: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc 76
    //   45: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 33	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokespecial 74	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   54: astore 6
    //   56: new 64	java/io/File
    //   59: dup
    //   60: aload 5
    //   62: new 21	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 69	java/lang/StringBuilder:<init>	()V
    //   69: aload_1
    //   70: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc 71
    //   75: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 33	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokespecial 74	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   84: astore 7
    //   86: new 169	java/io/FileWriter
    //   89: dup
    //   90: aload 6
    //   92: invokespecial 172	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   95: astore 8
    //   97: aload 8
    //   99: aload_3
    //   100: invokevirtual 175	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   103: new 169	java/io/FileWriter
    //   106: dup
    //   107: aload 7
    //   109: invokespecial 172	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   112: astore 10
    //   114: aload 10
    //   116: aload_2
    //   117: invokevirtual 175	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   120: aload 8
    //   122: invokevirtual 178	java/io/FileWriter:close	()V
    //   125: aload 10
    //   127: invokevirtual 178	java/io/FileWriter:close	()V
    //   130: iconst_1
    //   131: istore 15
    //   133: iload 15
    //   135: ireturn
    //   136: astore 19
    //   138: aconst_null
    //   139: astore 10
    //   141: aload 6
    //   143: invokevirtual 181	java/io/File:delete	()Z
    //   146: pop
    //   147: aload 7
    //   149: invokevirtual 181	java/io/File:delete	()Z
    //   152: pop
    //   153: aload 4
    //   155: ifnull +8 -> 163
    //   158: aload 4
    //   160: invokevirtual 178	java/io/FileWriter:close	()V
    //   163: iconst_0
    //   164: istore 15
    //   166: aload 10
    //   168: ifnull -35 -> 133
    //   171: aload 10
    //   173: invokevirtual 178	java/io/FileWriter:close	()V
    //   176: iconst_0
    //   177: ireturn
    //   178: astore 16
    //   180: iconst_0
    //   181: ireturn
    //   182: astore 11
    //   184: aconst_null
    //   185: astore 8
    //   187: aload 8
    //   189: ifnull +8 -> 197
    //   192: aload 8
    //   194: invokevirtual 178	java/io/FileWriter:close	()V
    //   197: aload 4
    //   199: ifnull +8 -> 207
    //   202: aload 4
    //   204: invokevirtual 178	java/io/FileWriter:close	()V
    //   207: aload 11
    //   209: athrow
    //   210: astore 12
    //   212: goto -5 -> 207
    //   215: astore 11
    //   217: aconst_null
    //   218: astore 4
    //   220: goto -33 -> 187
    //   223: astore 11
    //   225: aload 10
    //   227: astore 4
    //   229: goto -42 -> 187
    //   232: astore 11
    //   234: aload 4
    //   236: astore 8
    //   238: aload 10
    //   240: astore 4
    //   242: goto -55 -> 187
    //   245: astore 9
    //   247: aload 8
    //   249: astore 4
    //   251: aconst_null
    //   252: astore 10
    //   254: goto -113 -> 141
    //   257: astore 17
    //   259: aload 8
    //   261: astore 4
    //   263: goto -122 -> 141
    //   266: astore 18
    //   268: goto -138 -> 130
    //
    // Exception table:
    //   from	to	target	type
    //   86	97	136	java/lang/Exception
    //   158	163	178	java/lang/Exception
    //   171	176	178	java/lang/Exception
    //   86	97	182	finally
    //   192	197	210	java/lang/Exception
    //   202	207	210	java/lang/Exception
    //   97	114	215	finally
    //   114	120	223	finally
    //   141	153	232	finally
    //   97	114	245	java/lang/Exception
    //   114	120	257	java/lang/Exception
    //   120	130	266	java/lang/Exception
  }

  final Object a(String paramString)
  {
    return this.a.opt(paramString);
  }

  final Object a(String paramString1, String paramString2)
  {
    JSONObject localJSONObject1 = this.a.optJSONObject("ps");
    if (localJSONObject1 != null);
    for (JSONObject localJSONObject2 = localJSONObject1.optJSONObject(paramString2); ; localJSONObject2 = null)
    {
      Object localObject = null;
      if (localJSONObject2 != null)
        localObject = localJSONObject2.opt(paramString1);
      return localObject;
    }
  }

  final void a(String paramString, Object paramObject)
  {
    try
    {
      this.a.putOpt(paramString, paramObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      GDTLogger.e("Exception while update setting", localJSONException);
    }
  }

  final void a(String paramString1, Object paramObject, String paramString2)
  {
    while (true)
    {
      JSONObject localJSONObject1;
      try
      {
        localJSONObject1 = this.a.optJSONObject("ps");
        if (localJSONObject1 == null)
        {
          JSONObject localJSONObject2 = new JSONObject();
          this.a.putOpt("ps", localJSONObject2);
          localJSONObject3 = localJSONObject2;
          if (localJSONObject3 == null)
            break label115;
          localJSONObject4 = localJSONObject3.optJSONObject(paramString2);
          if (localJSONObject4 != null)
            continue;
          localJSONObject4 = new JSONObject();
          localJSONObject3.putOpt(paramString2, localJSONObject4);
          if (paramObject != null)
            continue;
          localJSONObject4.remove(paramString1);
          return;
          localJSONObject4.putOpt(paramString1, paramObject);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        GDTLogger.e("Exception while update setting", localJSONException);
        return;
      }
      JSONObject localJSONObject3 = localJSONObject1;
      continue;
      label115: JSONObject localJSONObject4 = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.setting.a
 * JD-Core Version:    0.6.0
 */