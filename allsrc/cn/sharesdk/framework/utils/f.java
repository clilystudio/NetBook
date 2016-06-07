package cn.sharesdk.framework.utils;

import android.content.Context;
import android.os.Process;
import com.arcsoft.hpay100.a.a;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;

public class f
{
  public static void a(Context paramContext)
  {
    try
    {
      File localFile = new File(a.h(paramContext, paramContext.getPackageName()), ".lock");
      if (!localFile.getParentFile().exists())
        localFile.getParentFile().mkdirs();
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(localFile, "rw");
      MappedByteBuffer localMappedByteBuffer = localRandomAccessFile.getChannel().map(FileChannel.MapMode.READ_WRITE, 0L, 1024L);
      localMappedByteBuffer.position(0);
      localMappedByteBuffer.putInt(Process.myPid());
      localRandomAccessFile.close();
      return;
    }
    catch (Throwable localThrowable)
    {
      d.a().w(localThrowable);
    }
  }

  // ERROR //
  public static int b(Context paramContext)
  {
    // Byte code:
    //   0: new 10	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: aload_0
    //   6: invokevirtual 16	android/content/Context:getPackageName	()Ljava/lang/String;
    //   9: invokestatic 22	com/arcsoft/hpay100/a/a:h	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   12: ldc 24
    //   14: invokespecial 28	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   17: astore_1
    //   18: aload_1
    //   19: invokevirtual 32	java/io/File:getParentFile	()Ljava/io/File;
    //   22: invokevirtual 36	java/io/File:exists	()Z
    //   25: ifne +11 -> 36
    //   28: aload_1
    //   29: invokevirtual 32	java/io/File:getParentFile	()Ljava/io/File;
    //   32: invokevirtual 39	java/io/File:mkdirs	()Z
    //   35: pop
    //   36: new 41	java/io/RandomAccessFile
    //   39: dup
    //   40: aload_1
    //   41: ldc 99
    //   43: invokespecial 46	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   46: astore 6
    //   48: aload 6
    //   50: invokevirtual 50	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   53: getstatic 102	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   56: lconst_0
    //   57: ldc2_w 57
    //   60: invokevirtual 64	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   63: astore 7
    //   65: aload 7
    //   67: iconst_0
    //   68: invokevirtual 70	java/nio/MappedByteBuffer:position	(I)Ljava/nio/Buffer;
    //   71: pop
    //   72: aload 7
    //   74: invokevirtual 105	java/nio/MappedByteBuffer:getInt	()I
    //   77: istore 9
    //   79: iload 9
    //   81: istore 4
    //   83: aload 6
    //   85: invokevirtual 84	java/io/RandomAccessFile:close	()V
    //   88: iload 4
    //   90: ireturn
    //   91: astore_2
    //   92: aload_2
    //   93: astore_3
    //   94: iconst_0
    //   95: istore 4
    //   97: invokestatic 89	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   100: aload_3
    //   101: invokevirtual 95	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   104: pop
    //   105: iload 4
    //   107: ireturn
    //   108: astore_3
    //   109: goto -12 -> 97
    //
    // Exception table:
    //   from	to	target	type
    //   0	36	91	java/lang/Throwable
    //   36	79	91	java/lang/Throwable
    //   83	88	108	java/lang/Throwable
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.utils.f
 * JD-Core Version:    0.6.0
 */