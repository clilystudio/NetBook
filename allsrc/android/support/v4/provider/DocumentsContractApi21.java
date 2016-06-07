package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;

class DocumentsContractApi21
{
  private static final String TAG = "DocumentFile";

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

  public static Uri createDirectory(Context paramContext, Uri paramUri, String paramString)
  {
    return createFile(paramContext, paramUri, "vnd.android.document/directory", paramString);
  }

  public static Uri createFile(Context paramContext, Uri paramUri, String paramString1, String paramString2)
  {
    return DocumentsContract.createDocument(paramContext.getContentResolver(), paramUri, paramString1, paramString2);
  }

  // ERROR //
  public static Uri[] listFiles(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 37	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_2
    //   5: aload_1
    //   6: aload_1
    //   7: invokestatic 49	android/provider/DocumentsContract:getDocumentId	(Landroid/net/Uri;)Ljava/lang/String;
    //   10: invokestatic 53	android/provider/DocumentsContract:buildChildDocumentsUriUsingTree	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   13: astore_3
    //   14: new 55	java/util/ArrayList
    //   17: dup
    //   18: invokespecial 56	java/util/ArrayList:<init>	()V
    //   21: astore 4
    //   23: aload_2
    //   24: aload_3
    //   25: iconst_1
    //   26: anewarray 58	java/lang/String
    //   29: dup
    //   30: iconst_0
    //   31: ldc 60
    //   33: aastore
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: invokevirtual 66	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   40: astore 9
    //   42: aload 9
    //   44: astore 6
    //   46: aload 6
    //   48: invokeinterface 72 1 0
    //   53: ifeq +71 -> 124
    //   56: aload 4
    //   58: aload_1
    //   59: aload 6
    //   61: iconst_0
    //   62: invokeinterface 76 2 0
    //   67: invokestatic 79	android/provider/DocumentsContract:buildDocumentUriUsingTree	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   70: invokevirtual 83	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   73: pop
    //   74: goto -28 -> 46
    //   77: astore 5
    //   79: ldc 8
    //   81: new 85	java/lang/StringBuilder
    //   84: dup
    //   85: ldc 87
    //   87: invokespecial 90	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload 5
    //   92: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 104	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: aload 6
    //   104: invokestatic 106	android/support/v4/provider/DocumentsContractApi21:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   107: aload 4
    //   109: aload 4
    //   111: invokevirtual 110	java/util/ArrayList:size	()I
    //   114: anewarray 112	android/net/Uri
    //   117: invokevirtual 116	java/util/ArrayList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   120: checkcast 118	[Landroid/net/Uri;
    //   123: areturn
    //   124: aload 6
    //   126: invokestatic 106	android/support/v4/provider/DocumentsContractApi21:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   129: goto -22 -> 107
    //   132: astore 7
    //   134: aconst_null
    //   135: astore 6
    //   137: aload 6
    //   139: invokestatic 106	android/support/v4/provider/DocumentsContractApi21:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   142: aload 7
    //   144: athrow
    //   145: astore 7
    //   147: goto -10 -> 137
    //   150: astore 5
    //   152: aconst_null
    //   153: astore 6
    //   155: goto -76 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   46	74	77	java/lang/Exception
    //   23	42	132	finally
    //   46	74	145	finally
    //   79	102	145	finally
    //   23	42	150	java/lang/Exception
  }

  public static Uri prepareTreeUri(Uri paramUri)
  {
    return DocumentsContract.buildDocumentUriUsingTree(paramUri, DocumentsContract.getTreeDocumentId(paramUri));
  }

  public static Uri renameTo(Context paramContext, Uri paramUri, String paramString)
  {
    return DocumentsContract.renameDocument(paramContext.getContentResolver(), paramUri, paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.provider.DocumentsContractApi21
 * JD-Core Version:    0.6.0
 */