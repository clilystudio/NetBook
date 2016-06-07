package com.alipay.b.e;

import android.support.design.widget.K;
import android.support.design.widget.am;

final class d
{
  private int a;
  private String b;
  private String c;
  private String d;
  private K e;

  public d(a parama, int paramInt, String paramString1, String paramString2, String paramString3, K paramK)
  {
    this.a = paramInt;
    this.d = paramString3;
    if (am.a(paramString1));
    for (this.b = a.b(a.c(parama)); ; this.b = paramString1)
    {
      this.c = paramString2;
      this.e = paramK;
      return;
    }
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   6: invokestatic 51	com/alipay/b/e/a:d	(Lcom/alipay/b/e/a;)Z
    //   9: ifeq +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   17: iload_1
    //   18: invokestatic 54	com/alipay/b/e/a:a	(Lcom/alipay/b/e/a;Z)Z
    //   21: pop
    //   22: aload_0
    //   23: getfield 23	com/alipay/b/e/d:a	I
    //   26: tableswitch	default:+26 -> 52, 1:+109->135, 2:+117->143, 3:+125->151
    //   53: fstore 179
    //   55: nop
    //   56: istore_1
    //   57: aload_0
    //   58: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   61: iconst_0
    //   62: invokestatic 62	com/alipay/b/e/a:b	(Lcom/alipay/b/e/a;Z)Z
    //   65: pop
    //   66: aload_0
    //   67: getfield 23	com/alipay/b/e/d:a	I
    //   70: istore 22
    //   72: iload 22
    //   74: iconst_3
    //   75: if_icmpne +310 -> 385
    //   78: aload_0
    //   79: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   82: invokestatic 35	com/alipay/b/e/a:c	(Lcom/alipay/b/e/a;)Landroid/content/Context;
    //   85: invokestatic 68	com/taobao/dp/DeviceSecuritySDK:getInstance	(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;
    //   88: ldc 70
    //   90: iload_1
    //   91: aconst_null
    //   92: new 72	com/alipay/b/e/e
    //   95: dup
    //   96: aload_0
    //   97: invokespecial 75	com/alipay/b/e/e:<init>	(Lcom/alipay/b/e/d;)V
    //   100: invokevirtual 79	com/taobao/dp/DeviceSecuritySDK:initAsync	(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V
    //   103: sipush 3000
    //   106: istore 23
    //   108: aload_0
    //   109: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   112: invokestatic 81	com/alipay/b/e/a:e	(Lcom/alipay/b/e/a;)Z
    //   115: ifne +44 -> 159
    //   118: iload 23
    //   120: ifle +39 -> 159
    //   123: ldc2_w 82
    //   126: invokestatic 89	java/lang/Thread:sleep	(J)V
    //   129: iinc 23 246
    //   132: goto -24 -> 108
    //   135: ldc 91
    //   137: putstatic 60	com/alipay/b/b/a:a	Ljava/lang/String;
    //   140: goto -83 -> 57
    //   143: ldc 56
    //   145: putstatic 60	com/alipay/b/b/a:a	Ljava/lang/String;
    //   148: goto -91 -> 57
    //   151: ldc 93
    //   153: putstatic 60	com/alipay/b/b/a:a	Ljava/lang/String;
    //   156: goto -99 -> 57
    //   159: aload_0
    //   160: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   163: invokestatic 35	com/alipay/b/e/a:c	(Lcom/alipay/b/e/a;)Landroid/content/Context;
    //   166: invokestatic 68	com/taobao/dp/DeviceSecuritySDK:getInstance	(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;
    //   169: invokevirtual 97	com/taobao/dp/DeviceSecuritySDK:getSecurityToken	()Ljava/lang/String;
    //   172: astore 24
    //   174: aload 24
    //   176: invokestatic 30	android/support/design/widget/am:a	(Ljava/lang/String;)Z
    //   179: ifne +13 -> 192
    //   182: aload_0
    //   183: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   186: aload 24
    //   188: invokestatic 100	com/alipay/b/e/a:a	(Lcom/alipay/b/e/a;Ljava/lang/String;)Ljava/lang/String;
    //   191: pop
    //   192: new 102	java/util/HashMap
    //   195: dup
    //   196: invokespecial 103	java/util/HashMap:<init>	()V
    //   199: astore 4
    //   201: aload 4
    //   203: ldc 105
    //   205: ldc 107
    //   207: invokeinterface 113 3 0
    //   212: pop
    //   213: aload 4
    //   215: ldc 115
    //   217: aload_0
    //   218: getfield 42	com/alipay/b/e/d:c	Ljava/lang/String;
    //   221: invokeinterface 113 3 0
    //   226: pop
    //   227: aload 4
    //   229: ldc 117
    //   231: aload_0
    //   232: getfield 40	com/alipay/b/e/d:b	Ljava/lang/String;
    //   235: invokeinterface 113 3 0
    //   240: pop
    //   241: aload 4
    //   243: ldc 119
    //   245: aload_0
    //   246: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   249: invokestatic 122	com/alipay/b/e/a:f	(Lcom/alipay/b/e/a;)Ljava/lang/String;
    //   252: invokeinterface 113 3 0
    //   257: pop
    //   258: aload 4
    //   260: ldc 124
    //   262: aload_0
    //   263: getfield 25	com/alipay/b/e/d:d	Ljava/lang/String;
    //   266: invokeinterface 113 3 0
    //   271: pop
    //   272: aload_0
    //   273: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   276: invokestatic 35	com/alipay/b/e/a:c	(Lcom/alipay/b/e/a;)Landroid/content/Context;
    //   279: aload 4
    //   281: invokestatic 129	com/arcsoft/hpay100/a/a:b	(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    //   284: pop
    //   285: aload_0
    //   286: getfield 44	com/alipay/b/e/d:e	Landroid/support/design/widget/K;
    //   289: ifnull +56 -> 345
    //   292: new 131	com/alipay/b/e/f
    //   295: dup
    //   296: aload_0
    //   297: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   300: invokespecial 134	com/alipay/b/e/f:<init>	(Lcom/alipay/b/e/a;)V
    //   303: pop
    //   304: aload_0
    //   305: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   308: invokestatic 35	com/alipay/b/e/a:c	(Lcom/alipay/b/e/a;)Landroid/content/Context;
    //   311: invokestatic 137	com/alipay/b/a/a:b	(Landroid/content/Context;)Ljava/lang/String;
    //   314: pop
    //   315: aload_0
    //   316: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   319: invokestatic 35	com/alipay/b/e/a:c	(Lcom/alipay/b/e/a;)Landroid/content/Context;
    //   322: invokestatic 139	com/alipay/b/a/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   325: pop
    //   326: aload_0
    //   327: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   330: invokestatic 122	com/alipay/b/e/a:f	(Lcom/alipay/b/e/a;)Ljava/lang/String;
    //   333: pop
    //   334: aload_0
    //   335: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   338: invokestatic 35	com/alipay/b/e/a:c	(Lcom/alipay/b/e/a;)Landroid/content/Context;
    //   341: invokestatic 141	android/support/design/widget/am:d	(Landroid/content/Context;)Ljava/lang/String;
    //   344: pop
    //   345: aload_0
    //   346: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   349: iconst_0
    //   350: invokestatic 54	com/alipay/b/e/a:a	(Lcom/alipay/b/e/a;Z)Z
    //   353: pop
    //   354: return
    //   355: astore 7
    //   357: aload_0
    //   358: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   361: iconst_0
    //   362: invokestatic 54	com/alipay/b/e/a:a	(Lcom/alipay/b/e/a;Z)Z
    //   365: pop
    //   366: return
    //   367: astore 5
    //   369: aload_0
    //   370: getfield 18	com/alipay/b/e/d:f	Lcom/alipay/b/e/a;
    //   373: iconst_0
    //   374: invokestatic 54	com/alipay/b/e/a:a	(Lcom/alipay/b/e/a;Z)Z
    //   377: pop
    //   378: aload 5
    //   380: athrow
    //   381: astore_3
    //   382: goto -190 -> 192
    //   385: iload 22
    //   387: istore_1
    //   388: goto -310 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   57	72	355	java/lang/Throwable
    //   78	103	355	java/lang/Throwable
    //   108	118	355	java/lang/Throwable
    //   123	129	355	java/lang/Throwable
    //   159	192	355	java/lang/Throwable
    //   192	345	355	java/lang/Throwable
    //   57	72	367	finally
    //   78	103	367	finally
    //   108	118	367	finally
    //   123	129	367	finally
    //   159	192	367	finally
    //   192	345	367	finally
    //   57	72	381	java/lang/Exception
    //   78	103	381	java/lang/Exception
    //   108	118	381	java/lang/Exception
    //   123	129	381	java/lang/Exception
    //   159	192	381	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.e.d
 * JD-Core Version:    0.6.0
 */