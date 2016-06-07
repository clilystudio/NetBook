package com.xiaomi.smack;

import com.xiaomi.kenai.jbosh.M;

public final class k
  implements M
{
  private b a;

  public k(b paramb)
  {
    this.a = paramb;
  }

  // ERROR //
  public final boolean a(com.xiaomi.kenai.jbosh.ab paramab)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 23	com/xiaomi/kenai/jbosh/ab:a	()Lcom/xiaomi/kenai/jbosh/p;
    //   4: astore_2
    //   5: iconst_0
    //   6: istore_3
    //   7: aload_2
    //   8: ifnull +240 -> 248
    //   11: aload_0
    //   12: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   15: invokevirtual 29	com/xiaomi/smack/b:i	()Z
    //   18: ifeq +549 -> 567
    //   21: aload_2
    //   22: ldc 31
    //   24: ldc 33
    //   26: invokestatic 38	com/xiaomi/kenai/jbosh/f:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/f;
    //   29: invokevirtual 43	com/xiaomi/kenai/jbosh/p:a	(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;
    //   32: astore 23
    //   34: aload 23
    //   36: invokestatic 49	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   39: istore 24
    //   41: iload 24
    //   43: ifne +524 -> 567
    //   46: aload_0
    //   47: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   50: aload 23
    //   52: invokevirtual 52	com/xiaomi/smack/b:a	(Ljava/lang/String;)V
    //   55: iconst_1
    //   56: istore 5
    //   58: aload_0
    //   59: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   62: getfield 56	com/xiaomi/smack/b:b	Ljava/lang/String;
    //   65: astore 7
    //   67: aload 7
    //   69: ifnonnull +24 -> 93
    //   72: aload_0
    //   73: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   76: aload_2
    //   77: ldc 31
    //   79: ldc 58
    //   81: invokestatic 38	com/xiaomi/kenai/jbosh/f:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/f;
    //   84: invokevirtual 43	com/xiaomi/kenai/jbosh/p:a	(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;
    //   87: putfield 56	com/xiaomi/smack/b:b	Ljava/lang/String;
    //   90: iconst_1
    //   91: istore 5
    //   93: aload_0
    //   94: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   97: getfield 60	com/xiaomi/smack/b:a	Ljava/lang/String;
    //   100: astore 8
    //   102: aload 8
    //   104: ifnonnull +24 -> 128
    //   107: aload_0
    //   108: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   111: aload_2
    //   112: ldc 31
    //   114: ldc 62
    //   116: invokestatic 38	com/xiaomi/kenai/jbosh/f:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/f;
    //   119: invokevirtual 43	com/xiaomi/kenai/jbosh/p:a	(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;
    //   122: putfield 60	com/xiaomi/smack/b:a	Ljava/lang/String;
    //   125: iconst_1
    //   126: istore 5
    //   128: invokestatic 68	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   131: invokevirtual 72	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   134: astore 9
    //   136: aload 9
    //   138: ldc 74
    //   140: iconst_1
    //   141: invokeinterface 80 3 0
    //   146: aload 9
    //   148: new 82	java/io/StringReader
    //   151: dup
    //   152: aload_2
    //   153: invokevirtual 86	com/xiaomi/kenai/jbosh/p:d	()Ljava/lang/String;
    //   156: invokespecial 88	java/io/StringReader:<init>	(Ljava/lang/String;)V
    //   159: invokeinterface 92 2 0
    //   164: aload 9
    //   166: invokeinterface 96 1 0
    //   171: pop
    //   172: aload 9
    //   174: invokeinterface 99 1 0
    //   179: istore 11
    //   181: aload_0
    //   182: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   185: invokevirtual 102	com/xiaomi/smack/b:p	()V
    //   188: iload 11
    //   190: iconst_2
    //   191: if_icmpne +370 -> 561
    //   194: aload 9
    //   196: invokeinterface 105 1 0
    //   201: ldc 107
    //   203: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   206: ifne +355 -> 561
    //   209: aload 9
    //   211: invokeinterface 105 1 0
    //   216: ldc 115
    //   218: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   221: istore 12
    //   223: iload 12
    //   225: ifeq +25 -> 250
    //   228: aload_0
    //   229: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   232: aload 9
    //   234: invokestatic 120	com/xiaomi/smack/d/c:a	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;
    //   237: invokevirtual 123	com/xiaomi/smack/b:b	(Lcom/xiaomi/smack/packet/e;)V
    //   240: iconst_1
    //   241: istore_3
    //   242: iload 11
    //   244: iconst_1
    //   245: if_icmpne +310 -> 555
    //   248: iload_3
    //   249: ireturn
    //   250: aload 9
    //   252: invokeinterface 105 1 0
    //   257: ldc 125
    //   259: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   262: istore 13
    //   264: iload 13
    //   266: ifeq +24 -> 290
    //   269: aload_0
    //   270: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   273: aload 9
    //   275: aload_0
    //   276: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   279: invokestatic 128	com/xiaomi/smack/d/c:a	(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/smack/l;)Lcom/xiaomi/smack/packet/b;
    //   282: invokevirtual 123	com/xiaomi/smack/b:b	(Lcom/xiaomi/smack/packet/e;)V
    //   285: iconst_1
    //   286: istore_3
    //   287: goto -45 -> 242
    //   290: aload 9
    //   292: invokeinterface 105 1 0
    //   297: ldc 130
    //   299: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   302: istore 14
    //   304: iload 14
    //   306: ifeq +20 -> 326
    //   309: aload_0
    //   310: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   313: aload 9
    //   315: invokestatic 133	com/xiaomi/smack/d/c:b	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/f;
    //   318: invokevirtual 123	com/xiaomi/smack/b:b	(Lcom/xiaomi/smack/packet/e;)V
    //   321: iconst_1
    //   322: istore_3
    //   323: goto -81 -> 242
    //   326: aload 9
    //   328: invokeinterface 105 1 0
    //   333: ldc 33
    //   335: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   338: istore 15
    //   340: iload 15
    //   342: ifeq +26 -> 368
    //   345: aload 9
    //   347: invokeinterface 136 1 0
    //   352: astore 22
    //   354: aload_0
    //   355: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   358: aload 22
    //   360: invokevirtual 52	com/xiaomi/smack/b:a	(Ljava/lang/String;)V
    //   363: iconst_1
    //   364: istore_3
    //   365: goto -123 -> 242
    //   368: aload 9
    //   370: invokeinterface 105 1 0
    //   375: ldc 138
    //   377: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   380: istore 16
    //   382: iload 16
    //   384: ifeq +45 -> 429
    //   387: new 140	com/xiaomi/smack/w
    //   390: dup
    //   391: aload 9
    //   393: invokestatic 143	com/xiaomi/smack/d/c:d	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/h;
    //   396: invokespecial 146	com/xiaomi/smack/w:<init>	(Lcom/xiaomi/smack/packet/h;)V
    //   399: athrow
    //   400: astore 20
    //   402: iconst_1
    //   403: istore_3
    //   404: aload 20
    //   406: astore 4
    //   408: aload_0
    //   409: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   412: invokevirtual 149	com/xiaomi/smack/b:j	()Z
    //   415: ifeq -167 -> 248
    //   418: aload_0
    //   419: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   422: aload 4
    //   424: invokevirtual 152	com/xiaomi/smack/b:a	(Ljava/lang/Exception;)V
    //   427: iload_3
    //   428: ireturn
    //   429: aload 9
    //   431: invokeinterface 105 1 0
    //   436: ldc 154
    //   438: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   441: istore 17
    //   443: iload 17
    //   445: ifeq +51 -> 496
    //   448: aload 9
    //   450: invokeinterface 99 1 0
    //   455: pop
    //   456: aload 9
    //   458: invokeinterface 105 1 0
    //   463: ldc 156
    //   465: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   468: ifeq +63 -> 531
    //   471: aload_0
    //   472: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   475: new 158	com/xiaomi/smack/packet/f
    //   478: dup
    //   479: getstatic 163	com/xiaomi/smack/packet/f$b:b	Lcom/xiaomi/smack/packet/f$b;
    //   482: invokespecial 166	com/xiaomi/smack/packet/f:<init>	(Lcom/xiaomi/smack/packet/f$b;)V
    //   485: bipush 6
    //   487: aconst_null
    //   488: invokevirtual 169	com/xiaomi/smack/b:a	(Lcom/xiaomi/smack/packet/f;ILjava/lang/Exception;)V
    //   491: iconst_1
    //   492: istore_3
    //   493: goto -251 -> 242
    //   496: aload 9
    //   498: invokeinterface 105 1 0
    //   503: ldc 171
    //   505: invokevirtual 113	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   508: istore 18
    //   510: iload 18
    //   512: ifeq +49 -> 561
    //   515: aload 9
    //   517: invokestatic 175	com/xiaomi/smack/d/c:c	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/x;
    //   520: astore 19
    //   522: aload_0
    //   523: getfield 15	com/xiaomi/smack/k:a	Lcom/xiaomi/smack/b;
    //   526: aload 19
    //   528: invokevirtual 123	com/xiaomi/smack/b:b	(Lcom/xiaomi/smack/packet/e;)V
    //   531: iconst_1
    //   532: istore_3
    //   533: goto -291 -> 242
    //   536: astore 4
    //   538: iconst_0
    //   539: istore_3
    //   540: goto -132 -> 408
    //   543: astore 6
    //   545: aload 6
    //   547: astore 4
    //   549: iload 5
    //   551: istore_3
    //   552: goto -144 -> 408
    //   555: iload_3
    //   556: istore 5
    //   558: goto -386 -> 172
    //   561: iload 5
    //   563: istore_3
    //   564: goto -322 -> 242
    //   567: iconst_0
    //   568: istore 5
    //   570: goto -512 -> 58
    //
    // Exception table:
    //   from	to	target	type
    //   46	55	400	java/lang/Exception
    //   72	90	400	java/lang/Exception
    //   107	125	400	java/lang/Exception
    //   228	240	400	java/lang/Exception
    //   269	285	400	java/lang/Exception
    //   309	321	400	java/lang/Exception
    //   345	363	400	java/lang/Exception
    //   387	400	400	java/lang/Exception
    //   448	491	400	java/lang/Exception
    //   515	531	400	java/lang/Exception
    //   11	41	536	java/lang/Exception
    //   58	67	543	java/lang/Exception
    //   93	102	543	java/lang/Exception
    //   128	172	543	java/lang/Exception
    //   172	188	543	java/lang/Exception
    //   194	223	543	java/lang/Exception
    //   250	264	543	java/lang/Exception
    //   290	304	543	java/lang/Exception
    //   326	340	543	java/lang/Exception
    //   368	382	543	java/lang/Exception
    //   429	443	543	java/lang/Exception
    //   496	510	543	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.k
 * JD-Core Version:    0.6.0
 */