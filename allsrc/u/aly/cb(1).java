package u.aly;

import android.content.Context;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class cb
{
  private static final byte[] a = "pbl0".getBytes();
  private at b = null;
  private Context c;

  public cb(Context paramContext)
  {
    this.c = paramContext;
  }

  private static String b(at paramat)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = new TreeMap(paramat.d()).entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localStringBuilder.append(paramat.b);
        return bx.a(localStringBuilder.toString()).toLowerCase(Locale.US);
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append(((au)localEntry.getValue()).c());
      localStringBuilder.append(((au)localEntry.getValue()).f());
      localStringBuilder.append(((au)localEntry.getValue()).j());
    }
  }

  public final at a()
  {
    monitorenter;
    try
    {
      at localat = this.b;
      monitorexit;
      return localat;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(at paramat)
  {
    if (paramat == null)
      return;
    int k;
    if (!paramat.k().equals(b(paramat)))
    {
      k = 0;
      label22: if (k == 0)
        break label180;
      monitorenter;
    }
    at localat;
    while (true)
    {
      try
      {
        localat = this.b;
        if (localat != null)
          break label211;
        this.b = paramat;
        return;
      }
      finally
      {
        monitorexit;
      }
      Iterator localIterator1 = paramat.d().values().iterator();
      label148: label180: label209: 
      while (true)
      {
        if (!localIterator1.hasNext())
        {
          k = 1;
          break label22;
        }
        au localau = (au)localIterator1.next();
        byte[] arrayOfByte1 = bA.a(localau.j());
        ByteBuffer localByteBuffer = ByteBuffer.allocate(8);
        localByteBuffer.order(null);
        localByteBuffer.putLong(localau.f());
        byte[] arrayOfByte2 = localByteBuffer.array();
        byte[] arrayOfByte3 = a;
        byte[] arrayOfByte4 = new byte[4];
        int i = 0;
        if (i >= 4);
        for (int j = 0; ; j++)
        {
          if (j >= 4)
            break label209;
          if (arrayOfByte1[j] == arrayOfByte4[j])
            continue;
          k = 0;
          break label22;
          break;
          arrayOfByte4[i] = (byte)(arrayOfByte2[i] ^ arrayOfByte3[i]);
          i++;
          break label148;
        }
      }
      label211: if (paramat != null)
        break label221;
      paramat = localat;
    }
    label221: Map localMap = localat.d();
    Iterator localIterator2 = paramat.d().entrySet().iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        localat.a(paramat.h());
        localat.a(b(localat));
        paramat = localat;
        break;
      }
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      if (((au)localEntry.getValue()).e())
      {
        localMap.put((String)localEntry.getKey(), (au)localEntry.getValue());
        continue;
      }
      localMap.remove(localEntry.getKey());
    }
  }

  // ERROR //
  public final void b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 183	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: getfield 30	u/aly/cb:c	Landroid/content/Context;
    //   10: invokevirtual 189	android/content/Context:getFilesDir	()Ljava/io/File;
    //   13: ldc 191
    //   15: invokespecial 194	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   18: invokevirtual 197	java/io/File:exists	()Z
    //   21: ifne +4 -> 25
    //   24: return
    //   25: aload_0
    //   26: getfield 30	u/aly/cb:c	Landroid/content/Context;
    //   29: ldc 191
    //   31: invokevirtual 201	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   34: astore 8
    //   36: aload 8
    //   38: astore 4
    //   40: aload 4
    //   42: invokestatic 204	u/aly/bx:b	(Ljava/io/InputStream;)[B
    //   45: astore 9
    //   47: aload 9
    //   49: astore 5
    //   51: aload 4
    //   53: invokestatic 207	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   56: aload 5
    //   58: ifnull -34 -> 24
    //   61: new 38	u/aly/at
    //   64: dup
    //   65: invokespecial 208	u/aly/at:<init>	()V
    //   68: astore 6
    //   70: new 210	u/aly/bD
    //   73: dup
    //   74: invokespecial 211	u/aly/bD:<init>	()V
    //   77: aload 6
    //   79: aload 5
    //   81: invokevirtual 214	u/aly/bD:a	(Lu/aly/bz;[B)V
    //   84: aload_0
    //   85: aload 6
    //   87: putfield 28	u/aly/cb:b	Lu/aly/at;
    //   90: return
    //   91: astore 7
    //   93: aload 7
    //   95: invokevirtual 217	java/lang/Exception:printStackTrace	()V
    //   98: return
    //   99: astore_3
    //   100: aconst_null
    //   101: astore 4
    //   103: aload_3
    //   104: invokevirtual 217	java/lang/Exception:printStackTrace	()V
    //   107: aload 4
    //   109: invokestatic 207	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   112: aconst_null
    //   113: astore 5
    //   115: goto -59 -> 56
    //   118: astore_2
    //   119: aload_1
    //   120: invokestatic 207	u/aly/bx:c	(Ljava/io/InputStream;)V
    //   123: aload_2
    //   124: athrow
    //   125: astore_2
    //   126: aload 4
    //   128: astore_1
    //   129: goto -10 -> 119
    //   132: astore_3
    //   133: goto -30 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   61	90	91	java/lang/Exception
    //   25	36	99	java/lang/Exception
    //   25	36	118	finally
    //   40	47	125	finally
    //   103	107	125	finally
    //   40	47	132	java/lang/Exception
  }

  public final void c()
  {
    if (this.b == null)
      return;
    try
    {
      byte[] arrayOfByte = new bF().a(this.b);
      bx.a(new File(this.c.getFilesDir(), ".imprint"), arrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cb
 * JD-Core Version:    0.6.0
 */