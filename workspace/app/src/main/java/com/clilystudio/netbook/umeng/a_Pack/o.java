package com.clilystudio.netbook.umeng.a_Pack;

import android.content.Context;
import android.content.SharedPreferences;

import java.io.File;
import u.aly.bs;
import u.aly.bt;
import u.aly.bx;

public final class o
{
  private static o a = new o();
  private static Context b;
  private static String c;
  private static long d = 2097152L;

  public static o a(Context paramContext)
  {
    if (b == null)
      b = paramContext.getApplicationContext();
    if (c == null)
      c = paramContext.getPackageName();
    return a;
  }

  public static void a(int paramInt1, int paramInt2)
  {
    a(b);
    SharedPreferences.Editor localEditor = g().edit();
    localEditor.putInt("umeng_net_report_policy", paramInt1);
    localEditor.putLong("umeng_net_report_interval", paramInt2);
    localEditor.commit();
  }

  public static SharedPreferences g()
  {
    return b.getSharedPreferences("mobclick_agent_online_setting_" + c, 0);
  }

  private static String h()
  {
    return "mobclick_agent_cached_" + c + bs.a(b);
  }

  private static String i()
  {
    return "mobclick_agent_sealed_" + c;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    String str = h();
    try
    {
      bx.a(new File(b.getFilesDir(), str), paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      bt.b("MobclickAgent", localException.getMessage());
    }
  }

  public final int[] a()
  {
    SharedPreferences localSharedPreferences = g();
    int[] arrayOfInt = new int[2];
    if (localSharedPreferences.getInt("umeng_net_report_policy", -1) != -1)
    {
      arrayOfInt[0] = localSharedPreferences.getInt("umeng_net_report_policy", 1);
      arrayOfInt[1] = (int)localSharedPreferences.getLong("umeng_net_report_interval", 0L);
      return arrayOfInt;
    }
    arrayOfInt[0] = localSharedPreferences.getInt("umeng_local_report_policy", 1);
    arrayOfInt[1] = (int)localSharedPreferences.getLong("umeng_local_report_interval", 0L);
    return arrayOfInt;
  }

  public final void b(byte[] paramArrayOfByte)
  {
    try
    {
      bx.a(new File(b.getFilesDir(), i()), paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  // ERROR //
  public final byte[] b()
  {
    // Byte code:
    //   0: invokestatic 104	com/umeng/a/o:h	()Ljava/lang/String;
    //   3: astore_1
    //   4: new 106	java/io/File
    //   7: dup
    //   8: getstatic 27	com/umeng/a/o:b	Landroid/content/Context;
    //   11: invokevirtual 110	android/content/Context:getFilesDir	()Ljava/io/File;
    //   14: aload_1
    //   15: invokespecial 113	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   18: astore_2
    //   19: aload_2
    //   20: invokevirtual 151	java/io/File:length	()J
    //   23: lstore_3
    //   24: aload_2
    //   25: invokevirtual 154	java/io/File:exists	()Z
    //   28: ifeq +26 -> 54
    //   31: lload_3
    //   32: getstatic 23	com/umeng/a/o:d	J
    //   35: lcmp
    //   36: ifle +18 -> 54
    //   39: iconst_1
    //   40: istore 5
    //   42: iload 5
    //   44: ifeq +16 -> 60
    //   47: aload_2
    //   48: invokevirtual 157	java/io/File:delete	()Z
    //   51: pop
    //   52: aconst_null
    //   53: areturn
    //   54: iconst_0
    //   55: istore 5
    //   57: goto -15 -> 42
    //   60: aload_2
    //   61: invokevirtual 154	java/io/File:exists	()Z
    //   64: ifeq -12 -> 52
    //   67: getstatic 27	com/umeng/a/o:b	Landroid/content/Context;
    //   70: aload_1
    //   71: invokevirtual 161	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   74: astore 10
    //   76: aload 10
    //   78: astore 7
    //   80: aload 7
    //   82: invokestatic 164	u/aly/bx:b	(Ljava/io/InputStream;)[B
    //   85: astore 11
    //   87: aload 7
    //   89: invokestatic 167	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   92: aload 11
    //   94: areturn
    //   95: astore 9
    //   97: aconst_null
    //   98: astore 7
    //   100: aload 9
    //   102: invokevirtual 146	java/lang/Exception:printStackTrace	()V
    //   105: aload 7
    //   107: invokestatic 167	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   110: aconst_null
    //   111: areturn
    //   112: astore 6
    //   114: aconst_null
    //   115: astore 7
    //   117: aload 6
    //   119: astore 8
    //   121: aload 7
    //   123: invokestatic 167	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   126: aload 8
    //   128: athrow
    //   129: astore 8
    //   131: goto -10 -> 121
    //   134: astore 9
    //   136: goto -36 -> 100
    //
    // Exception table:
    //   from	to	target	type
    //   67	76	95	java/lang/Exception
    //   67	76	112	finally
    //   80	87	129	finally
    //   100	105	129	finally
    //   80	87	134	java/lang/Exception
  }

  public final void c()
  {
    b.deleteFile("mobclick_agent_header_" + c);
    b.deleteFile(h());
  }

  // ERROR //
  public final byte[] d()
  {
    // Byte code:
    //   0: invokestatic 143	com/umeng/a/o:i	()Ljava/lang/String;
    //   3: astore_1
    //   4: new 106	java/io/File
    //   7: dup
    //   8: getstatic 27	com/umeng/a/o:b	Landroid/content/Context;
    //   11: invokevirtual 110	android/content/Context:getFilesDir	()Ljava/io/File;
    //   14: aload_1
    //   15: invokespecial 113	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   18: astore_2
    //   19: aload_2
    //   20: invokevirtual 154	java/io/File:exists	()Z
    //   23: ifeq +16 -> 39
    //   26: aload_2
    //   27: invokevirtual 151	java/io/File:length	()J
    //   30: lstore 5
    //   32: lload 5
    //   34: lconst_0
    //   35: lcmp
    //   36: ifgt +5 -> 41
    //   39: aconst_null
    //   40: areturn
    //   41: getstatic 27	com/umeng/a/o:b	Landroid/content/Context;
    //   44: aload_1
    //   45: invokevirtual 161	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   48: astore 10
    //   50: aload 10
    //   52: astore 8
    //   54: aload 8
    //   56: invokestatic 164	u/aly/bx:b	(Ljava/io/InputStream;)[B
    //   59: astore 11
    //   61: aload 8
    //   63: invokestatic 167	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   66: aload 11
    //   68: areturn
    //   69: astore_3
    //   70: aload_2
    //   71: invokevirtual 157	java/io/File:delete	()Z
    //   74: pop
    //   75: aload_3
    //   76: invokevirtual 146	java/lang/Exception:printStackTrace	()V
    //   79: aconst_null
    //   80: areturn
    //   81: astore 9
    //   83: aconst_null
    //   84: astore 8
    //   86: aload 9
    //   88: invokevirtual 146	java/lang/Exception:printStackTrace	()V
    //   91: aload 8
    //   93: invokestatic 167	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   96: goto -17 -> 79
    //   99: aload 8
    //   101: invokestatic 167	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   104: aload 7
    //   106: athrow
    //   107: astore 7
    //   109: goto -10 -> 99
    //   112: astore 9
    //   114: goto -28 -> 86
    //   117: astore 7
    //   119: aconst_null
    //   120: astore 8
    //   122: goto -23 -> 99
    //
    // Exception table:
    //   from	to	target	type
    //   19	32	69	java/lang/Exception
    //   61	66	69	java/lang/Exception
    //   91	96	69	java/lang/Exception
    //   99	107	69	java/lang/Exception
    //   41	50	81	java/lang/Exception
    //   54	61	107	finally
    //   86	91	107	finally
    //   54	61	112	java/lang/Exception
    //   41	50	117	finally
  }

  public final void e()
  {
    String str = i();
    boolean bool = b.deleteFile(str);
    bt.a("--->", "delete envelope:" + bool);
  }

  public final boolean f()
  {
    String str = i();
    File localFile = new File(b.getFilesDir(), str);
    return (localFile.exists()) && (localFile.length() > 0L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.a.o
 * JD-Core Version:    0.6.0
 */