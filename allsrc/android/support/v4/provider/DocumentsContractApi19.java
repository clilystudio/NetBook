package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;

class DocumentsContractApi19
{
  private static final String TAG = "DocumentFile";

  public static boolean canRead(Context paramContext, Uri paramUri)
  {
    if (paramContext.checkCallingOrSelfUriPermission(paramUri, 1) != 0);
    do
      return false;
    while (TextUtils.isEmpty(getRawType(paramContext, paramUri)));
    return true;
  }

  public static boolean canWrite(Context paramContext, Uri paramUri)
  {
    if (paramContext.checkCallingOrSelfUriPermission(paramUri, 2) != 0);
    String str;
    int i;
    do
    {
      do
      {
        return false;
        str = getRawType(paramContext, paramUri);
        i = queryForInt(paramContext, paramUri, "flags", 0);
      }
      while (TextUtils.isEmpty(str));
      if ((i & 0x4) != 0)
        return true;
      if (("vnd.android.document/directory".equals(str)) && ((i & 0x8) != 0))
        return true;
    }
    while ((TextUtils.isEmpty(str)) || ((i & 0x2) == 0));
    return true;
  }

  private static void closeQuietly(AutoCloseable paramAutoCloseable)
  {
    if (paramAutoCloseable != null);
    try
    {
      paramAutoCloseable.close();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localException)
    {
    }
  }

  public static boolean delete(Context paramContext, Uri paramUri)
  {
    return DocumentsContract.deleteDocument(paramContext.getContentResolver(), paramUri);
  }

  // ERROR //
  public static boolean exists(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 61	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_2
    //   5: aload_2
    //   6: aload_1
    //   7: iconst_1
    //   8: anewarray 41	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: ldc 70
    //   15: aastore
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: invokevirtual 76	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore 7
    //   24: aload 7
    //   26: astore 4
    //   28: aload 4
    //   30: invokeinterface 82 1 0
    //   35: istore 8
    //   37: iload 8
    //   39: ifle +14 -> 53
    //   42: iconst_1
    //   43: istore 9
    //   45: aload 4
    //   47: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   50: iload 9
    //   52: ireturn
    //   53: iconst_0
    //   54: istore 9
    //   56: goto -11 -> 45
    //   59: astore 5
    //   61: aconst_null
    //   62: astore 4
    //   64: ldc 8
    //   66: new 86	java/lang/StringBuilder
    //   69: dup
    //   70: ldc 88
    //   72: invokespecial 91	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload 5
    //   77: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokestatic 105	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   86: pop
    //   87: aload 4
    //   89: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   92: iconst_0
    //   93: ireturn
    //   94: astore_3
    //   95: aconst_null
    //   96: astore 4
    //   98: aload 4
    //   100: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   103: aload_3
    //   104: athrow
    //   105: astore_3
    //   106: goto -8 -> 98
    //   109: astore 5
    //   111: goto -47 -> 64
    //
    // Exception table:
    //   from	to	target	type
    //   5	24	59	java/lang/Exception
    //   5	24	94	finally
    //   28	37	105	finally
    //   64	87	105	finally
    //   28	37	109	java/lang/Exception
  }

  public static String getName(Context paramContext, Uri paramUri)
  {
    return queryForString(paramContext, paramUri, "_display_name", null);
  }

  private static String getRawType(Context paramContext, Uri paramUri)
  {
    return queryForString(paramContext, paramUri, "mime_type", null);
  }

  public static String getType(Context paramContext, Uri paramUri)
  {
    String str = getRawType(paramContext, paramUri);
    if ("vnd.android.document/directory".equals(str))
      str = null;
    return str;
  }

  public static boolean isDirectory(Context paramContext, Uri paramUri)
  {
    return "vnd.android.document/directory".equals(getRawType(paramContext, paramUri));
  }

  public static boolean isDocumentUri(Context paramContext, Uri paramUri)
  {
    return DocumentsContract.isDocumentUri(paramContext, paramUri);
  }

  public static boolean isFile(Context paramContext, Uri paramUri)
  {
    String str = getRawType(paramContext, paramUri);
    return (!"vnd.android.document/directory".equals(str)) && (!TextUtils.isEmpty(str));
  }

  public static long lastModified(Context paramContext, Uri paramUri)
  {
    return queryForLong(paramContext, paramUri, "last_modified", 0L);
  }

  public static long length(Context paramContext, Uri paramUri)
  {
    return queryForLong(paramContext, paramUri, "_size", 0L);
  }

  private static int queryForInt(Context paramContext, Uri paramUri, String paramString, int paramInt)
  {
    return (int)queryForLong(paramContext, paramUri, paramString, paramInt);
  }

  // ERROR //
  private static long queryForLong(Context paramContext, Uri paramUri, String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 61	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 5
    //   6: aload 5
    //   8: aload_1
    //   9: iconst_1
    //   10: anewarray 41	java/lang/String
    //   13: dup
    //   14: iconst_0
    //   15: aload_2
    //   16: aastore
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 76	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore 10
    //   25: aload 10
    //   27: astore 7
    //   29: aload 7
    //   31: invokeinterface 135 1 0
    //   36: ifeq +32 -> 68
    //   39: aload 7
    //   41: iconst_0
    //   42: invokeinterface 139 2 0
    //   47: ifne +21 -> 68
    //   50: aload 7
    //   52: iconst_0
    //   53: invokeinterface 143 2 0
    //   58: lstore 11
    //   60: aload 7
    //   62: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   65: lload 11
    //   67: lreturn
    //   68: aload 7
    //   70: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   73: lload_3
    //   74: lreturn
    //   75: astore 8
    //   77: aconst_null
    //   78: astore 7
    //   80: ldc 8
    //   82: new 86	java/lang/StringBuilder
    //   85: dup
    //   86: ldc 88
    //   88: invokespecial 91	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: aload 8
    //   93: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokestatic 105	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   102: pop
    //   103: aload 7
    //   105: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   108: lload_3
    //   109: lreturn
    //   110: astore 6
    //   112: aconst_null
    //   113: astore 7
    //   115: aload 7
    //   117: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   120: aload 6
    //   122: athrow
    //   123: astore 6
    //   125: goto -10 -> 115
    //   128: astore 8
    //   130: goto -50 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   6	25	75	java/lang/Exception
    //   6	25	110	finally
    //   29	60	123	finally
    //   80	103	123	finally
    //   29	60	128	java/lang/Exception
  }

  // ERROR //
  private static String queryForString(Context paramContext, Uri paramUri, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 61	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 4
    //   6: aload 4
    //   8: aload_1
    //   9: iconst_1
    //   10: anewarray 41	java/lang/String
    //   13: dup
    //   14: iconst_0
    //   15: aload_2
    //   16: aastore
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 76	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore 9
    //   25: aload 9
    //   27: astore 6
    //   29: aload 6
    //   31: invokeinterface 135 1 0
    //   36: ifeq +32 -> 68
    //   39: aload 6
    //   41: iconst_0
    //   42: invokeinterface 139 2 0
    //   47: ifne +21 -> 68
    //   50: aload 6
    //   52: iconst_0
    //   53: invokeinterface 147 2 0
    //   58: astore 10
    //   60: aload 6
    //   62: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   65: aload 10
    //   67: areturn
    //   68: aload 6
    //   70: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   73: aload_3
    //   74: areturn
    //   75: astore 7
    //   77: aconst_null
    //   78: astore 6
    //   80: ldc 8
    //   82: new 86	java/lang/StringBuilder
    //   85: dup
    //   86: ldc 88
    //   88: invokespecial 91	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: aload 7
    //   93: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokestatic 105	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   102: pop
    //   103: aload 6
    //   105: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   108: aload_3
    //   109: areturn
    //   110: astore 5
    //   112: aconst_null
    //   113: astore 6
    //   115: aload 6
    //   117: invokestatic 84	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   120: aload 5
    //   122: athrow
    //   123: astore 5
    //   125: goto -10 -> 115
    //   128: astore 7
    //   130: goto -50 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   6	25	75	java/lang/Exception
    //   6	25	110	finally
    //   29	60	123	finally
    //   80	103	123	finally
    //   29	60	128	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.provider.DocumentsContractApi19
 * JD-Core Version:    0.6.0
 */