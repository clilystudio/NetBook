package com.koushikdutta.async;

import android.annotation.TargetApi;
import android.os.Looper;
import com.koushikdutta.async.d.b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.PriorityQueue;

@TargetApi(9)
public class v
{
  public static int c;
  private static PriorityQueue<ByteBuffer> e;
  private static int f;
  private static int g;
  private static int h;
  private static final Object i;
  private static ByteBuffer j;
  ArrayDeque<ByteBuffer> a = new ArrayDeque();
  ByteOrder b = ByteOrder.BIG_ENDIAN;
  private int d = 0;

  static
  {
    if (!v.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      k = bool;
      e = new PriorityQueue(8, new w());
      f = 1048576;
      c = 262144;
      g = 0;
      h = 0;
      i = new Object();
      j = ByteBuffer.allocate(0);
      return;
    }
  }

  private String b(Charset paramCharset)
  {
    if (paramCharset == null)
      paramCharset = b.a;
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.a.iterator();
    if (localIterator.hasNext())
    {
      ByteBuffer localByteBuffer = (ByteBuffer)localIterator.next();
      int n;
      int m;
      byte[] arrayOfByte1;
      if (localByteBuffer.isDirect())
      {
        byte[] arrayOfByte2 = new byte[localByteBuffer.remaining()];
        int i1 = localByteBuffer.remaining();
        localByteBuffer.get(arrayOfByte2);
        n = i1;
        m = 0;
        arrayOfByte1 = arrayOfByte2;
      }
      while (true)
      {
        localStringBuilder.append(new String(arrayOfByte1, m, n, paramCharset));
        break;
        arrayOfByte1 = localByteBuffer.array();
        m = localByteBuffer.arrayOffset() + localByteBuffer.position();
        n = localByteBuffer.remaining();
      }
    }
    return localStringBuilder.toString();
  }

  public static ByteBuffer b(int paramInt)
  {
    if (paramInt <= h)
    {
      PriorityQueue localPriorityQueue = n();
      if (localPriorityQueue != null)
      {
        while (true)
        {
          ByteBuffer localByteBuffer;
          synchronized (i)
          {
            if (localPriorityQueue.size() <= 0)
              break;
            localByteBuffer = (ByteBuffer)localPriorityQueue.remove();
            if (localPriorityQueue.size() != 0)
              continue;
            h = 0;
            g -= localByteBuffer.capacity();
            if (k)
              break label118;
            if (localPriorityQueue.size() != 0)
            {
              m = 1;
              if (g != 0)
                break label112;
              n = 1;
              if ((n ^ m) != 0)
                break label118;
              throw new AssertionError();
            }
          }
          int m = 0;
          continue;
          label112: int n = 0;
          continue;
          label118: if (localByteBuffer.capacity() < paramInt)
            continue;
          monitorexit;
          return localByteBuffer;
        }
        monitorexit;
      }
    }
    return ByteBuffer.allocate(Math.max(8192, paramInt));
  }

  private ByteBuffer c(int paramInt)
  {
    if (this.d < paramInt)
      throw new IllegalArgumentException("count : " + this.d + "/" + paramInt);
    ByteBuffer localByteBuffer1;
    while (true)
    {
      localByteBuffer1 = (ByteBuffer)this.a.peek();
      if ((localByteBuffer1 == null) || (localByteBuffer1.hasRemaining()))
        break;
      c((ByteBuffer)this.a.remove());
    }
    if (localByteBuffer1 == null)
      return j;
    if (localByteBuffer1.remaining() >= paramInt)
      return localByteBuffer1.order(this.b);
    ByteBuffer localByteBuffer2 = b(paramInt);
    localByteBuffer2.limit(paramInt);
    byte[] arrayOfByte = localByteBuffer2.array();
    int m = 0;
    ByteBuffer localByteBuffer3 = null;
    while (m < paramInt)
    {
      localByteBuffer3 = (ByteBuffer)this.a.remove();
      int n = Math.min(paramInt - m, localByteBuffer3.remaining());
      localByteBuffer3.get(arrayOfByte, m, n);
      m += n;
      if (localByteBuffer3.remaining() != 0)
        continue;
      c(localByteBuffer3);
      localByteBuffer3 = null;
    }
    if ((localByteBuffer3 != null) && (localByteBuffer3.remaining() > 0))
      this.a.addFirst(localByteBuffer3);
    this.a.addFirst(localByteBuffer2);
    return localByteBuffer2.order(this.b);
  }

  public static void c(ByteBuffer paramByteBuffer)
  {
    if ((paramByteBuffer == null) || (paramByteBuffer.isDirect()));
    PriorityQueue localPriorityQueue;
    do
    {
      do
        return;
      while ((paramByteBuffer.arrayOffset() != 0) || (paramByteBuffer.array().length != paramByteBuffer.capacity()) || (paramByteBuffer.capacity() < 8192) || (paramByteBuffer.capacity() > c));
      localPriorityQueue = n();
    }
    while (localPriorityQueue == null);
    synchronized (i)
    {
      if ((g > f) && (localPriorityQueue.size() > 0) && (((ByteBuffer)localPriorityQueue.peek()).capacity() < paramByteBuffer.capacity()))
      {
        ByteBuffer localByteBuffer = (ByteBuffer)localPriorityQueue.remove();
        g -= localByteBuffer.capacity();
      }
    }
    if (g > f)
    {
      monitorexit;
      return;
    }
    int i1;
    if (!k)
    {
      Iterator localIterator = e.iterator();
      do
        if (!localIterator.hasNext())
          break;
      while ((ByteBuffer)localIterator.next() != paramByteBuffer);
      i1 = 1;
      if (i1 != 0)
        throw new AssertionError();
    }
    paramByteBuffer.position(0);
    paramByteBuffer.limit(paramByteBuffer.capacity());
    g += paramByteBuffer.capacity();
    localPriorityQueue.add(paramByteBuffer);
    int m;
    if (!k)
    {
      if (localPriorityQueue.size() == 0)
        break label288;
      m = 1;
      label241: if (g != 0)
        break label294;
    }
    label288: label294: for (int n = 1; ; n = 0)
    {
      if ((n ^ m) == 0)
        throw new AssertionError();
      h = Math.max(h, paramByteBuffer.capacity());
      monitorexit;
      return;
      i1 = 0;
      break;
      m = 0;
      break label241;
    }
  }

  private void d(int paramInt)
  {
    if (this.d >= 0)
      this.d = (paramInt + this.d);
  }

  private static PriorityQueue<ByteBuffer> n()
  {
    if (Thread.currentThread() == Looper.getMainLooper().getThread())
      return null;
    return e;
  }

  public final v a(int paramInt)
  {
    v localv = new v();
    a(localv, paramInt);
    localv.b = this.b;
    return localv;
  }

  public final String a(Charset paramCharset)
  {
    String str = b(paramCharset);
    j();
    return str;
  }

  public final void a(v paramv)
  {
    a(paramv, this.d);
  }

  public final void a(v paramv, int paramInt)
  {
    if (this.d < paramInt)
      throw new IllegalArgumentException("length");
    int m = 0;
    while (m < paramInt)
    {
      ByteBuffer localByteBuffer1 = (ByteBuffer)this.a.remove();
      int n = localByteBuffer1.remaining();
      if (n == 0)
      {
        c(localByteBuffer1);
        continue;
      }
      if (m + n > paramInt)
      {
        int i1 = paramInt - m;
        ByteBuffer localByteBuffer2 = b(i1);
        localByteBuffer2.limit(i1);
        localByteBuffer1.get(localByteBuffer2.array(), 0, i1);
        paramv.a(localByteBuffer2);
        this.a.addFirst(localByteBuffer1);
        if ((!k) && (localByteBuffer2.capacity() < i1))
          throw new AssertionError();
        if ((k) || (localByteBuffer2.position() == 0))
          break;
        throw new AssertionError();
      }
      paramv.a(localByteBuffer1);
      m += n;
    }
    this.d -= paramInt;
  }

  public final void a(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.remaining() <= 0)
    {
      c(paramByteBuffer);
      return;
    }
    d(paramByteBuffer.remaining());
    if (this.a.size() > 0)
    {
      ByteBuffer localByteBuffer = (ByteBuffer)this.a.getLast();
      if (localByteBuffer.capacity() - localByteBuffer.limit() >= paramByteBuffer.remaining())
      {
        localByteBuffer.mark();
        localByteBuffer.position(localByteBuffer.limit());
        localByteBuffer.limit(localByteBuffer.capacity());
        localByteBuffer.put(paramByteBuffer);
        localByteBuffer.limit(localByteBuffer.position());
        localByteBuffer.reset();
        c(paramByteBuffer);
        c(0);
        return;
      }
    }
    this.a.add(paramByteBuffer);
    c(0);
  }

  public final void a(byte[] paramArrayOfByte)
  {
    int m = paramArrayOfByte.length;
    if (this.d < m)
      throw new IllegalArgumentException("length");
    int n = m;
    int i1 = 0;
    while (n > 0)
    {
      ByteBuffer localByteBuffer1 = (ByteBuffer)this.a.peek();
      int i2 = Math.min(localByteBuffer1.remaining(), n);
      localByteBuffer1.get(paramArrayOfByte, i1, i2);
      int i3 = n - i2;
      i1 += i2;
      if (localByteBuffer1.remaining() == 0)
      {
        ByteBuffer localByteBuffer2 = (ByteBuffer)this.a.remove();
        if ((!k) && (localByteBuffer1 != localByteBuffer2))
          throw new AssertionError();
        c(localByteBuffer1);
      }
      n = i3;
    }
    this.d -= m;
  }

  public final ByteBuffer[] a()
  {
    ByteBuffer[] arrayOfByteBuffer1 = new ByteBuffer[this.a.size()];
    ByteBuffer[] arrayOfByteBuffer2 = (ByteBuffer[])this.a.toArray(arrayOfByteBuffer1);
    this.a.clear();
    this.d = 0;
    return arrayOfByteBuffer2;
  }

  public final void b(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.remaining() <= 0)
    {
      c(paramByteBuffer);
      return;
    }
    d(paramByteBuffer.remaining());
    if (this.a.size() > 0)
    {
      ByteBuffer localByteBuffer = (ByteBuffer)this.a.getFirst();
      if (localByteBuffer.position() >= paramByteBuffer.remaining())
      {
        localByteBuffer.position(localByteBuffer.position() - paramByteBuffer.remaining());
        localByteBuffer.mark();
        localByteBuffer.put(paramByteBuffer);
        localByteBuffer.reset();
        c(paramByteBuffer);
        return;
      }
    }
    this.a.addFirst(paramByteBuffer);
  }

  public final boolean b()
  {
    return this.d == 0;
  }

  public final int c()
  {
    return this.d;
  }

  public final boolean d()
  {
    return this.d > 0;
  }

  public final int e()
  {
    int m = c(4).getInt();
    this.d = (-4 + this.d);
    return m;
  }

  public final char f()
  {
    int m = (char)c(1).get();
    this.d = (-1 + this.d);
    return m;
  }

  public final int g()
  {
    int m = c(2).getShort();
    this.d = (-2 + this.d);
    return m;
  }

  public final byte h()
  {
    int m = c(1).get();
    this.d = (-1 + this.d);
    return m;
  }

  public final long i()
  {
    long l = c(8).getLong();
    this.d = (-8 + this.d);
    return l;
  }

  public final void j()
  {
    while (this.a.size() > 0)
      c((ByteBuffer)this.a.remove());
    if ((!k) && (this.a.size() != 0))
      throw new AssertionError();
    this.d = 0;
  }

  public final ByteBuffer k()
  {
    ByteBuffer localByteBuffer = (ByteBuffer)this.a.remove();
    this.d -= localByteBuffer.remaining();
    return localByteBuffer;
  }

  public final int l()
  {
    return this.a.size();
  }

  public final String m()
  {
    return b(null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.v
 * JD-Core Version:    0.6.0
 */