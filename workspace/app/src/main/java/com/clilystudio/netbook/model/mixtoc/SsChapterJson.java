package com.clilystudio.netbook.model.mixtoc;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SsChapterJson
{
  // ERROR //
  public static com.clilystudio.netbook.model.ChapterRoot getChapterRoot(String paramString)
  {
    // Byte code:
    //   0: new 14	org/json/JSONArray
    //   3: dup
    //   4: new 16	org/json/JSONObject
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 19	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   12: ldc 21
    //   14: invokevirtual 25	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   17: invokespecial 26	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   20: astore_1
    //   21: aload_1
    //   22: invokevirtual 30	org/json/JSONArray:length	()I
    //   25: ifle +163 -> 188
    //   28: aload_1
    //   29: iconst_0
    //   30: invokevirtual 34	org/json/JSONArray:getJSONArray	(I)Lorg/json/JSONArray;
    //   33: astore 5
    //   35: aload 5
    //   37: ifnull +151 -> 188
    //   40: aload 5
    //   42: invokevirtual 30	org/json/JSONArray:length	()I
    //   45: ifle +143 -> 188
    //   48: aload 5
    //   50: iconst_0
    //   51: invokevirtual 38	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   54: astore 6
    //   56: new 40	com/ushaqi/zhuishushenqi/model/Chapter
    //   59: dup
    //   60: invokespecial 41	com/ushaqi/zhuishushenqi/model/Chapter:<init>	()V
    //   63: astore 7
    //   65: aload 6
    //   67: ldc 43
    //   69: invokevirtual 25	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   72: astore 8
    //   74: aload 8
    //   76: ifnull +88 -> 164
    //   79: aload 8
    //   81: ldc 45
    //   83: ldc 47
    //   85: invokevirtual 53	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   88: astore 9
    //   90: aload 7
    //   92: aload 9
    //   94: invokestatic 58	com/arcsoft/hpay100/a/a:z	(Ljava/lang/String;)Ljava/lang/String;
    //   97: invokevirtual 61	com/ushaqi/zhuishushenqi/model/Chapter:setBody	(Ljava/lang/String;)V
    //   100: aload 6
    //   102: ldc 63
    //   104: invokevirtual 25	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   107: astore 10
    //   109: aload 6
    //   111: ldc 65
    //   113: invokevirtual 25	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   116: astore 11
    //   118: aload 7
    //   120: new 67	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 68	java/lang/StringBuilder:<init>	()V
    //   127: aload 10
    //   129: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc 74
    //   134: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload 11
    //   139: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokevirtual 81	com/ushaqi/zhuishushenqi/model/Chapter:setLink	(Ljava/lang/String;)V
    //   148: new 83	com/ushaqi/zhuishushenqi/model/ChapterRoot
    //   151: dup
    //   152: invokespecial 84	com/ushaqi/zhuishushenqi/model/ChapterRoot:<init>	()V
    //   155: astore_3
    //   156: aload_3
    //   157: aload 7
    //   159: invokevirtual 88	com/ushaqi/zhuishushenqi/model/ChapterRoot:setChapter	(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V
    //   162: aload_3
    //   163: areturn
    //   164: aconst_null
    //   165: astore 9
    //   167: goto -77 -> 90
    //   170: astore_2
    //   171: aconst_null
    //   172: astore_3
    //   173: aload_2
    //   174: astore 4
    //   176: aload 4
    //   178: invokevirtual 91	org/json/JSONException:printStackTrace	()V
    //   181: aload_3
    //   182: areturn
    //   183: astore 4
    //   185: goto -9 -> 176
    //   188: aconst_null
    //   189: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	35	170	org/json/JSONException
    //   40	74	170	org/json/JSONException
    //   79	90	170	org/json/JSONException
    //   90	156	170	org/json/JSONException
    //   156	162	183	org/json/JSONException
  }

  public static String getChapterUrl(String paramString)
  {
    try
    {
      JSONArray localJSONArray1 = new JSONArray(new JSONObject(paramString).getString("rows"));
      int i = localJSONArray1.length();
      Object localObject = null;
      if (i > 0)
      {
        JSONArray localJSONArray2 = localJSONArray1.getJSONArray(0);
        localObject = null;
        if (localJSONArray2 != null)
        {
          int j = localJSONArray2.length();
          localObject = null;
          if (j > 0)
          {
            String str = localJSONArray2.getJSONObject(0).getString("serialurl");
            localObject = str;
          }
        }
      }
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }

  public static int getTocCount(String paramString)
  {
    try
    {
      JSONArray localJSONArray1 = new JSONArray(new JSONObject(paramString).getString("rows"));
      int i = localJSONArray1.length();
      int j = 0;
      if (i > 0)
      {
        JSONArray localJSONArray2 = localJSONArray1.getJSONArray(0);
        j = 0;
        if (localJSONArray2 != null)
        {
          int k = localJSONArray2.length();
          j = 0;
          if (k > 0)
          {
            int m = localJSONArray2.getJSONObject(0).getInt("serialnum");
            j = m;
          }
        }
      }
      return j;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.mixtoc.SsChapterJson
 * JD-Core Version:    0.6.0
 */