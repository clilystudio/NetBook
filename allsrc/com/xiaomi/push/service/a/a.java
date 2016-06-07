package com.xiaomi.push.service.a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.xiaomi.a.a.a.b;
import com.xiaomi.push.service.U;
import com.xiaomi.smack.t;

public final class a
{
  private PendingIntent a = null;
  private Context b = null;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  // ERROR //
  private void a(Intent paramIntent, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 15	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   6: astore 5
    //   8: aload 5
    //   10: ifnull +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: getfield 17	com/xiaomi/push/service/a/a:b	Landroid/content/Context;
    //   20: ldc 22
    //   22: invokevirtual 28	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   25: checkcast 30	android/app/AlarmManager
    //   28: astore 6
    //   30: aload_0
    //   31: aload_0
    //   32: getfield 17	com/xiaomi/push/service/a/a:b	Landroid/content/Context;
    //   35: iconst_0
    //   36: aload_1
    //   37: iconst_0
    //   38: invokestatic 36	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   41: putfield 15	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   44: getstatic 42	android/os/Build$VERSION:SDK_INT	I
    //   47: bipush 19
    //   49: if_icmplt +109 -> 158
    //   52: aload_0
    //   53: getfield 15	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   56: astore 7
    //   58: iconst_3
    //   59: anewarray 44	java/lang/Class
    //   62: astore 9
    //   64: aload 9
    //   66: iconst_0
    //   67: getstatic 50	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   70: aastore
    //   71: aload 9
    //   73: iconst_1
    //   74: getstatic 53	java/lang/Long:TYPE	Ljava/lang/Class;
    //   77: aastore
    //   78: aload 9
    //   80: iconst_2
    //   81: ldc 32
    //   83: aastore
    //   84: ldc 30
    //   86: ldc 55
    //   88: aload 9
    //   90: invokevirtual 59	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   93: astore 10
    //   95: iconst_3
    //   96: anewarray 4	java/lang/Object
    //   99: astore 11
    //   101: aload 11
    //   103: iconst_0
    //   104: iconst_2
    //   105: invokestatic 63	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   108: aastore
    //   109: aload 11
    //   111: iconst_1
    //   112: lload_2
    //   113: invokestatic 66	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   116: aastore
    //   117: aload 11
    //   119: iconst_2
    //   120: aload 7
    //   122: aastore
    //   123: aload 10
    //   125: aload 6
    //   127: aload 11
    //   129: invokevirtual 72	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   132: pop
    //   133: ldc 74
    //   135: invokestatic 79	com/xiaomi/a/a/a/b:b	(Ljava/lang/String;)V
    //   138: goto -125 -> 13
    //   141: astore 4
    //   143: aload_0
    //   144: monitorexit
    //   145: aload 4
    //   147: athrow
    //   148: astore 8
    //   150: aload 8
    //   152: invokestatic 82	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   155: goto -22 -> 133
    //   158: aload 6
    //   160: iconst_2
    //   161: lload_2
    //   162: aload_0
    //   163: getfield 15	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   166: invokevirtual 86	android/app/AlarmManager:set	(IJLandroid/app/PendingIntent;)V
    //   169: goto -36 -> 133
    //
    // Exception table:
    //   from	to	target	type
    //   2	8	141	finally
    //   16	58	141	finally
    //   58	133	141	finally
    //   133	138	141	finally
    //   150	155	141	finally
    //   158	169	141	finally
    //   58	133	148	java/lang/Exception
  }

  public final void a()
  {
    monitorenter;
    try
    {
      if (this.a != null)
      {
        ((AlarmManager)this.b.getSystemService("alarm")).cancel(this.a);
        this.a = null;
        b.b("unregister timer");
      }
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(boolean paramBoolean)
  {
    monitorenter;
    try
    {
      Intent localIntent = new Intent(U.j);
      localIntent.setPackage(this.b.getPackageName());
      long l1;
      if (paramBoolean)
        l1 = SystemClock.elapsedRealtime();
      while (true)
      {
        a(localIntent, l1);
        return;
        long l2 = t.d();
        long l3 = SystemClock.elapsedRealtime() / l2;
        l1 = l2 * (l3 + 1L);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final boolean b()
  {
    monitorenter;
    try
    {
      PendingIntent localPendingIntent = this.a;
      if (localPendingIntent != null)
      {
        i = 1;
        return i;
      }
      int i = 0;
    }
    finally
    {
      monitorexit;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.a.a
 * JD-Core Version:    0.6.0
 */