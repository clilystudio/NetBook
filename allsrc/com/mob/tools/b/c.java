package com.mob.tools.b;

import java.io.FileOutputStream;
import java.nio.channels.FileLock;

public final class c
{
  private FileOutputStream a;
  private FileLock b;

  private void b()
  {
    monitorenter;
    try
    {
      FileLock localFileLock = this.b;
      if (localFileLock == null);
      while (true)
      {
        return;
        try
        {
          this.b.release();
          this.b = null;
        }
        catch (Throwable localThrowable)
        {
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a()
  {
    monitorenter;
    try
    {
      FileOutputStream localFileOutputStream = this.a;
      if (localFileOutputStream == null);
      while (true)
      {
        return;
        b();
        try
        {
          this.a.close();
          this.a = null;
        }
        catch (Throwable localThrowable)
        {
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  // ERROR //
  public final void a(java.lang.String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: new 27	java/io/FileOutputStream
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 33	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   11: putfield 23	com/mob/tools/b/c:a	Ljava/io/FileOutputStream;
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: astore_3
    //   18: aload_0
    //   19: getfield 23	com/mob/tools/b/c:a	Ljava/io/FileOutputStream;
    //   22: astore 4
    //   24: aload 4
    //   26: ifnull -12 -> 14
    //   29: aload_0
    //   30: getfield 23	com/mob/tools/b/c:a	Ljava/io/FileOutputStream;
    //   33: invokevirtual 30	java/io/FileOutputStream:close	()V
    //   36: aload_0
    //   37: aconst_null
    //   38: putfield 23	com/mob/tools/b/c:a	Ljava/io/FileOutputStream;
    //   41: goto -27 -> 14
    //   44: astore_2
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_2
    //   48: athrow
    //   49: astore 5
    //   51: goto -15 -> 36
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	17	java/lang/Throwable
    //   2	14	44	finally
    //   18	24	44	finally
    //   29	36	44	finally
    //   36	41	44	finally
    //   29	36	49	java/lang/Throwable
  }

  // ERROR //
  public final boolean a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 23	com/mob/tools/b/c:a	Ljava/io/FileOutputStream;
    //   6: astore_3
    //   7: iconst_0
    //   8: istore 4
    //   10: aload_3
    //   11: ifnonnull +8 -> 19
    //   14: aload_0
    //   15: monitorexit
    //   16: iload 4
    //   18: ireturn
    //   19: aload_0
    //   20: aload_0
    //   21: getfield 23	com/mob/tools/b/c:a	Ljava/io/FileOutputStream;
    //   24: invokevirtual 38	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   27: invokevirtual 44	java/nio/channels/FileChannel:tryLock	()Ljava/nio/channels/FileLock;
    //   30: putfield 16	com/mob/tools/b/c:b	Ljava/nio/channels/FileLock;
    //   33: aload_0
    //   34: getfield 16	com/mob/tools/b/c:b	Ljava/nio/channels/FileLock;
    //   37: astore 8
    //   39: iconst_0
    //   40: istore 4
    //   42: aload 8
    //   44: ifnull -30 -> 14
    //   47: iconst_1
    //   48: istore 4
    //   50: goto -36 -> 14
    //   53: astore 5
    //   55: aload_0
    //   56: getfield 16	com/mob/tools/b/c:b	Ljava/nio/channels/FileLock;
    //   59: astore 6
    //   61: aload 6
    //   63: ifnull -30 -> 33
    //   66: aload_0
    //   67: getfield 16	com/mob/tools/b/c:b	Ljava/nio/channels/FileLock;
    //   70: invokevirtual 21	java/nio/channels/FileLock:release	()V
    //   73: aload_0
    //   74: aconst_null
    //   75: putfield 16	com/mob/tools/b/c:b	Ljava/nio/channels/FileLock;
    //   78: goto -45 -> 33
    //   81: astore_2
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_2
    //   85: athrow
    //   86: astore 7
    //   88: goto -15 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   19	33	53	java/lang/Throwable
    //   2	7	81	finally
    //   19	33	81	finally
    //   33	39	81	finally
    //   55	61	81	finally
    //   66	73	81	finally
    //   73	78	81	finally
    //   66	73	86	java/lang/Throwable
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.c
 * JD-Core Version:    0.6.0
 */