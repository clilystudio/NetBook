package com.xiaomi.smack.d;

import com.xiaomi.push.service.z;
import com.xiaomi.smack.l;
import com.xiaomi.smack.packet.a;
import com.xiaomi.smack.packet.f;
import com.xiaomi.smack.packet.f.a;
import com.xiaomi.smack.packet.f.b;
import com.xiaomi.smack.packet.h;
import com.xiaomi.smack.packet.i;
import com.xiaomi.smack.packet.j;
import com.xiaomi.smack.x;
import com.xiaomi.smack.y;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

public final class c
{
  private static XmlPullParser a = null;

  public static com.xiaomi.smack.packet.b a(XmlPullParser paramXmlPullParser, l paraml)
  {
    String str1 = paramXmlPullParser.getAttributeValue("", "id");
    String str2 = paramXmlPullParser.getAttributeValue("", "to");
    String str3 = paramXmlPullParser.getAttributeValue("", "from");
    String str4 = paramXmlPullParser.getAttributeValue("", "chid");
    com.xiaomi.smack.packet.c localc = com.xiaomi.smack.packet.c.a(paramXmlPullParser.getAttributeValue("", "type"));
    int i = 0;
    i locali = null;
    com.xiaomi.smack.packet.b localb = null;
    while (i == 0)
    {
      int j = paramXmlPullParser.next();
      if (j == 2)
      {
        String str5 = paramXmlPullParser.getName();
        paramXmlPullParser.getNamespace();
        if (str5.equals("error"))
        {
          locali = f(paramXmlPullParser);
          continue;
        }
        localb = new com.xiaomi.smack.packet.b();
        localb.a(g(paramXmlPullParser));
        continue;
      }
      if ((j != 3) || (!paramXmlPullParser.getName().equals("iq")))
        continue;
      i = 1;
    }
    if (localb == null)
      if ((com.xiaomi.smack.packet.c.a == localc) || (com.xiaomi.smack.packet.c.b == localc))
      {
        d locald = new d();
        locald.k(str1);
        locald.m(str3);
        locald.n(str2);
        locald.a(com.xiaomi.smack.packet.c.c);
        locald.l(str4);
        locald.a(new i(j.a));
        paraml.a(locald);
        com.xiaomi.a.a.a.b.c("iq usage error. send packet in packet parser.");
        return null;
      }
    for (Object localObject = new e(); ; localObject = localb)
    {
      ((com.xiaomi.smack.packet.b)localObject).k(str1);
      ((com.xiaomi.smack.packet.b)localObject).m(str2);
      ((com.xiaomi.smack.packet.b)localObject).l(str4);
      ((com.xiaomi.smack.packet.b)localObject).n(str3);
      ((com.xiaomi.smack.packet.b)localObject).a(localc);
      ((com.xiaomi.smack.packet.b)localObject).a(locali);
      return localObject;
    }
  }

  // ERROR //
  public static com.xiaomi.smack.packet.e a(XmlPullParser paramXmlPullParser)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: ldc 133
    //   4: aload_0
    //   5: ldc 13
    //   7: ldc 135
    //   9: invokeinterface 21 3 0
    //   14: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +429 -> 446
    //   20: aload_0
    //   21: ldc 13
    //   23: ldc 27
    //   25: invokeinterface 21 3 0
    //   30: astore 25
    //   32: aload_0
    //   33: ldc 13
    //   35: ldc 15
    //   37: invokeinterface 21 3 0
    //   42: astore 26
    //   44: aload_0
    //   45: ldc 13
    //   47: ldc 25
    //   49: invokeinterface 21 3 0
    //   54: astore 27
    //   56: aload_0
    //   57: ldc 13
    //   59: ldc 23
    //   61: invokeinterface 21 3 0
    //   66: astore 28
    //   68: aload_0
    //   69: ldc 13
    //   71: ldc 29
    //   73: invokeinterface 21 3 0
    //   78: astore 29
    //   80: invokestatic 140	com/xiaomi/push/service/u:a	()Lcom/xiaomi/push/service/u;
    //   83: aload 25
    //   85: aload 28
    //   87: invokevirtual 143	com/xiaomi/push/service/u:b	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/R;
    //   90: astore 30
    //   92: aload 30
    //   94: ifnonnull +889 -> 983
    //   97: invokestatic 140	com/xiaomi/push/service/u:a	()Lcom/xiaomi/push/service/u;
    //   100: aload 25
    //   102: aload 27
    //   104: invokevirtual 143	com/xiaomi/push/service/u:b	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/R;
    //   107: astore 31
    //   109: aload 31
    //   111: ifnonnull +13 -> 124
    //   114: new 145	com/xiaomi/smack/w
    //   117: dup
    //   118: ldc 147
    //   120: invokespecial 149	com/xiaomi/smack/w:<init>	(Ljava/lang/String;)V
    //   123: athrow
    //   124: iconst_0
    //   125: istore 32
    //   127: aconst_null
    //   128: astore 33
    //   130: iload 32
    //   132: ifne +296 -> 428
    //   135: aload_0
    //   136: invokeinterface 38 1 0
    //   141: istore 34
    //   143: iload 34
    //   145: iconst_2
    //   146: if_icmpne +256 -> 402
    //   149: ldc 135
    //   151: aload_0
    //   152: invokeinterface 42 1 0
    //   157: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   160: ifne +13 -> 173
    //   163: new 145	com/xiaomi/smack/w
    //   166: dup
    //   167: ldc 151
    //   169: invokespecial 149	com/xiaomi/smack/w:<init>	(Ljava/lang/String;)V
    //   172: athrow
    //   173: aload_0
    //   174: invokeinterface 38 1 0
    //   179: iconst_4
    //   180: if_icmpeq +13 -> 193
    //   183: new 145	com/xiaomi/smack/w
    //   186: dup
    //   187: ldc 151
    //   189: invokespecial 149	com/xiaomi/smack/w:<init>	(Ljava/lang/String;)V
    //   192: athrow
    //   193: aload_0
    //   194: invokeinterface 154 1 0
    //   199: astore 35
    //   201: ldc 156
    //   203: aload 25
    //   205: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   208: ifne +13 -> 221
    //   211: ldc 158
    //   213: aload 25
    //   215: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   218: ifeq +84 -> 302
    //   221: new 160	com/xiaomi/smack/packet/d
    //   224: dup
    //   225: invokespecial 161	com/xiaomi/smack/packet/d:<init>	()V
    //   228: astore 36
    //   230: aload 36
    //   232: aload 25
    //   234: invokevirtual 162	com/xiaomi/smack/packet/d:l	(Ljava/lang/String;)V
    //   237: aload 36
    //   239: iconst_1
    //   240: invokevirtual 165	com/xiaomi/smack/packet/d:b	(Z)V
    //   243: aload 36
    //   245: aload 27
    //   247: invokevirtual 166	com/xiaomi/smack/packet/d:n	(Ljava/lang/String;)V
    //   250: aload 36
    //   252: aload 28
    //   254: invokevirtual 167	com/xiaomi/smack/packet/d:m	(Ljava/lang/String;)V
    //   257: aload 36
    //   259: aload 26
    //   261: invokevirtual 168	com/xiaomi/smack/packet/d:k	(Ljava/lang/String;)V
    //   264: aload 36
    //   266: aload 29
    //   268: invokevirtual 170	com/xiaomi/smack/packet/d:f	(Ljava/lang/String;)V
    //   271: new 172	com/xiaomi/smack/packet/a
    //   274: dup
    //   275: ldc 135
    //   277: aconst_null
    //   278: aconst_null
    //   279: aconst_null
    //   280: invokespecial 175	com/xiaomi/smack/packet/a:<init>	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    //   283: astore 37
    //   285: aload 37
    //   287: aload 35
    //   289: invokevirtual 177	com/xiaomi/smack/packet/a:b	(Ljava/lang/String;)V
    //   292: aload 36
    //   294: aload 37
    //   296: invokevirtual 178	com/xiaomi/smack/packet/d:a	(Lcom/xiaomi/smack/packet/a;)V
    //   299: aload 36
    //   301: areturn
    //   302: aload 31
    //   304: getfield 184	com/xiaomi/push/service/R:i	Ljava/lang/String;
    //   307: aload 26
    //   309: invokestatic 189	com/xiaomi/push/service/W:a	(Ljava/lang/String;Ljava/lang/String;)[B
    //   312: aload 35
    //   314: invokestatic 192	com/xiaomi/push/service/W:b	([BLjava/lang/String;)[B
    //   317: astore 38
    //   319: getstatic 10	com/xiaomi/smack/d/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   322: ifnonnull +26 -> 348
    //   325: invokestatic 198	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   328: invokevirtual 202	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   331: astore 41
    //   333: aload 41
    //   335: putstatic 10	com/xiaomi/smack/d/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   338: aload 41
    //   340: ldc 204
    //   342: iconst_1
    //   343: invokeinterface 208 3 0
    //   348: getstatic 10	com/xiaomi/smack/d/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   351: new 210	java/io/InputStreamReader
    //   354: dup
    //   355: new 212	java/io/ByteArrayInputStream
    //   358: dup
    //   359: aload 38
    //   361: invokespecial 215	java/io/ByteArrayInputStream:<init>	([B)V
    //   364: invokespecial 218	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   367: invokeinterface 222 2 0
    //   372: getstatic 10	com/xiaomi/smack/d/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   375: invokeinterface 38 1 0
    //   380: pop
    //   381: getstatic 10	com/xiaomi/smack/d/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   384: invokestatic 224	com/xiaomi/smack/d/c:a	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/e;
    //   387: astore 33
    //   389: goto -259 -> 130
    //   392: astore 40
    //   394: aload 40
    //   396: invokevirtual 227	org/xmlpull/v1/XmlPullParserException:printStackTrace	()V
    //   399: goto -51 -> 348
    //   402: iload 34
    //   404: iconst_3
    //   405: if_icmpne -275 -> 130
    //   408: aload_0
    //   409: invokeinterface 42 1 0
    //   414: ldc 229
    //   416: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   419: ifeq -289 -> 130
    //   422: iconst_1
    //   423: istore 32
    //   425: goto -295 -> 130
    //   428: aload 33
    //   430: ifnull +6 -> 436
    //   433: aload 33
    //   435: areturn
    //   436: new 145	com/xiaomi/smack/w
    //   439: dup
    //   440: ldc 151
    //   442: invokespecial 149	com/xiaomi/smack/w:<init>	(Ljava/lang/String;)V
    //   445: athrow
    //   446: new 160	com/xiaomi/smack/packet/d
    //   449: dup
    //   450: invokespecial 161	com/xiaomi/smack/packet/d:<init>	()V
    //   453: astore_2
    //   454: aload_0
    //   455: ldc 13
    //   457: ldc 15
    //   459: invokeinterface 21 3 0
    //   464: astore_3
    //   465: aload_3
    //   466: ifnonnull +6 -> 472
    //   469: ldc 231
    //   471: astore_3
    //   472: aload_2
    //   473: aload_3
    //   474: invokevirtual 168	com/xiaomi/smack/packet/d:k	(Ljava/lang/String;)V
    //   477: aload_2
    //   478: aload_0
    //   479: ldc 13
    //   481: ldc 23
    //   483: invokeinterface 21 3 0
    //   488: invokevirtual 167	com/xiaomi/smack/packet/d:m	(Ljava/lang/String;)V
    //   491: aload_2
    //   492: aload_0
    //   493: ldc 13
    //   495: ldc 25
    //   497: invokeinterface 21 3 0
    //   502: invokevirtual 166	com/xiaomi/smack/packet/d:n	(Ljava/lang/String;)V
    //   505: aload_2
    //   506: aload_0
    //   507: ldc 13
    //   509: ldc 27
    //   511: invokeinterface 21 3 0
    //   516: invokevirtual 162	com/xiaomi/smack/packet/d:l	(Ljava/lang/String;)V
    //   519: aload_2
    //   520: aload_0
    //   521: ldc 13
    //   523: ldc 233
    //   525: invokeinterface 21 3 0
    //   530: invokevirtual 235	com/xiaomi/smack/packet/d:a	(Ljava/lang/String;)V
    //   533: aload_0
    //   534: ldc 13
    //   536: ldc 237
    //   538: invokeinterface 21 3 0
    //   543: astore 24
    //   545: aload 24
    //   547: astore 5
    //   549: aload_0
    //   550: ldc 13
    //   552: ldc 239
    //   554: invokeinterface 21 3 0
    //   559: astore 23
    //   561: aload 23
    //   563: invokestatic 245	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   566: ifne +9 -> 575
    //   569: aload_2
    //   570: aload 23
    //   572: invokevirtual 246	com/xiaomi/smack/packet/d:b	(Ljava/lang/String;)V
    //   575: aload_0
    //   576: ldc 13
    //   578: ldc 248
    //   580: invokeinterface 21 3 0
    //   585: astore 22
    //   587: aload 22
    //   589: invokestatic 245	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   592: ifne +9 -> 601
    //   595: aload_2
    //   596: aload 22
    //   598: invokevirtual 249	com/xiaomi/smack/packet/d:c	(Ljava/lang/String;)V
    //   601: aload_0
    //   602: ldc 13
    //   604: ldc 251
    //   606: invokeinterface 21 3 0
    //   611: astore 21
    //   613: aload 21
    //   615: invokestatic 245	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   618: ifne +9 -> 627
    //   621: aload_2
    //   622: aload 21
    //   624: invokevirtual 254	com/xiaomi/smack/packet/d:d	(Ljava/lang/String;)V
    //   627: aload_0
    //   628: ldc 13
    //   630: ldc_w 256
    //   633: invokeinterface 21 3 0
    //   638: astore 20
    //   640: aload 20
    //   642: invokestatic 245	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   645: ifne +9 -> 654
    //   648: aload_2
    //   649: aload 20
    //   651: invokevirtual 259	com/xiaomi/smack/packet/d:e	(Ljava/lang/String;)V
    //   654: aload 5
    //   656: invokestatic 245	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   659: ifne +141 -> 800
    //   662: aload 5
    //   664: ldc_w 261
    //   667: invokevirtual 265	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   670: ifeq +130 -> 800
    //   673: iconst_1
    //   674: istore 10
    //   676: aload_2
    //   677: iload 10
    //   679: invokevirtual 267	com/xiaomi/smack/packet/d:a	(Z)V
    //   682: aload_2
    //   683: aload_0
    //   684: ldc 13
    //   686: ldc 29
    //   688: invokeinterface 21 3 0
    //   693: invokevirtual 170	com/xiaomi/smack/packet/d:f	(Ljava/lang/String;)V
    //   696: aload_0
    //   697: invokestatic 271	com/xiaomi/smack/d/c:h	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   700: astore 11
    //   702: aload 11
    //   704: ifnull +102 -> 806
    //   707: ldc 13
    //   709: aload 11
    //   711: invokevirtual 274	java/lang/String:trim	()Ljava/lang/String;
    //   714: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   717: ifne +89 -> 806
    //   720: aload_2
    //   721: aload 11
    //   723: invokevirtual 277	com/xiaomi/smack/packet/d:j	(Ljava/lang/String;)V
    //   726: aconst_null
    //   727: astore 13
    //   729: iload_1
    //   730: ifne +225 -> 955
    //   733: aload_0
    //   734: invokeinterface 38 1 0
    //   739: istore 14
    //   741: iload 14
    //   743: iconst_2
    //   744: if_icmpne +186 -> 930
    //   747: aload_0
    //   748: invokeinterface 42 1 0
    //   753: astore 15
    //   755: aload_0
    //   756: invokeinterface 45 1 0
    //   761: invokestatic 245	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   764: pop
    //   765: aload 15
    //   767: ldc_w 279
    //   770: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   773: ifeq +40 -> 813
    //   776: aload_0
    //   777: invokestatic 271	com/xiaomi/smack/d/c:h	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   780: pop
    //   781: aload_2
    //   782: aload_0
    //   783: invokestatic 281	com/xiaomi/smack/d/c:e	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   786: invokevirtual 283	com/xiaomi/smack/packet/d:g	(Ljava/lang/String;)V
    //   789: goto -60 -> 729
    //   792: astore 4
    //   794: aconst_null
    //   795: astore 5
    //   797: goto -248 -> 549
    //   800: iconst_0
    //   801: istore 10
    //   803: goto -127 -> 676
    //   806: invokestatic 287	com/xiaomi/smack/packet/e:n	()Ljava/lang/String;
    //   809: pop
    //   810: goto -84 -> 726
    //   813: aload 15
    //   815: ldc_w 289
    //   818: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   821: ifeq +50 -> 871
    //   824: aload_0
    //   825: ldc 13
    //   827: ldc_w 291
    //   830: invokeinterface 21 3 0
    //   835: astore 17
    //   837: aload_0
    //   838: invokestatic 281	com/xiaomi/smack/d/c:e	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   841: astore 18
    //   843: aload 17
    //   845: invokestatic 245	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   848: ifne +14 -> 862
    //   851: aload_2
    //   852: aload 18
    //   854: aload 17
    //   856: invokevirtual 294	com/xiaomi/smack/packet/d:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   859: goto -130 -> 729
    //   862: aload_2
    //   863: aload 18
    //   865: invokevirtual 296	com/xiaomi/smack/packet/d:h	(Ljava/lang/String;)V
    //   868: goto -139 -> 729
    //   871: aload 15
    //   873: ldc_w 298
    //   876: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   879: ifeq +19 -> 898
    //   882: aload 13
    //   884: ifnonnull -155 -> 729
    //   887: aload_0
    //   888: invokeinterface 301 1 0
    //   893: astore 13
    //   895: goto -166 -> 729
    //   898: aload 15
    //   900: ldc 47
    //   902: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   905: ifeq +14 -> 919
    //   908: aload_2
    //   909: aload_0
    //   910: invokestatic 57	com/xiaomi/smack/d/c:f	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/i;
    //   913: invokevirtual 302	com/xiaomi/smack/packet/d:a	(Lcom/xiaomi/smack/packet/i;)V
    //   916: goto -187 -> 729
    //   919: aload_2
    //   920: aload_0
    //   921: invokestatic 66	com/xiaomi/smack/d/c:g	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/smack/packet/a;
    //   924: invokevirtual 178	com/xiaomi/smack/packet/d:a	(Lcom/xiaomi/smack/packet/a;)V
    //   927: goto -198 -> 729
    //   930: iload 14
    //   932: iconst_3
    //   933: if_icmpne -204 -> 729
    //   936: aload_0
    //   937: invokeinterface 42 1 0
    //   942: ldc 229
    //   944: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   947: ifeq -218 -> 729
    //   950: iconst_1
    //   951: istore_1
    //   952: goto -223 -> 729
    //   955: aload_2
    //   956: aload 13
    //   958: invokevirtual 304	com/xiaomi/smack/packet/d:i	(Ljava/lang/String;)V
    //   961: aload_2
    //   962: areturn
    //   963: astore 9
    //   965: goto -311 -> 654
    //   968: astore 8
    //   970: goto -343 -> 627
    //   973: astore 7
    //   975: goto -374 -> 601
    //   978: astore 6
    //   980: goto -405 -> 575
    //   983: aload 30
    //   985: astore 31
    //   987: goto -878 -> 109
    //
    // Exception table:
    //   from	to	target	type
    //   325	348	392	org/xmlpull/v1/XmlPullParserException
    //   533	545	792	java/lang/Exception
    //   627	654	963	java/lang/Exception
    //   601	627	968	java/lang/Exception
    //   575	601	973	java/lang/Exception
    //   549	575	978	java/lang/Exception
  }

  public static f b(XmlPullParser paramXmlPullParser)
  {
    Object localObject = f.b.a;
    String str1 = paramXmlPullParser.getAttributeValue("", "type");
    if ((str1 != null) && (!str1.equals("")));
    f localf;
    try
    {
      f.b localb = f.b.valueOf(str1);
      localObject = localb;
      localf = new f((f.b)localObject);
      localf.m(paramXmlPullParser.getAttributeValue("", "to"));
      localf.n(paramXmlPullParser.getAttributeValue("", "from"));
      localf.l(paramXmlPullParser.getAttributeValue("", "chid"));
      String str2 = paramXmlPullParser.getAttributeValue("", "id");
      if (str2 == null)
        str2 = "ID_NOT_AVAILABLE";
      localf.k(str2);
      i = 0;
      while (true)
      {
        if (i != 0)
          break label365;
        j = paramXmlPullParser.next();
        if (j != 2)
          break label338;
        str3 = paramXmlPullParser.getName();
        paramXmlPullParser.getNamespace();
        if (!str3.equals("status"))
          break;
        localf.a(paramXmlPullParser.nextText());
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException3)
    {
      while (true)
      {
        int j;
        String str3;
        System.err.println("Found invalid presence type " + str1);
        continue;
        if (str3.equals("priority"))
        {
          try
          {
            localf.a(Integer.parseInt(paramXmlPullParser.nextText()));
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          catch (IllegalArgumentException localIllegalArgumentException2)
          {
            localf.a(0);
          }
          continue;
        }
        if (str3.equals("show"))
        {
          String str4 = paramXmlPullParser.nextText();
          try
          {
            localf.a(f.a.valueOf(str4));
          }
          catch (IllegalArgumentException localIllegalArgumentException1)
          {
            System.err.println("Found invalid presence mode " + str4);
          }
          continue;
        }
        if (str3.equals("error"))
        {
          localf.a(f(paramXmlPullParser));
          continue;
        }
        localf.a(g(paramXmlPullParser));
        continue;
        label338: if ((j != 3) || (!paramXmlPullParser.getName().equals("presence")))
          continue;
        int i = 1;
      }
    }
    label365: return (f)localf;
  }

  public static x c(XmlPullParser paramXmlPullParser)
  {
    x localx = new x();
    String str1 = paramXmlPullParser.getAttributeValue("", "id");
    String str2 = paramXmlPullParser.getAttributeValue("", "to");
    String str3 = paramXmlPullParser.getAttributeValue("", "from");
    String str4 = paramXmlPullParser.getAttributeValue("", "chid");
    y localy = y.a(paramXmlPullParser.getAttributeValue("", "type"));
    localx.k(str1);
    localx.m(str2);
    localx.n(str3);
    localx.l(str4);
    localx.a(localy);
    int i = 0;
    i locali = null;
    while (i == 0)
    {
      int j = paramXmlPullParser.next();
      if (j == 2)
      {
        if (!paramXmlPullParser.getName().equals("error"))
          continue;
        locali = f(paramXmlPullParser);
        continue;
      }
      if ((j != 3) || (!paramXmlPullParser.getName().equals("bind")))
        continue;
      i = 1;
    }
    localx.a(locali);
    return localx;
  }

  public static h d(XmlPullParser paramXmlPullParser)
  {
    h localh = null;
    int i = 0;
    while (i == 0)
    {
      int j = paramXmlPullParser.next();
      if (j == 2)
      {
        localh = new h(paramXmlPullParser.getName());
        continue;
      }
      if ((j != 3) || (!paramXmlPullParser.getName().equals("error")))
        continue;
      i = 1;
    }
    return localh;
  }

  private static String e(XmlPullParser paramXmlPullParser)
  {
    String str = "";
    int i = paramXmlPullParser.getDepth();
    while ((paramXmlPullParser.next() != 3) || (paramXmlPullParser.getDepth() != i))
      str = str + paramXmlPullParser.getText();
    return str;
  }

  private static i f(XmlPullParser paramXmlPullParser)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    String str1 = null;
    Object localObject1 = null;
    Object localObject2 = "-1";
    int j = 0;
    if (j < paramXmlPullParser.getAttributeCount())
      if (!paramXmlPullParser.getAttributeName(j).equals("code"))
        break label316;
    label316: for (Object localObject5 = paramXmlPullParser.getAttributeValue("", "code"); ; localObject5 = localObject2)
    {
      if (paramXmlPullParser.getAttributeName(j).equals("type"));
      for (Object localObject6 = paramXmlPullParser.getAttributeValue("", "type"); ; localObject6 = localObject1)
      {
        if (paramXmlPullParser.getAttributeName(j).equals("reason"))
          str1 = paramXmlPullParser.getAttributeValue("", "reason");
        j++;
        localObject1 = localObject6;
        localObject2 = localObject5;
        break;
        Object localObject3 = null;
        String str2 = null;
        while (i == 0)
        {
          int k = paramXmlPullParser.next();
          if (k == 2)
          {
            if (paramXmlPullParser.getName().equals("text"))
            {
              str2 = paramXmlPullParser.nextText();
              continue;
            }
            String str3 = paramXmlPullParser.getName();
            if ("urn:ietf:params:xml:ns:xmpp-stanzas".equals(paramXmlPullParser.getNamespace()))
            {
              localObject3 = str3;
              continue;
            }
            localArrayList.add(g(paramXmlPullParser));
            continue;
          }
          if (k == 3)
          {
            if (!paramXmlPullParser.getName().equals("error"))
              continue;
            i = 1;
            continue;
          }
          if (k != 4)
            continue;
          str2 = paramXmlPullParser.getText();
        }
        if (localObject1 == null);
        for (Object localObject4 = "cancel"; ; localObject4 = localObject1)
          return new i(Integer.parseInt((String)localObject2), (String)localObject4, str1, localObject3, str2, localArrayList);
      }
    }
  }

  private static a g(XmlPullParser paramXmlPullParser)
  {
    Object localObject = com.xiaomi.smack.c.c.a().a("all", "xm:chat");
    if ((localObject != null) && ((localObject instanceof z)))
      return z.a(paramXmlPullParser);
    return null;
  }

  private static String h(XmlPullParser paramXmlPullParser)
  {
    for (int i = 0; i < paramXmlPullParser.getAttributeCount(); i++)
    {
      String str = paramXmlPullParser.getAttributeName(i);
      if (("xml:lang".equals(str)) || (("lang".equals(str)) && ("xml".equals(paramXmlPullParser.getAttributePrefix(i)))))
        return paramXmlPullParser.getAttributeValue(i);
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.d.c
 * JD-Core Version:    0.6.0
 */