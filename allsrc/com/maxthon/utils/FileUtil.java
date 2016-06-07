package com.maxthon.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileUtil
{
  // ERROR //
  public static void copyFile(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 14	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 17	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   10: astore_3
    //   11: new 19	java/io/FileOutputStream
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 20	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   19: astore 4
    //   21: aload_3
    //   22: invokevirtual 24	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   25: astore 12
    //   27: aload 12
    //   29: astore 8
    //   31: aload 4
    //   33: invokevirtual 25	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   36: astore_2
    //   37: aload 8
    //   39: lconst_0
    //   40: aload 8
    //   42: invokevirtual 31	java/nio/channels/FileChannel:size	()J
    //   45: aload_2
    //   46: invokevirtual 35	java/nio/channels/FileChannel:transferTo	(JJLjava/nio/channels/WritableByteChannel;)J
    //   49: pop2
    //   50: aload_3
    //   51: invokevirtual 38	java/io/FileInputStream:close	()V
    //   54: aload 8
    //   56: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   59: aload 4
    //   61: invokevirtual 40	java/io/FileOutputStream:close	()V
    //   64: aload_2
    //   65: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   68: return
    //   69: astore 5
    //   71: aconst_null
    //   72: astore 8
    //   74: aconst_null
    //   75: astore 6
    //   77: aconst_null
    //   78: astore 7
    //   80: aload 5
    //   82: invokevirtual 43	java/io/IOException:printStackTrace	()V
    //   85: aload 7
    //   87: invokevirtual 38	java/io/FileInputStream:close	()V
    //   90: aload 8
    //   92: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   95: aload 6
    //   97: invokevirtual 40	java/io/FileOutputStream:close	()V
    //   100: aload_2
    //   101: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   104: return
    //   105: astore 11
    //   107: aload 11
    //   109: invokevirtual 43	java/io/IOException:printStackTrace	()V
    //   112: return
    //   113: astore 9
    //   115: aconst_null
    //   116: astore 8
    //   118: aconst_null
    //   119: astore 4
    //   121: aconst_null
    //   122: astore_3
    //   123: aload_3
    //   124: invokevirtual 38	java/io/FileInputStream:close	()V
    //   127: aload 8
    //   129: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   132: aload 4
    //   134: invokevirtual 40	java/io/FileOutputStream:close	()V
    //   137: aload_2
    //   138: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   141: aload 9
    //   143: athrow
    //   144: astore 10
    //   146: aload 10
    //   148: invokevirtual 43	java/io/IOException:printStackTrace	()V
    //   151: goto -10 -> 141
    //   154: astore 15
    //   156: aload 15
    //   158: invokevirtual 43	java/io/IOException:printStackTrace	()V
    //   161: return
    //   162: astore 9
    //   164: aconst_null
    //   165: astore 8
    //   167: aconst_null
    //   168: astore_2
    //   169: aconst_null
    //   170: astore 4
    //   172: goto -49 -> 123
    //   175: astore 9
    //   177: aconst_null
    //   178: astore 8
    //   180: aconst_null
    //   181: astore_2
    //   182: goto -59 -> 123
    //   185: astore 9
    //   187: goto -64 -> 123
    //   190: astore 9
    //   192: aload 6
    //   194: astore 4
    //   196: aload 7
    //   198: astore_3
    //   199: goto -76 -> 123
    //   202: astore 5
    //   204: aload_3
    //   205: astore 7
    //   207: aconst_null
    //   208: astore 8
    //   210: aconst_null
    //   211: astore 6
    //   213: aconst_null
    //   214: astore_2
    //   215: goto -135 -> 80
    //   218: astore 5
    //   220: aload 4
    //   222: astore 6
    //   224: aload_3
    //   225: astore 7
    //   227: aconst_null
    //   228: astore 8
    //   230: aconst_null
    //   231: astore_2
    //   232: goto -152 -> 80
    //   235: astore 5
    //   237: aload 4
    //   239: astore 6
    //   241: aload_3
    //   242: astore 7
    //   244: goto -164 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	69	java/io/IOException
    //   85	104	105	java/io/IOException
    //   2	11	113	finally
    //   123	141	144	java/io/IOException
    //   50	68	154	java/io/IOException
    //   11	21	162	finally
    //   21	27	175	finally
    //   31	50	185	finally
    //   80	85	190	finally
    //   11	21	202	java/io/IOException
    //   21	27	218	java/io/IOException
    //   31	50	235	java/io/IOException
  }

  public static boolean existAssetsFile(Context paramContext, String paramString)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    try
    {
      String[] arrayOfString = localAssetManager.list("");
      for (int i = 0; ; i++)
      {
        if (i >= arrayOfString.length)
          return false;
        boolean bool = arrayOfString[i].equals(paramString.trim());
        if (bool)
          return true;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return false;
  }

  public static void writeToFile(InputStream paramInputStream, File paramFile)
  {
    Log.i("test_write", "write to file : " + paramFile.getPath());
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(new FileOutputStream(paramFile));
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte, 0, 1024);
      if (i == -1)
      {
        localBufferedOutputStream.close();
        return;
      }
      localBufferedOutputStream.write(arrayOfByte, 0, i);
    }
  }

  // ERROR //
  public static void writeToFile(byte[] paramArrayOfByte, File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 117	java/io/ByteArrayInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 120	java/io/ByteArrayInputStream:<init>	([B)V
    //   10: invokestatic 126	java/nio/channels/Channels:newChannel	(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    //   13: astore 6
    //   15: new 19	java/io/FileOutputStream
    //   18: dup
    //   19: aload_1
    //   20: invokespecial 20	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   23: astore 7
    //   25: aload 7
    //   27: invokevirtual 25	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   30: astore 8
    //   32: aload 8
    //   34: aload 6
    //   36: lconst_0
    //   37: aload_0
    //   38: arraylength
    //   39: i2l
    //   40: invokevirtual 130	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   43: pop2
    //   44: aload 7
    //   46: invokevirtual 40	java/io/FileOutputStream:close	()V
    //   49: aload 6
    //   51: ifnull +10 -> 61
    //   54: aload 6
    //   56: invokeinterface 133 1 0
    //   61: aload 8
    //   63: ifnull +8 -> 71
    //   66: aload 8
    //   68: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   71: return
    //   72: astore_3
    //   73: aconst_null
    //   74: astore 4
    //   76: aconst_null
    //   77: astore 5
    //   79: aload 5
    //   81: ifnull +8 -> 89
    //   84: aload 5
    //   86: invokevirtual 40	java/io/FileOutputStream:close	()V
    //   89: aload_2
    //   90: ifnull +9 -> 99
    //   93: aload_2
    //   94: invokeinterface 133 1 0
    //   99: aload 4
    //   101: ifnull +8 -> 109
    //   104: aload 4
    //   106: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   109: aload_3
    //   110: athrow
    //   111: astore_3
    //   112: aload 6
    //   114: astore_2
    //   115: aconst_null
    //   116: astore 4
    //   118: aconst_null
    //   119: astore 5
    //   121: goto -42 -> 79
    //   124: astore_3
    //   125: aload 7
    //   127: astore 5
    //   129: aload 6
    //   131: astore_2
    //   132: aconst_null
    //   133: astore 4
    //   135: goto -56 -> 79
    //   138: astore 9
    //   140: aload 7
    //   142: astore 5
    //   144: aload 9
    //   146: astore_3
    //   147: aload 6
    //   149: astore_2
    //   150: aload 8
    //   152: astore 4
    //   154: goto -75 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	72	finally
    //   15	25	111	finally
    //   25	32	124	finally
    //   32	44	138	finally
  }

  // ERROR //
  public static void writeToFile1(InputStream paramInputStream, File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 138	java/io/InputStream:available	()I
    //   6: istore 6
    //   8: aload_0
    //   9: invokestatic 126	java/nio/channels/Channels:newChannel	(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    //   12: astore 7
    //   14: new 19	java/io/FileOutputStream
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 20	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   22: astore 8
    //   24: aload 8
    //   26: invokevirtual 25	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   29: astore 9
    //   31: iload 6
    //   33: i2l
    //   34: lstore 10
    //   36: aload 9
    //   38: aload 7
    //   40: lconst_0
    //   41: lload 10
    //   43: invokevirtual 130	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   46: pop2
    //   47: aload 8
    //   49: invokevirtual 40	java/io/FileOutputStream:close	()V
    //   52: aload 7
    //   54: ifnull +10 -> 64
    //   57: aload 7
    //   59: invokeinterface 133 1 0
    //   64: aload 9
    //   66: ifnull +8 -> 74
    //   69: aload 9
    //   71: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   74: return
    //   75: astore_3
    //   76: aconst_null
    //   77: astore 4
    //   79: aconst_null
    //   80: astore 5
    //   82: aload 5
    //   84: ifnull +8 -> 92
    //   87: aload 5
    //   89: invokevirtual 40	java/io/FileOutputStream:close	()V
    //   92: aload_2
    //   93: ifnull +9 -> 102
    //   96: aload_2
    //   97: invokeinterface 133 1 0
    //   102: aload 4
    //   104: ifnull +8 -> 112
    //   107: aload 4
    //   109: invokevirtual 39	java/nio/channels/FileChannel:close	()V
    //   112: aload_3
    //   113: athrow
    //   114: astore_3
    //   115: aload 7
    //   117: astore_2
    //   118: aconst_null
    //   119: astore 4
    //   121: aconst_null
    //   122: astore 5
    //   124: goto -42 -> 82
    //   127: astore_3
    //   128: aload 8
    //   130: astore 5
    //   132: aload 7
    //   134: astore_2
    //   135: aconst_null
    //   136: astore 4
    //   138: goto -56 -> 82
    //   141: astore 12
    //   143: aload 8
    //   145: astore 5
    //   147: aload 12
    //   149: astore_3
    //   150: aload 7
    //   152: astore_2
    //   153: aload 9
    //   155: astore 4
    //   157: goto -75 -> 82
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	75	finally
    //   14	24	114	finally
    //   24	31	127	finally
    //   36	47	141	finally
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.utils.FileUtil
 * JD-Core Version:    0.6.0
 */