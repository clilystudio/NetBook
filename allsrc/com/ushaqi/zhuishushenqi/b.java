package com.ushaqi.zhuishushenqi;

import android.content.Context;
import java.util.Properties;

public final class b
{
  private static b b;
  private Context a;

  public static b a(Context paramContext)
  {
    if (b == null)
    {
      b localb = new b();
      b = localb;
      localb.a = paramContext;
    }
    return b;
  }

  // ERROR //
  private void b(Properties paramProperties)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 23	java/io/FileOutputStream
    //   5: dup
    //   6: new 25	java/io/File
    //   9: dup
    //   10: aload_0
    //   11: getfield 18	com/ushaqi/zhuishushenqi/b:a	Landroid/content/Context;
    //   14: ldc 27
    //   16: iconst_0
    //   17: invokevirtual 33	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   20: ldc 27
    //   22: invokespecial 36	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   25: invokespecial 39	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   28: astore_3
    //   29: aload_1
    //   30: aload_3
    //   31: aconst_null
    //   32: invokevirtual 45	java/util/Properties:store	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   35: aload_3
    //   36: invokevirtual 48	java/io/FileOutputStream:flush	()V
    //   39: aload_3
    //   40: invokevirtual 51	java/io/FileOutputStream:close	()V
    //   43: return
    //   44: astore 4
    //   46: aconst_null
    //   47: astore_3
    //   48: aload 4
    //   50: invokevirtual 54	java/lang/Exception:printStackTrace	()V
    //   53: aload_3
    //   54: ifnull -11 -> 43
    //   57: aload_3
    //   58: invokevirtual 51	java/io/FileOutputStream:close	()V
    //   61: return
    //   62: astore 7
    //   64: return
    //   65: astore 5
    //   67: aload_2
    //   68: ifnull +7 -> 75
    //   71: aload_2
    //   72: invokevirtual 51	java/io/FileOutputStream:close	()V
    //   75: aload 5
    //   77: athrow
    //   78: astore 8
    //   80: return
    //   81: astore 6
    //   83: goto -8 -> 75
    //   86: astore 5
    //   88: aload_3
    //   89: astore_2
    //   90: goto -23 -> 67
    //   93: astore 4
    //   95: goto -47 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   2	29	44	java/lang/Exception
    //   57	61	62	java/lang/Exception
    //   2	29	65	finally
    //   39	43	78	java/lang/Exception
    //   71	75	81	java/lang/Exception
    //   29	39	86	finally
    //   48	53	86	finally
    //   29	39	93	java/lang/Exception
  }

  // ERROR //
  public final Properties a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 41	java/util/Properties
    //   5: dup
    //   6: invokespecial 56	java/util/Properties:<init>	()V
    //   9: astore_2
    //   10: aload_0
    //   11: getfield 18	com/ushaqi/zhuishushenqi/b:a	Landroid/content/Context;
    //   14: ldc 27
    //   16: iconst_0
    //   17: invokevirtual 33	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   20: astore 8
    //   22: new 58	java/io/FileInputStream
    //   25: dup
    //   26: new 60	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   33: aload 8
    //   35: invokevirtual 65	java/io/File:getPath	()Ljava/lang/String;
    //   38: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: getstatic 73	java/io/File:separator	Ljava/lang/String;
    //   44: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 27
    //   49: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 79	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   58: astore 6
    //   60: aload_2
    //   61: aload 6
    //   63: invokevirtual 83	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   66: aload 6
    //   68: invokevirtual 84	java/io/FileInputStream:close	()V
    //   71: aload_2
    //   72: areturn
    //   73: astore 5
    //   75: aconst_null
    //   76: astore 6
    //   78: aload 6
    //   80: ifnull -9 -> 71
    //   83: aload 6
    //   85: invokevirtual 84	java/io/FileInputStream:close	()V
    //   88: aload_2
    //   89: areturn
    //   90: astore 7
    //   92: aload_2
    //   93: areturn
    //   94: astore_3
    //   95: aload_1
    //   96: ifnull +7 -> 103
    //   99: aload_1
    //   100: invokevirtual 84	java/io/FileInputStream:close	()V
    //   103: aload_3
    //   104: athrow
    //   105: astore 11
    //   107: aload_2
    //   108: areturn
    //   109: astore 4
    //   111: goto -8 -> 103
    //   114: astore 10
    //   116: aload 6
    //   118: astore_1
    //   119: aload 10
    //   121: astore_3
    //   122: goto -27 -> 95
    //   125: astore 9
    //   127: goto -49 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   10	60	73	java/lang/Exception
    //   83	88	90	java/lang/Exception
    //   10	60	94	finally
    //   66	71	105	java/lang/Exception
    //   99	103	109	java/lang/Exception
    //   60	66	114	finally
    //   60	66	125	java/lang/Exception
  }

  public final void a(String paramString1, String paramString2)
  {
    Properties localProperties = a();
    localProperties.setProperty(paramString1, paramString2);
    b(localProperties);
  }

  public final void a(Properties paramProperties)
  {
    Properties localProperties = a();
    localProperties.putAll(paramProperties);
    b(localProperties);
  }

  public final void a(String[] paramArrayOfString)
  {
    Properties localProperties = a();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      localProperties.remove(paramArrayOfString[j]);
    b(localProperties);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.b
 * JD-Core Version:    0.6.0
 */