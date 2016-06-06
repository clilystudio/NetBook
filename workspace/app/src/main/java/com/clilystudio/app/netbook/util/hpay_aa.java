package com.clilystudio.app.netbook.util;

import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;

import com.clilystudio.app.netbook.R;

/**
 * Created by ShengGL on 2016/6/6.
 */
public class hpay_aa {
    public static int a;
    private static float c;
    private static String d;
    private static String e;
    private static String f;
    private final ViewPager b;

    public a(ViewPager paramViewPager) {
        this.b = paramViewPager;
    }

    public static String A(String paramString) {
        if ((d == null) || (e == null) || (f == null)) ;
        for (int i = 1; i != 0; i = 0)
            return null;
        String str = CipherUtil.b(e, CipherUtil.b(d, f)).substring(0, 20);
        if (I.h) {
            I.h = false;
            long l = Y("http://www.taobao.com");
            if (l <= 7200L)
                l = Y("http://www.163.com");
            if (l <= 7200L)
                l = Y("http://www.baidu.com/");
            if (l <= 7200L)
                l = 7200L + new Date().getTime() / 1000L;
            return CipherUtil.getNewAdvertWork(str, l, paramString, MyApplication.a());
        }
        return CipherUtil.getNewAdvert(str, paramString, MyApplication.a());
    }

    public static boolean A(Context paramContext) {
        return "1".equals(com.umeng.a.b.b(paramContext, "shelf_ad_third_enable"));
    }

    public static void B(Context paramContext) {
        b(paramContext, "start_night_theme", new Date().getTime());
    }

    public static boolean B(String paramString) {
        return paramString.replaceAll("/", "").equals(ReaderActivity.a.replaceAll("/", ""));
    }

    public static void C(Context paramContext) {
        long l1 = a(paramContext, "start_night_theme", 0L);
        long l2 = new Date().getTime();
        if ((l1 > 0L) && (l2 > l1))
            com.umeng.a.b.a(paramContext, "night_theme_period", null, (int) ((l2 - l1) / 1000L / 60L));
        b(paramContext, "start_night_theme", 0L);
    }

    // ERROR //
    public static byte[] C(String paramString) {
        // Byte code:
        //   0: ldc 129
        //   2: invokestatic 135	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
        //   5: aload_0
        //   6: ldc 137
        //   8: invokevirtual 140	java/lang/String:getBytes	(Ljava/lang/String;)[B
        //   11: invokevirtual 144	java/security/MessageDigest:digest	([B)[B
        //   14: astore_3
        //   15: new 146	java/lang/StringBuilder
        //   18: dup
        //   19: aload_3
        //   20: arraylength
        //   21: iconst_1
        //   22: ishl
        //   23: invokespecial 149	java/lang/StringBuilder:<init>	(I)V
        //   26: astore 4
        //   28: aload_3
        //   29: arraylength
        //   30: istore 5
        //   32: iconst_0
        //   33: istore 6
        //   35: iload 6
        //   37: iload 5
        //   39: if_icmpge +75 -> 114
        //   42: aload_3
        //   43: iload 6
        //   45: baload
        //   46: istore 7
        //   48: iload 7
        //   50: sipush 255
        //   53: iand
        //   54: bipush 16
        //   56: if_icmpge +11 -> 67
        //   59: aload 4
        //   61: ldc 151
        //   63: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   66: pop
        //   67: aload 4
        //   69: iload 7
        //   71: sipush 255
        //   74: iand
        //   75: invokestatic 161	java/lang/Integer:toHexString	(I)Ljava/lang/String;
        //   78: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   81: pop
        //   82: iinc 6 1
        //   85: goto -50 -> 35
        //   88: astore_1
        //   89: new 163	java/lang/RuntimeException
        //   92: dup
        //   93: ldc 165
        //   95: aload_1
        //   96: invokespecial 168	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   99: athrow
        //   100: astore_2
        //   101: getstatic 174	java/lang/System:out	Ljava/io/PrintStream;
        //   104: ldc 176
        //   106: invokevirtual 182	java/io/PrintStream:println	(Ljava/lang/String;)V
        //   109: aload_0
        //   110: invokevirtual 185	java/lang/String:getBytes	()[B
        //   113: areturn
        //   114: aload 4
        //   116: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   119: invokevirtual 185	java/lang/String:getBytes	()[B
        //   122: astore 10
        //   124: aload 10
        //   126: areturn
        //
        // Exception table:
        //   from	to	target	type
        //   0	15	88	java/lang/Exception
        //   15	32	100	java/lang/Exception
        //   42	48	100	java/lang/Exception
        //   59	67	100	java/lang/Exception
        //   67	82	100	java/lang/Exception
        //   89	100	100	java/lang/Exception
        //   114	124	100	java/lang/Exception
    }

    public static ArrayList<String> D(String paramString) {
        String str = "/ZhuiShuShenQi/Chapter" + File.separator + paramString;
        return c(new File(com.ushaqi.zhuishushenqi.c.a, str));
    }

    public static void D(Context paramContext) {
        b(paramContext, "start_auto_read_time", new Date().getTime());
    }

    public static void E(Context paramContext) {
        long l1 = a(paramContext, "start_auto_read_time", 0L);
        long l2 = new Date().getTime();
        if ((l1 > 0L) && (l2 > l1))
            com.umeng.a.b.a(paramContext, "auto_read_period", null, (int) ((l2 - l1) / 1000L / 60L));
        b(paramContext, "start_auto_read_time", 0L);
    }

    public static boolean E(String paramString) {
        if (!paramString.endsWith(File.separator))
            paramString = paramString + File.separator;
        File localFile1 = new File(paramString);
        if ((!localFile1.exists()) || (!localFile1.isDirectory()))
            return false;
        boolean bool = true;
        File[] arrayOfFile = localFile1.listFiles();
        if (arrayOfFile == null)
            return false;
        int i = arrayOfFile.length;
        for (int j = 0; ; j++) {
            File localFile2;
            if (j < i) {
                localFile2 = arrayOfFile[j];
                if (!localFile2.isFile())
                    break label116;
                bool = F(localFile2.getAbsolutePath());
                if (bool)
                    continue;
            }
            label116:
            do {
                if (bool)
                    break;
                return false;
                bool = E(localFile2.getAbsolutePath());
            }
            while (!bool);
        }
        return localFile1.delete();
    }

    public static boolean F(Context paramContext) {
        if (r(paramContext, "show_new_ads")) {
            String str1 = am.n(paramContext);
            String str2 = com.umeng.a.b.b(paramContext, "show_new_ads_disabled_channel");
            int k;
            if ((str2 != null) && (str2.length() > 0)) {
                String[] arrayOfString = str2.split(",");
                int j = arrayOfString.length;
                k = 0;
                if (k < j)
                    if (!arrayOfString[k].equals(str1)) ;
            }
            for (int i = 0; ; i = 1) {
                if (i == 0)
                    break label88;
                return true;
                k++;
                break;
            }
        }
        label88:
        return false;
    }

    public static boolean F(String paramString) {
        File localFile = new File(paramString);
        boolean bool1 = localFile.isFile();
        boolean bool2 = false;
        if (bool1) {
            boolean bool3 = localFile.exists();
            bool2 = false;
            if (bool3)
                bool2 = localFile.delete();
        }
        return bool2;
    }

    public static BufferedReader G(String paramString) {
        return new BufferedReader(new InputStreamReader(new FileInputStream(new File(paramString)), H(paramString)));
    }

    public static void G(Context paramContext) {
        com.umeng.a.b.a(paramContext, "HOT_KEY_WORD_CHANGE_CLICK", "CHANGE");
    }

    public static float H(Context paramContext) {
        String str = com.umeng.a.b.b(paramContext, "rate_bfd_recommend");
        try {
            float f1 = Float.parseFloat(str);
            return f1;
        } catch (Exception localException) {
        }
        return 0.0F;
    }

    public static String H(String paramString) {
        byte[] arrayOfByte = new byte[4096];
        FileInputStream localFileInputStream = new FileInputStream(paramString);
        UniversalDetector localUniversalDetector = new UniversalDetector(null);
        while (true) {
            int i = localFileInputStream.read(arrayOfByte);
            if ((i <= 0) || (localUniversalDetector.a()))
                break;
            localUniversalDetector.a(arrayOfByte, 0, i);
        }
        localUniversalDetector.c();
        String str = localUniversalDetector.b();
        localUniversalDetector.d();
        if (str == null)
            str = "utf-8";
        return str;
    }

    public static com.ushaqi.zhuishushenqi.download.a I(Context paramContext) {
        String str1 = com.umeng.a.b.b(paramContext, "app_name");
        String str2 = com.umeng.a.b.b(paramContext, "app_apk_url");
        String str3 = com.umeng.a.b.b(paramContext, "app_icon_url");
        String str4 = com.umeng.a.b.b(paramContext, "app_package_name");
        if ((!Z(str1)) && (!Z(str2)) && (!Z(str3)) && (!Z(str4)))
            return new com.ushaqi.zhuishushenqi.download.a(paramContext, str1, str2, str3, str4);
        return null;
    }

    public static File I(String paramString) {
        File localFile = J(com.ushaqi.zhuishushenqi.c.g);
        if (localFile == null)
            return null;
        return new File(localFile, paramString);
    }

    public static File J(String paramString) {
        File localFile;
        if (!d())
            localFile = null;
        do {
            return localFile;
            localFile = new File(paramString);
        }
        while (localFile.exists());
        localFile.mkdirs();
        return localFile;
    }

    public static void J(Context paramContext) {
        b(paramContext, "tts_start_time", new Date().getTime());
    }

    public static String K(String paramString) {
        if (Q(paramString))
            return "";
        return paramString.substring(1 + paramString.lastIndexOf(File.separator));
    }

    public static void K(Context paramContext) {
        long l1 = a(paramContext, "tts_start_time", 0L);
        long l2 = new Date().getTime();
        if ((l1 > 0L) && (l2 > l1))
            com.umeng.a.b.a(paramContext, "tts_speaking_period", null, (int) ((l2 - l1) / 1000L / 60L));
        b(paramContext, "tts_start_time", 0L);
    }

    public static int L(Context paramContext) {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager) paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        return localDisplayMetrics.heightPixels;
    }

    public static Bitmap L(String paramString) {
        try {
            HttpURLConnection localHttpURLConnection = (HttpURLConnection) new URL(paramString).openConnection();
            localHttpURLConnection.setDoInput(true);
            localHttpURLConnection.connect();
            Bitmap localBitmap = BitmapFactory.decodeStream(localHttpURLConnection.getInputStream());
            return localBitmap;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    public static SharedPreferences M(Context paramContext) {
        return paramContext.getSharedPreferences("umeng_general_config", 0);
    }

    public static HashMap<String, String> M(String paramString) {
        return (HashMap) k(com.ushaqi.zhuishushenqi.c.c, paramString);
    }

    public static String N(String paramString) {
        if (paramString == null)
            return "";
        return com.integralblue.httpresponsecache.compat.libcore.a.a.b(C(paramString)) + ".apk";
    }

    public static be N(Context paramContext) {
        try {
            be localbe = new be();
            Class localClass = Class.forName("android.net.TrafficStats");
            Class[] arrayOfClass1 = new Class[1];
            arrayOfClass1[0] = Integer.TYPE;
            Method localMethod1 = localClass.getMethod("getUidRxBytes", arrayOfClass1);
            Class[] arrayOfClass2 = new Class[1];
            arrayOfClass2[0] = Integer.TYPE;
            Method localMethod2 = localClass.getMethod("getUidTxBytes", arrayOfClass2);
            int i = paramContext.getApplicationInfo().uid;
            Object localObject;
            if (i == -1)
                localObject = null;
            while (localObject[0] > 0L)
                if (localObject[1] <= 0L) {
                    break;
                    long[] arrayOfLong = new long[2];
                    Object[] arrayOfObject1 = new Object[1];
                    arrayOfObject1[0] = Integer.valueOf(i);
                    arrayOfLong[0] = ((Long) localMethod1.invoke(null, arrayOfObject1)).longValue();
                    Object[] arrayOfObject2 = new Object[1];
                    arrayOfObject2[0] = Integer.valueOf(i);
                    arrayOfLong[1] = ((Long) localMethod2.invoke(null, arrayOfObject2)).longValue();
                    localObject = arrayOfLong;
                } else {
                    SharedPreferences localSharedPreferences = M(paramContext);
                    long l1 = localSharedPreferences.getLong("uptr", -1L);
                    long l2 = localSharedPreferences.getLong("dntr", -1L);
                    localSharedPreferences.edit().putLong("uptr", localObject[1]).putLong("dntr", localObject[0]).commit();
                    if ((l1 <= 0L) || (l2 <= 0L))
                        break label349;
                    localObject[0] -= l2;
                    localObject[1] -= l1;
                    if ((localObject[0] <= 0L) || (localObject[1] <= 0L))
                        break label351;
                    localbe.c((int) localObject[0]);
                    localbe.a((int) localObject[1]);
                    return localbe;
                }
        } catch (Exception localException) {
            bt.d("MobclickAgent", "sdk less than 2.2 has get no traffic");
            return null;
        }
        return null;
        label349:
        return null;
        label351:
        return null;
    }

    private static File O(Context paramContext) {
        File localFile = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), paramContext.getPackageName()), "cache");
        if (!localFile.exists()) {
            if (!localFile.mkdirs()) {
                com.nostra13.universalimageloader.b.d.c("Unable to create external cache directory", new Object[0]);
                localFile = null;
            }
        } else
            return localFile;
        try {
            new File(localFile, ".nomedia").createNewFile();
            return localFile;
        } catch (IOException localIOException) {
            com.nostra13.universalimageloader.b.d.b("Can't create \".nomedia\" file in application external cache directory", new Object[0]);
        }
        return localFile;
    }

    public static String[] O(String paramString) {
        if (paramString == null) ;
        String[] arrayOfString;
        do {
            return null;
            arrayOfString = paramString.split(":");
        }
        while (arrayOfString.length < 2);
        return arrayOfString;
    }

    private static SharedPreferences.Editor P(Context paramContext) {
        return PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    }

    public static String P(String paramString) {
        String str;
        if ("soso".equals(paramString))
            str = "http://book.soso.com/ajax?m=show_bookdetail&resourceid=...";
        boolean bool;
        do {
            return str;
            if ("sogou".equals(paramString))
                return "http://novel.mse.sogou.com/content.php/&page=1&md=...";
            if ("leidian".equals(paramString))
                return "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=...";
            bool = "easou".equals(paramString);
            str = null;
        }
        while (!bool);
        return "http://book.easou.com/ta/show.m?&gst=0&gid=11955147&nid=...";
    }

    public static boolean Q(String paramString) {
        boolean bool;
        if ((paramString == null) || (paramString.length() == 0)) {
            bool = true;
            return bool;
        }
        for (int i = 0; ; i++) {
            if (i >= paramString.length())
                break label63;
            int j = paramString.charAt(i);
            if ((j != 32) && (j != 9) && (j != 13)) {
                bool = false;
                if (j != 10)
                    break;
            }
        }
        label63:
        return true;
    }

    public static long R(String paramString) {
        try {
            long l = Long.parseLong(paramString);
            return l;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return 0L;
    }

    public static String S(String paramString) {
        if (paramString != null) {
            String str = org.litepal.c.a.a().e();
            if ("keep".equals(str))
                return paramString;
            if ("upper".equals(str))
                return paramString.toUpperCase(Locale.US);
            return paramString.toLowerCase(Locale.US);
        }
        return null;
    }

    public static String T(String paramString) {
        if (!TextUtils.isEmpty(paramString))
            return paramString.substring(0, 1).toUpperCase(Locale.US) + paramString.substring(1);
        if (paramString == null)
            return null;
        return "";
    }

    public static boolean U(String paramString) {
        if (("boolean".equals(paramString)) || ("java.lang.Boolean".equals(paramString))) ;
        while (("float".equals(paramString)) || ("java.lang.Float".equals(paramString)) || ("double".equals(paramString)) || ("java.lang.Double".equals(paramString)) || ("int".equals(paramString)) || ("java.lang.Integer".equals(paramString)) || ("long".equals(paramString)) || ("java.lang.Long".equals(paramString)) || ("short".equals(paramString)) || ("java.lang.Short".equals(paramString)) || ("char".equals(paramString)) || ("java.lang.Character".equals(paramString)) || ("java.lang.String".equals(paramString)) || ("java.util.Date".equals(paramString)))
            return true;
        return false;
    }

    public static String V(String paramString) {
        if (!TextUtils.isEmpty(paramString)) {
            if ('.' == paramString.charAt(-1 + paramString.length()))
                return null;
            try {
                org.litepal.a.a locala = (org.litepal.a.a) Class.forName(paramString).getAnnotation(org.litepal.a.a.class);
                if (locala != null) {
                    String str1 = locala.a();
                    if (!TextUtils.isEmpty(str1))
                        return S(str1);
                }
                String str2 = paramString.substring(1 + paramString.lastIndexOf("."));
                return str2;
            } catch (ClassNotFoundException localClassNotFoundException) {
                localClassNotFoundException.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private static String W(String paramString) {
        try {
            FileInputStream localFileInputStream = new FileInputStream(paramString);
            byte[] arrayOfByte = new byte[8];
            localFileInputStream.read(arrayOfByte);
            localFileInputStream.close();
            String str = g(arrayOfByte);
            return str;
        } catch (Exception localException) {
            com.mob.tools.e.a().w(localException);
        }
        return null;
    }

    private static Throwable X(String paramString) {
        throw new Throwable("Invalid int: \"" + paramString + "\"");
    }

    private static long Y(String paramString) {
        try {
            URLConnection localURLConnection = new URL(paramString).openConnection();
            localURLConnection.connect();
            return 7200L + localURLConnection.getDate() / 1000L;
        } catch (IOException localIOException) {
            return 0L;
        } catch (MalformedURLException localMalformedURLException) {
        }
        return 0L;
    }

    private static boolean Z(String paramString) {
        return (paramString == null) || ("".equals(paramString));
    }

    public static byte a(byte paramByte, int paramInt, boolean paramBoolean) {
        if (paramBoolean) ;
        for (int i = paramByte | 1 << paramInt; ; i = paramByte & (0xFFFFFFFF ^ 1 << paramInt))
            return (byte) i;
    }

    public static float a(Context paramContext, String paramString, float paramFloat) {
        if (paramContext == null)
            return 2.0F;
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getFloat(paramString, 2.0F);
    }

    private static int a(int paramInt1, int paramInt2) {
        int i;
        if ((paramInt2 < 2) || (paramInt2 > 36))
            i = -1;
        while (true) {
            return i;
            if ((48 <= paramInt1) && (paramInt1 <= 57))
                i = paramInt1 - 48;
            while (i >= paramInt2) {
                return -1;
                if ((97 <= paramInt1) && (paramInt1 <= 122))
                    i = 10 + (paramInt1 - 97);
                else if ((65 <= paramInt1) && (paramInt1 <= 90))
                    i = 10 + (paramInt1 - 65);
                else
                    i = -1;
            }
        }
    }

    public static int a(Context paramContext, float paramFloat) {
        if (paramContext == null)
            return 0;
        return (int) (0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().density);
    }

    public static int a(Context paramContext, int paramInt) {
        if (c <= 0.0F)
            c = paramContext.getResources().getDisplayMetrics().density;
        return (int) (0.5F + paramInt * c);
    }

    public static int a(Context paramContext, String paramString, int paramInt) {
        if (paramContext == null)
            return paramInt;
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getInt(paramString, paramInt);
    }

    public static int a(Context paramContext, String paramString1, String paramString2) {
        return paramContext.getApplicationContext().getResources().getIdentifier(paramString2, paramString1, paramContext.getApplicationContext().getPackageName());
    }

    public static int a(String paramString, int paramInt) {
        if (paramInt != -1)
            return paramInt;
        if ("http".equalsIgnoreCase(paramString))
            return 80;
        if ("https".equalsIgnoreCase(paramString))
            return 443;
        return -1;
    }

    public static int a(URI paramURI) {
        return a(paramURI.getScheme(), paramURI.getPort());
    }

    public static int a(URL paramURL) {
        return a(paramURL.getProtocol(), paramURL.getPort());
    }

    public static long a(Context paramContext, long paramLong, String paramString1, int paramInt, String paramString2) {
        try {
            boolean bool = TextUtils.isEmpty(paramString1);
            if (bool) ;
            long l1;
            for (long l2 = -1L; ; l2 = l1) {
                return l2;
                com.mob.a.a.c localc = com.mob.a.a.c.a(paramContext);
                ContentValues localContentValues = new ContentValues();
                localContentValues.put("exception_time", Long.valueOf(paramLong));
                localContentValues.put("exception_msg", paramString1.toString());
                localContentValues.put("exception_level", Integer.valueOf(paramInt));
                localContentValues.put("exception_md5", paramString2);
                l1 = localc.a("table_exception", localContentValues);
            }
        } finally {
        }
    }

    public static long a(Context paramContext, String paramString, long paramLong) {
        if (paramContext == null)
            return 0L;
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getLong(paramString, 0L);
    }

    public static long a(Context paramContext, ArrayList<String> paramArrayList) {
        long l;
        if (paramArrayList == null)
            l = 0L;
        while (true) {
            return l;
            try {
                StringBuilder localStringBuilder = new StringBuilder();
                for (int i = 0; i < paramArrayList.size(); i++) {
                    localStringBuilder.append("'");
                    localStringBuilder.append((String) paramArrayList.get(i));
                    localStringBuilder.append("'");
                    localStringBuilder.append(",");
                }
                String str = localStringBuilder.toString().substring(0, -1 + localStringBuilder.length());
                int j = com.mob.a.a.c.a(paramContext).a("table_exception", "exception_md5 in ( " + str + " )", null);
                com.mob.tools.log.d locald = com.mob.tools.e.a();
                Object[] arrayOfObject = new Object[1];
                arrayOfObject[0] = Integer.valueOf(j);
                locald.i("delete COUNT == %s", arrayOfObject);
                l = j;
            } finally {
            }
        }
    }

    private static long a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean) {
        long l1 = -9223372036854775808L / paramInt2;
        long l2 = 0L;
        long l3 = paramString.length();
        while (paramInt1 < l3) {
            int i = paramInt1 + 1;
            int j = a(paramString.charAt(paramInt1), paramInt2);
            if (j == -1)
                throw new Throwable("Invalid long: \"" + paramString + "\"");
            if (l1 > l2)
                throw new Throwable("Invalid long: \"" + paramString + "\"");
            long l4 = l2 * paramInt2 - j;
            if (l4 > l2)
                throw new Throwable("Invalid long: \"" + paramString + "\"");
            l2 = l4;
            paramInt1 = i;
        }
        if (!paramBoolean) {
            l2 = -l2;
            if (l2 < 0L)
                throw new Throwable("Invalid long: \"" + paramString + "\"");
        }
        return l2;
    }

    public static Bitmap a(Bitmap paramBitmap) {
        Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap);
        Paint localPaint = new Paint();
        Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
        localPaint.setAntiAlias(true);
        localCanvas.drawARGB(0, 0, 0, 0);
        localPaint.setColor(-12434878);
        localCanvas.drawCircle(paramBitmap.getWidth() / 2, paramBitmap.getHeight() / 2, paramBitmap.getWidth() / 2, localPaint);
        localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
        return localBitmap;
    }

    public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2) {
        int i = paramBitmap.getWidth();
        int j = paramBitmap.getHeight();
        Bitmap localBitmap = Bitmap.createBitmap((int) (0.5F + i / 8.0F), (int) (0.5F + j / 8.0F), Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap);
        localCanvas.scale(0.125F, 0.125F);
        Paint localPaint = new Paint();
        localPaint.setFlags(2);
        localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
        a(localBitmap, 3, true);
        return localBitmap;
    }

    private static Bitmap a(Bitmap paramBitmap, int paramInt, boolean paramBoolean) {
        if (paramInt <= 0)
            return null;
        int i = paramBitmap.getWidth();
        int j = paramBitmap.getHeight();
        int[] arrayOfInt1 = new int[i * j];
        paramBitmap.getPixels(arrayOfInt1, 0, i, 0, 0, i, j);
        int k = i - 1;
        int m = j - 1;
        int n = i * j;
        int i1 = 1 + (paramInt + paramInt);
        int[] arrayOfInt2 = new int[n];
        int[] arrayOfInt3 = new int[n];
        int[] arrayOfInt4 = new int[n];
        int[] arrayOfInt5 = new int[Math.max(i, j)];
        int i2 = i1 + 1 >> 1;
        int i3 = i2 * i2;
        int[] arrayOfInt6 = new int[i3 * 256];
        for (int i4 = 0; i4 < i3 * 256; i4++)
            arrayOfInt6[i4] = (i4 / i3);
        int[] arrayOfInt7 = {i1, 3};
        int[][] arrayOfInt = (int[][]) Array.newInstance(Integer.TYPE, arrayOfInt7);
        int i5 = paramInt + 1;
        int i6 = 0;
        int i7 = 0;
        int i67;
        for (int i8 = 0; i8 < j; i8 = i67) {
            int i50 = 0;
            int i51 = -paramInt;
            int i52 = 0;
            int i53 = 0;
            int i54 = 0;
            int i55 = 0;
            int i56 = i51;
            int i57 = 0;
            int i58 = 0;
            int i59 = 0;
            int i60 = 0;
            if (i56 <= paramInt) {
                int i78 = arrayOfInt1[(i7 + Math.min(k, Math.max(i56, 0)))];
                int[] arrayOfInt13 = arrayOfInt[(i56 + paramInt)];
                arrayOfInt13[0] = (0xFF & i78 >> 16);
                arrayOfInt13[1] = (0xFF & i78 >> 8);
                arrayOfInt13[2] = (i78 & 0xFF);
                int i79 = i5 - Math.abs(i56);
                i59 += i79 * arrayOfInt13[0];
                i58 += i79 * arrayOfInt13[1];
                i57 += i79 * arrayOfInt13[2];
                if (i56 > 0) {
                    i52 += arrayOfInt13[0];
                    i60 += arrayOfInt13[1];
                    i50 += arrayOfInt13[2];
                }
                while (true) {
                    i56++;
                    break;
                    i55 += arrayOfInt13[0];
                    i54 += arrayOfInt13[1];
                    i53 += arrayOfInt13[2];
                }
            }
            int i61 = i59;
            int i62 = i58;
            int i63 = i57;
            int i64 = 0;
            int i65 = paramInt;
            while (i64 < i) {
                arrayOfInt2[i7] = arrayOfInt6[i61];
                arrayOfInt3[i7] = arrayOfInt6[i62];
                arrayOfInt4[i7] = arrayOfInt6[i63];
                int i68 = i61 - i55;
                int i69 = i62 - i54;
                int i70 = i63 - i53;
                int[] arrayOfInt11 = arrayOfInt[((i1 + (i65 - paramInt)) % i1)];
                int i71 = i55 - arrayOfInt11[0];
                int i72 = i54 - arrayOfInt11[1];
                int i73 = i53 - arrayOfInt11[2];
                if (i8 == 0)
                    arrayOfInt5[i64] = Math.min(1 + (i64 + paramInt), k);
                int i74 = arrayOfInt1[(i6 + arrayOfInt5[i64])];
                arrayOfInt11[0] = (0xFF & i74 >> 16);
                arrayOfInt11[1] = (0xFF & i74 >> 8);
                arrayOfInt11[2] = (i74 & 0xFF);
                int i75 = i52 + arrayOfInt11[0];
                int i76 = i60 + arrayOfInt11[1];
                int i77 = i50 + arrayOfInt11[2];
                i61 = i68 + i75;
                i62 = i69 + i76;
                i63 = i70 + i77;
                i65 = (i65 + 1) % i1;
                int[] arrayOfInt12 = arrayOfInt[(i65 % i1)];
                i55 = i71 + arrayOfInt12[0];
                i54 = i72 + arrayOfInt12[1];
                i53 = i73 + arrayOfInt12[2];
                i52 = i75 - arrayOfInt12[0];
                i60 = i76 - arrayOfInt12[1];
                i50 = i77 - arrayOfInt12[2];
                i7++;
                i64++;
            }
            int i66 = i6 + i;
            i67 = i8 + 1;
            i6 = i66;
        }
        for (int i9 = 0; i9 < i; i9++) {
            int i10 = 0;
            int i11 = i * -paramInt;
            int i12 = -paramInt;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            int i17 = i12;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = i11;
            int i22 = 0;
            if (i17 <= paramInt) {
                int i45 = i9 + Math.max(0, i21);
                int[] arrayOfInt10 = arrayOfInt[(i17 + paramInt)];
                arrayOfInt10[0] = arrayOfInt2[i45];
                arrayOfInt10[1] = arrayOfInt3[i45];
                arrayOfInt10[2] = arrayOfInt4[i45];
                int i46 = i5 - Math.abs(i17);
                int i47 = i20 + i46 * arrayOfInt2[i45];
                int i48 = i19 + i46 * arrayOfInt3[i45];
                int i49 = i18 + i46 * arrayOfInt4[i45];
                if (i17 > 0) {
                    i13 += arrayOfInt10[0];
                    i22 += arrayOfInt10[1];
                    i10 += arrayOfInt10[2];
                }
                while (true) {
                    if (i17 < m)
                        i21 += i;
                    i17++;
                    i18 = i49;
                    i19 = i48;
                    i20 = i47;
                    break;
                    i16 += arrayOfInt10[0];
                    i15 += arrayOfInt10[1];
                    i14 += arrayOfInt10[2];
                }
            }
            int i23 = i19;
            int i24 = i20;
            int i25 = 0;
            int i26 = i18;
            int i27 = paramInt;
            int i28 = i10;
            int i29 = i22;
            int i30 = i13;
            int i31 = i14;
            int i32 = i15;
            int i33 = i16;
            int i34 = i9;
            while (i25 < j) {
                arrayOfInt1[i34] = (0xFF000000 & arrayOfInt1[i34] | arrayOfInt6[i24] << 16 | arrayOfInt6[i23] << 8 | arrayOfInt6[i26]);
                int i35 = i24 - i33;
                int i36 = i23 - i32;
                int i37 = i26 - i31;
                int[] arrayOfInt8 = arrayOfInt[((i1 + (i27 - paramInt)) % i1)];
                int i38 = i33 - arrayOfInt8[0];
                int i39 = i32 - arrayOfInt8[1];
                int i40 = i31 - arrayOfInt8[2];
                if (i9 == 0)
                    arrayOfInt5[i25] = (i * Math.min(i25 + i5, m));
                int i41 = i9 + arrayOfInt5[i25];
                arrayOfInt8[0] = arrayOfInt2[i41];
                arrayOfInt8[1] = arrayOfInt3[i41];
                arrayOfInt8[2] = arrayOfInt4[i41];
                int i42 = i30 + arrayOfInt8[0];
                int i43 = i29 + arrayOfInt8[1];
                int i44 = i28 + arrayOfInt8[2];
                i24 = i35 + i42;
                i23 = i36 + i43;
                i26 = i37 + i44;
                i27 = (i27 + 1) % i1;
                int[] arrayOfInt9 = arrayOfInt[i27];
                i33 = i38 + arrayOfInt9[0];
                i32 = i39 + arrayOfInt9[1];
                i31 = i40 + arrayOfInt9[2];
                i30 = i42 - arrayOfInt9[0];
                i29 = i43 - arrayOfInt9[1];
                i28 = i44 - arrayOfInt9[2];
                i34 += i;
                i25++;
            }
        }
        paramBitmap.setPixels(arrayOfInt1, 0, i, 0, 0, i, j);
        return paramBitmap;
    }

    public static Bitmap a(View paramView, int paramInt1, int paramInt2) {
        Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
        paramView.draw(new Canvas(localBitmap));
        return localBitmap;
    }

    public static Bitmap a(InputStream paramInputStream, int paramInt) {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
        localOptions.inPurgeable = true;
        localOptions.inInputShareable = true;
        localOptions.inSampleSize = paramInt;
        return BitmapFactory.decodeStream(paramInputStream, null, localOptions);
    }

    public static Bundle a(com.e.a.a.e.g paramg) {
        Bundle localBundle = new Bundle();
        localBundle.putInt("_wxobject_sdkVer", paramg.a);
        localBundle.putString("_wxobject_title", paramg.b);
        localBundle.putString("_wxobject_description", paramg.c);
        localBundle.putByteArray("_wxobject_thumbdata", paramg.d);
        String str;
        if (paramg.e != null) {
            str = paramg.e.getClass().getName();
            if ((str != null) && (str.length() != 0))
                break label111;
            com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "pathNewToOld fail, newPath is null");
        }
        while (true) {
            localBundle.putString("_wxobject_identifier_", str);
            localBundle.putString("_wxobject_mediatagname", paramg.f);
            return localBundle;
            label111:
            str = str.replace("com.tencent.mm.sdk.modelmsg", "com.tencent.mm.sdk.openapi");
        }
    }

    private static RemoteViews a(Context paramContext, NotificationCompatBase.Action paramAction) {
        if (paramAction.getActionIntent() == null) ;
        for (int i = 1; ; i = 0) {
            RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), R.layout.notification_media_action);
            localRemoteViews.setImageViewResource(R.id.action0, paramAction.getIcon());
            if (i == 0)
                localRemoteViews.setOnClickPendingIntent(R.id.action0, paramAction.getActionIntent());
            if (Build.VERSION.SDK_INT >= 15)
                localRemoteViews.setContentDescription(R.id.action0, paramAction.getTitle());
            return localRemoteViews;
        }
    }

    private static RemoteViews a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, int paramInt2, boolean paramBoolean2) {
        RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), paramInt2);
        int i;
        int j;
        label95:
        int k;
        label153:
        int m;
        if ((paramBitmap != null) && (Build.VERSION.SDK_INT >= 16)) {
            localRemoteViews.setImageViewBitmap(R.id.icon, paramBitmap);
            if (paramCharSequence1 != null)
                localRemoteViews.setTextViewText(R.id.title, paramCharSequence1);
            i = 0;
            if (paramCharSequence2 != null) {
                localRemoteViews.setTextViewText(R.id.text, paramCharSequence2);
                i = 1;
            }
            if (paramCharSequence3 == null)
                break label299;
            localRemoteViews.setTextViewText(R.id.info, paramCharSequence3);
            localRemoteViews.setViewVisibility(R.id.info, 0);
            j = 1;
            k = 0;
            if (paramCharSequence4 != null) {
                int i1 = Build.VERSION.SDK_INT;
                k = 0;
                if (i1 >= 16) {
                    localRemoteViews.setTextViewText(R.id.text, paramCharSequence4);
                    if (paramCharSequence2 == null)
                        break label393;
                    localRemoteViews.setTextViewText(R.id.text2, paramCharSequence2);
                    localRemoteViews.setViewVisibility(R.id.text2, 0);
                    k = 1;
                }
            }
            if ((k != 0) && (Build.VERSION.SDK_INT >= 16)) {
                if (paramBoolean2) {
                    float f1 = paramContext.getResources().getDimensionPixelSize(R.dimen.notification_subtext_size);
                    localRemoteViews.setTextViewTextSize(R.id.text, 0, f1);
                }
                localRemoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
            }
            if (paramLong != 0L) {
                if (!paramBoolean1)
                    break label409;
                localRemoteViews.setViewVisibility(R.id.chronometer, 0);
                localRemoteViews.setLong(R.id.chronometer, "setBase", paramLong + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                localRemoteViews.setBoolean(R.id.chronometer, "setStarted", true);
            }
            label261:
            m = R.id.line3;
            if (j == 0)
                break label434;
        }
        label299:
        label434:
        for (int n = 0; ; n = 8) {
            localRemoteViews.setViewVisibility(m, n);
            return localRemoteViews;
            localRemoteViews.setViewVisibility(R.id.icon, 8);
            break;
            if (paramInt1 > 0) {
                if (paramInt1 > paramContext.getResources().getInteger(R.integer.status_bar_notification_info_maxnum))
                    localRemoteViews.setTextViewText(R.id.info, paramContext.getResources().getString(R.string.status_bar_notification_info_overflow));
                while (true) {
                    localRemoteViews.setViewVisibility(R.id.info, 0);
                    j = 1;
                    break;
                    NumberFormat localNumberFormat = NumberFormat.getIntegerInstance();
                    localRemoteViews.setTextViewText(R.id.info, localNumberFormat.format(paramInt1));
                }
            }
            localRemoteViews.setViewVisibility(R.id.info, 8);
            j = i;
            break label95;
            localRemoteViews.setViewVisibility(R.id.text2, 8);
            k = 0;
            break label153;
            localRemoteViews.setViewVisibility(R.id.time, 0);
            localRemoteViews.setLong(R.id.time, "setTime", paramLong);
            break label261;
        }
    }

    public static com.e.a.a.e.g a(Bundle paramBundle) {
        com.e.a.a.e.g localg = new com.e.a.a.e.g();
        localg.a = paramBundle.getInt("_wxobject_sdkVer");
        localg.b = paramBundle.getString("_wxobject_title");
        localg.c = paramBundle.getString("_wxobject_description");
        localg.d = paramBundle.getByteArray("_wxobject_thumbdata");
        localg.f = paramBundle.getString("_wxobject_mediatagname");
        String str1 = paramBundle.getString("_wxobject_identifier_");
        if ((str1 == null) || (str1.length() == 0))
            com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "pathOldToNew fail, oldPath is null");
        for (String str2 = str1; (str2 == null) || (str2.length() <= 0); str2 = str1.replace("com.tencent.mm.sdk.openapi", "com.tencent.mm.sdk.modelmsg"))
            return localg;
        try {
            localg.e = ((K) Class.forName(str2).newInstance());
            return localg;
        } catch (Exception localException) {
            localException.printStackTrace();
            com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "get media object from bundle failed: unknown ident " + str2 + ", ex = " + localException.getMessage());
        }
        return localg;
    }

    // ERROR //
    public static com.ushaqi.zhuishushenqi.model.ChapterRoot a(String paramString, com.ushaqi.zhuishushenqi.model.ChapterLink[] paramArrayOfChapterLink, int paramInt) {
        // Byte code:
        //   0: aload_1
        //   1: iload_2
        //   2: aaload
        //   3: astore_3
        //   4: new 1237	com/ushaqi/zhuishushenqi/model/ChapterRoot
        //   7: dup
        //   8: invokespecial 1238	com/ushaqi/zhuishushenqi/model/ChapterRoot:<init>	()V
        //   11: astore 4
        //   13: new 1240	com/ushaqi/zhuishushenqi/model/Chapter
        //   16: dup
        //   17: invokespecial 1241	com/ushaqi/zhuishushenqi/model/Chapter:<init>	()V
        //   20: astore 5
        //   22: aload_0
        //   23: invokestatic 1243	com/arcsoft/hpay100/a/a:G	(Ljava/lang/String;)Ljava/io/BufferedReader;
        //   26: astore 13
        //   28: aload 13
        //   30: astore 7
        //   32: iconst_0
        //   33: istore 14
        //   35: iload 14
        //   37: aload_3
        //   38: invokevirtual 1248	com/ushaqi/zhuishushenqi/model/ChapterLink:getTxtLineOffset	()I
        //   41: if_icmpge +15 -> 56
        //   44: aload 7
        //   46: invokevirtual 1251	java/io/BufferedReader:readLine	()Ljava/lang/String;
        //   49: pop
        //   50: iinc 14 1
        //   53: goto -18 -> 35
        //   56: ldc 106
        //   58: astore 15
        //   60: iconst_m1
        //   61: istore 16
        //   63: iload_2
        //   64: iconst_m1
        //   65: aload_1
        //   66: arraylength
        //   67: iadd
        //   68: if_icmpge +18 -> 86
        //   71: aload_1
        //   72: iload_2
        //   73: iconst_1
        //   74: iadd
        //   75: aaload
        //   76: invokevirtual 1248	com/ushaqi/zhuishushenqi/model/ChapterLink:getTxtLineOffset	()I
        //   79: aload_3
        //   80: invokevirtual 1248	com/ushaqi/zhuishushenqi/model/ChapterLink:getTxtLineOffset	()I
        //   83: isub
        //   84: istore 16
        //   86: aload 7
        //   88: invokevirtual 1251	java/io/BufferedReader:readLine	()Ljava/lang/String;
        //   91: astore 17
        //   93: aload 17
        //   95: ifnull +42 -> 137
        //   98: iload 16
        //   100: ifeq +37 -> 137
        //   103: new 146	java/lang/StringBuilder
        //   106: dup
        //   107: invokespecial 218	java/lang/StringBuilder:<init>	()V
        //   110: aload 15
        //   112: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   115: ldc_w 1253
        //   118: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   121: aload 17
        //   123: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   126: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   129: astore 15
        //   131: iinc 16 255
        //   134: goto -48 -> 86
        //   137: aload 5
        //   139: aload 15
        //   141: invokestatic 1256	com/arcsoft/hpay100/a/a:z	(Ljava/lang/String;)Ljava/lang/String;
        //   144: invokevirtual 1259	com/ushaqi/zhuishushenqi/model/Chapter:setBody	(Ljava/lang/String;)V
        //   147: aload 4
        //   149: aload 5
        //   151: invokevirtual 1263	com/ushaqi/zhuishushenqi/model/ChapterRoot:setChapter	(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V
        //   154: aload 7
        //   156: invokevirtual 1264	java/io/BufferedReader:close	()V
        //   159: aload 4
        //   161: areturn
        //   162: astore 18
        //   164: aload 18
        //   166: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   169: aload 4
        //   171: areturn
        //   172: astore 11
        //   174: aconst_null
        //   175: astore 7
        //   177: aload 11
        //   179: invokevirtual 1265	java/io/FileNotFoundException:printStackTrace	()V
        //   182: aload 7
        //   184: ifnull +8 -> 192
        //   187: aload 7
        //   189: invokevirtual 1264	java/io/BufferedReader:close	()V
        //   192: aconst_null
        //   193: areturn
        //   194: astore 12
        //   196: aload 12
        //   198: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   201: goto -9 -> 192
        //   204: astore 9
        //   206: aconst_null
        //   207: astore 7
        //   209: aload 9
        //   211: invokevirtual 1266	java/io/IOException:printStackTrace	()V
        //   214: aload 7
        //   216: ifnull -24 -> 192
        //   219: aload 7
        //   221: invokevirtual 1264	java/io/BufferedReader:close	()V
        //   224: goto -32 -> 192
        //   227: astore 10
        //   229: aload 10
        //   231: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   234: goto -42 -> 192
        //   237: astore 6
        //   239: aconst_null
        //   240: astore 7
        //   242: aload 7
        //   244: ifnull +8 -> 252
        //   247: aload 7
        //   249: invokevirtual 1264	java/io/BufferedReader:close	()V
        //   252: aload 6
        //   254: athrow
        //   255: astore 8
        //   257: aload 8
        //   259: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   262: goto -10 -> 252
        //   265: astore 6
        //   267: goto -25 -> 242
        //   270: astore 9
        //   272: goto -63 -> 209
        //   275: astore 11
        //   277: goto -100 -> 177
        //
        // Exception table:
        //   from	to	target	type
        //   154	159	162	java/lang/Exception
        //   22	28	172	java/io/FileNotFoundException
        //   187	192	194	java/lang/Exception
        //   22	28	204	java/io/IOException
        //   219	224	227	java/lang/Exception
        //   22	28	237	finally
        //   247	252	255	java/lang/Exception
        //   35	50	265	finally
        //   63	86	265	finally
        //   86	93	265	finally
        //   103	131	265	finally
        //   137	154	265	finally
        //   177	182	265	finally
        //   209	214	265	finally
        //   35	50	270	java/io/IOException
        //   63	86	270	java/io/IOException
        //   86	93	270	java/io/IOException
        //   103	131	270	java/io/IOException
        //   137	154	270	java/io/IOException
        //   35	50	275	java/io/FileNotFoundException
        //   63	86	275	java/io/FileNotFoundException
        //   86	93	275	java/io/FileNotFoundException
        //   103	131	275	java/io/FileNotFoundException
        //   137	154	275	java/io/FileNotFoundException
    }

    public static File a(Context paramContext, boolean paramBoolean) {
        File localFile = null;
        if (paramBoolean) {
            boolean bool = "mounted".equals(Environment.getExternalStorageState());
            localFile = null;
            if (bool)
                if (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0)
                    break label114;
        }
        label114:
        for (int i = 1; ; i = 0) {
            localFile = null;
            if (i != 0)
                localFile = O(paramContext);
            if (localFile == null)
                localFile = paramContext.getCacheDir();
            if (localFile == null) {
                String str = "/data/data/" + paramContext.getPackageName() + "/cache/";
                com.nostra13.universalimageloader.b.d.c("Can't define system cache directory! '%s' will be used.", new Object[]{str});
                localFile = new File(str);
            }
            return localFile;
        }
    }

    public static Class<?> a(Type paramType) {
        for (Type localType = paramType; ; localType = ((ParameterizedType) localType).getRawType()) {
            if ((localType instanceof Class))
                return (Class) localType;
            if (!(localType instanceof ParameterizedType))
                break;
        }
        throw new IllegalArgumentException("TODO");
    }

    public static Object a(int paramInt, String paramString) {
        switch (paramInt) {
            default:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
                try {
                    com.e.a.a.b.a.a("MicroMsg.SDK.PluginProvider.Resolver", "unknown type");
                    break label84;
                    return Integer.valueOf(paramString);
                    return Long.valueOf(paramString);
                    return Boolean.valueOf(paramString);
                    return Float.valueOf(paramString);
                    Double localDouble = Double.valueOf(paramString);
                    return localDouble;
                } catch (Exception localException) {
                    localException.printStackTrace();
                    label84:
                    paramString = null;
                }
            case 3:
        }
        return paramString;
    }

    public static String a() {
        try {
            String str1 = m();
            boolean bool = am.a(str1);
            String str2 = null;
            if (bool) ;
            while (true) {
                return str2;
                String[] arrayOfString = str1.split("`");
                str2 = null;
                if (arrayOfString != null) {
                    int i = arrayOfString.length;
                    str2 = null;
                    if (i >= 2)
                        str2 = arrayOfString[0];
                }
            }
        } finally {
        }
    }

    public static String a(int paramInt, String paramString1, String paramString2) {
        try {
            SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes(), "DES");
            Cipher localCipher = Cipher.getInstance("DES");
            localCipher.init(paramInt, localSecretKeySpec);
            if (paramInt == 2) ;
            byte[] arrayOfByte2;
            for (byte[] arrayOfByte1 = com.alipay.sdk.c.a.a(paramString1); ; arrayOfByte1 = paramString1.getBytes("UTF-8")) {
                arrayOfByte2 = localCipher.doFinal(arrayOfByte1);
                if (paramInt != 2)
                    break;
                return new String(arrayOfByte2);
            }
            String str = com.alipay.sdk.c.a.a(arrayOfByte2);
            return str;
        } catch (Exception localException) {
        }
        return null;
    }

    public static String a(long paramLong, boolean paramBoolean) {
        if (paramLong < 1000L)
            return paramLong + " B";
        int i = (int) (Math.log(paramLong) / Math.log(1000.0D));
        String str = "kMGTPE".charAt(i - 1);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Double.valueOf(paramLong / Math.pow(1000.0D, i));
        arrayOfObject[1] = str;
        return String.format("%.1f %sB", arrayOfObject);
    }

    public static String a(Context paramContext) {
        try {
            Object localObject2 = a();
            if (am.a((String) localObject2)) {
                String str = b(paramContext);
                localObject2 = str;
            }
            return localObject2;
        } finally {
            localObject1 =finally;
            throw localObject1;
        }
    }

    public static String a(Context paramContext, String paramString1, String paramString2, String paramString3) {
        return paramContext.getSharedPreferences(paramString1, 0).getString(paramString2, paramString3);
    }

    // ERROR //
    public static String a(Context paramContext, String paramString, Map paramMap, boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2) {
        // Byte code:
        //   0: ldc_w 1398
        //   3: new 146	java/lang/StringBuilder
        //   6: dup
        //   7: ldc_w 1400
        //   10: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   13: aload_1
        //   14: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   17: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   20: invokestatic 1402	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   23: aload_0
        //   24: invokestatic 1405	com/arcsoft/hpay100/a/a:j	(Landroid/content/Context;)Z
        //   27: ifne +14 -> 41
        //   30: ldc_w 1398
        //   33: ldc_w 1407
        //   36: invokestatic 1402	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   39: aconst_null
        //   40: areturn
        //   41: aload_0
        //   42: sipush 30000
        //   45: ldc_w 1408
        //   48: iconst_1
        //   49: invokestatic 1413	com/arcsoft/hpay100/b/c:a	(Landroid/content/Context;IIZ)Lcom/arcsoft/hpay100/b/c;
        //   52: astore 10
        //   54: aload 10
        //   56: aload_0
        //   57: aload_1
        //   58: aconst_null
        //   59: aconst_null
        //   60: ldc_w 326
        //   63: iconst_0
        //   64: invokevirtual 1416	com/arcsoft/hpay100/b/c:a	(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/b/d;
        //   67: astore 13
        //   69: aload 13
        //   71: ifnull +115 -> 186
        //   74: aload 13
        //   76: ldc 137
        //   78: invokevirtual 1420	com/arcsoft/hpay100/b/d:a	(Ljava/lang/String;)Ljava/lang/String;
        //   81: astore 14
        //   83: ldc_w 1398
        //   86: new 146	java/lang/StringBuilder
        //   89: dup
        //   90: ldc_w 1422
        //   93: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   96: aload 14
        //   98: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   101: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   104: invokestatic 1402	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   107: aload 10
        //   109: invokevirtual 1424	com/arcsoft/hpay100/b/c:a	()V
        //   112: aload 14
        //   114: areturn
        //   115: astore 9
        //   117: aconst_null
        //   118: astore 8
        //   120: aload 9
        //   122: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   125: aload 8
        //   127: ifnull +8 -> 135
        //   130: aload 8
        //   132: invokevirtual 1424	com/arcsoft/hpay100/b/c:a	()V
        //   135: aconst_null
        //   136: areturn
        //   137: astore 7
        //   139: aconst_null
        //   140: astore 8
        //   142: aload 8
        //   144: ifnull +8 -> 152
        //   147: aload 8
        //   149: invokevirtual 1424	com/arcsoft/hpay100/b/c:a	()V
        //   152: aload 7
        //   154: athrow
        //   155: astore 12
        //   157: aload 10
        //   159: astore 8
        //   161: aload 12
        //   163: astore 7
        //   165: goto -23 -> 142
        //   168: astore 7
        //   170: goto -28 -> 142
        //   173: astore 11
        //   175: aload 10
        //   177: astore 8
        //   179: aload 11
        //   181: astore 9
        //   183: goto -63 -> 120
        //   186: aconst_null
        //   187: astore 14
        //   189: goto -106 -> 83
        //
        // Exception table:
        //   from	to	target	type
        //   41	54	115	java/lang/Exception
        //   41	54	137	finally
        //   54	69	155	finally
        //   74	83	155	finally
        //   83	107	155	finally
        //   120	125	168	finally
        //   54	69	173	java/lang/Exception
        //   74	83	173	java/lang/Exception
        //   83	107	173	java/lang/Exception
    }

    private static String a(BookInfo paramBookInfo) {
        JSONObject localJSONObject = new JSONObject();
        try {
            localJSONObject.put("bk_name", paramBookInfo.getTitle());
            String[] arrayOfString = paramBookInfo.getTags();
            if (arrayOfString != null) {
                String str2 = "";
                i = 0;
                if (i < arrayOfString.length) {
                    str2 = str2 + arrayOfString[i];
                    if (i != -1 + arrayOfString.length)
                        str2 = str2 + "|";
                } else {
                    localJSONObject.put("bk_tag", str2);
                }
            } else {
                localJSONObject.put("bk_author", paramBookInfo.getAuthor());
                localJSONObject.put("bk_updateTime", paramBookInfo.getUpdated());
                if (paramBookInfo.getIsSerial()) ;
                for (String str1 = "serialize"; ; str1 = "end") {
                    localJSONObject.put("bk_process", str1);
                    return localJSONObject.toString();
                }
            }
        } catch (JSONException localJSONException) {
            while (true) {
                int i;
                localJSONException.printStackTrace();
                continue;
                i++;
            }
        }
    }

    public static String a(Iterable<?> paramIterable, String paramString) {
        if (paramIterable == null) ;
        Iterator localIterator;
        do {
            return null;
            localIterator = paramIterable.iterator();
        }
        while (localIterator == null);
        if (!localIterator.hasNext())
            return "";
        Object localObject1 = localIterator.next();
        if (!localIterator.hasNext()) {
            if (localObject1 == null)
                return "";
            return localObject1.toString();
        }
        StringBuilder localStringBuilder = new StringBuilder(256);
        if (localObject1 != null)
            localStringBuilder.append(localObject1);
        while (localIterator.hasNext()) {
            if (paramString != null)
                localStringBuilder.append(paramString);
            Object localObject2 = localIterator.next();
            if (localObject2 != null)
                localStringBuilder.append(localObject2);
        }
        return localStringBuilder.toString();
    }

    public static String a(String paramString1, int paramInt, String paramString2, String paramString3) {
        if (paramInt == 5)
            paramString3 = "MIX_TOC_ID" + paramString1;
        while (paramInt == 0)
            return paramString3;
        if (h(paramInt)) {
            if (paramInt == 3) {
                String[] arrayOfString = O(paramString2);
                if (arrayOfString != null)
                    paramString2 = arrayOfString[0];
            }
            return paramString2 + "_" + paramString1;
        }
        return null;
    }

    // ERROR //
    public static String a(String paramString1, String paramString2) {
        // Byte code:
        //   0: aconst_null
        //   1: astore_2
        //   2: new 1500	java/security/spec/X509EncodedKeySpec
        //   5: dup
        //   6: aload_1
        //   7: invokestatic 1352	com/alipay/sdk/c/a:a	(Ljava/lang/String;)[B
        //   10: invokespecial 1501	java/security/spec/X509EncodedKeySpec:<init>	([B)V
        //   13: astore_3
        //   14: ldc_w 1503
        //   17: invokestatic 1508	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
        //   20: aload_3
        //   21: invokevirtual 1512	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
        //   24: astore 9
        //   26: ldc_w 1514
        //   29: invokestatic 1344	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
        //   32: astore 10
        //   34: aload 10
        //   36: iconst_1
        //   37: aload 9
        //   39: invokevirtual 1348	javax/crypto/Cipher:init	(ILjava/security/Key;)V
        //   42: aload_0
        //   43: ldc 137
        //   45: invokevirtual 140	java/lang/String:getBytes	(Ljava/lang/String;)[B
        //   48: astore 11
        //   50: aload 10
        //   52: invokevirtual 1517	javax/crypto/Cipher:getBlockSize	()I
        //   55: istore 12
        //   57: new 1519	java/io/ByteArrayOutputStream
        //   60: dup
        //   61: invokespecial 1520	java/io/ByteArrayOutputStream:<init>	()V
        //   64: astore 13
        //   66: iconst_0
        //   67: istore 14
        //   69: iload 14
        //   71: aload 11
        //   73: arraylength
        //   74: if_icmpge +48 -> 122
        //   77: aload 11
        //   79: arraylength
        //   80: iload 14
        //   82: isub
        //   83: iload 12
        //   85: if_icmpge +125 -> 210
        //   88: aload 11
        //   90: arraylength
        //   91: iload 14
        //   93: isub
        //   94: istore 18
        //   96: aload 13
        //   98: aload 10
        //   100: aload 11
        //   102: iload 14
        //   104: iload 18
        //   106: invokevirtual 1523	javax/crypto/Cipher:doFinal	([BII)[B
        //   109: invokevirtual 1526	java/io/ByteArrayOutputStream:write	([B)V
        //   112: iload 14
        //   114: iload 12
        //   116: iadd
        //   117: istore 14
        //   119: goto -50 -> 69
        //   122: new 36	java/lang/String
        //   125: dup
        //   126: aload 13
        //   128: invokevirtual 1529	java/io/ByteArrayOutputStream:toByteArray	()[B
        //   131: invokestatic 1360	com/alipay/sdk/c/a:a	([B)Ljava/lang/String;
        //   134: invokespecial 1530	java/lang/String:<init>	(Ljava/lang/String;)V
        //   137: astore 16
        //   139: aload 13
        //   141: invokevirtual 1531	java/io/ByteArrayOutputStream:close	()V
        //   144: aload 16
        //   146: areturn
        //   147: astore 6
        //   149: aconst_null
        //   150: astore 7
        //   152: aload 7
        //   154: ifnull +54 -> 208
        //   157: aload 7
        //   159: invokevirtual 1531	java/io/ByteArrayOutputStream:close	()V
        //   162: aconst_null
        //   163: areturn
        //   164: astore 8
        //   166: aconst_null
        //   167: areturn
        //   168: astore 4
        //   170: aload_2
        //   171: ifnull +7 -> 178
        //   174: aload_2
        //   175: invokevirtual 1531	java/io/ByteArrayOutputStream:close	()V
        //   178: aload 4
        //   180: athrow
        //   181: astore 17
        //   183: aload 16
        //   185: areturn
        //   186: astore 5
        //   188: goto -10 -> 178
        //   191: astore 4
        //   193: aload 13
        //   195: astore_2
        //   196: goto -26 -> 170
        //   199: astore 15
        //   201: aload 13
        //   203: astore 7
        //   205: goto -53 -> 152
        //   208: aconst_null
        //   209: areturn
        //   210: iload 12
        //   212: istore 18
        //   214: goto -118 -> 96
        //
        // Exception table:
        //   from	to	target	type
        //   2	66	147	java/lang/Exception
        //   157	162	164	java/io/IOException
        //   2	66	168	finally
        //   139	144	181	java/io/IOException
        //   174	178	186	java/io/IOException
        //   69	96	191	finally
        //   96	112	191	finally
        //   122	139	191	finally
        //   69	96	199	java/lang/Exception
        //   96	112	199	java/lang/Exception
        //   122	139	199	java/lang/Exception
    }

    public static String a(ArrayList<i<String>> paramArrayList) {
        StringBuilder localStringBuilder = new StringBuilder();
        Iterator localIterator = paramArrayList.iterator();
        int i = 0;
        while (localIterator.hasNext()) {
            i locali = (i) localIterator.next();
            if (i > 0)
                localStringBuilder.append('&');
            String str1 = locali.a;
            String str2 = (String) locali.b;
            if (str1 != null) {
                if (str2 == null)
                    str2 = "";
                localStringBuilder.append(j(str1) + "=" + j(str2));
                i++;
            }
        }
        return localStringBuilder.toString();
    }

    public static String a(Map<String, Integer> paramMap, String paramString1, String paramString2) {
        if ((paramString2 == null) || (paramString2.length() <= 0))
            return "";
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramString2 + ":");
        if ((paramString1 == null) || (paramString1.length() <= 0))
            return localStringBuilder.toString();
        String[] arrayOfString = paramString1.split(",");
        if ((arrayOfString == null) || (arrayOfString.length <= 0))
            return localStringBuilder.toString();
        if ((paramMap == null) || (paramMap.size() <= 0))
            return localStringBuilder.toString();
        Set localSet = paramMap.keySet();
        if ((localSet == null) || (localSet.size() <= 0))
            return localStringBuilder.toString();
        try {
            byte[] arrayOfByte = new byte[1 + arrayOfString.length / 8];
            for (int i = 0; i < arrayOfByte.length; i++)
                arrayOfByte[i] = 0;
            int j = arrayOfString.length;
            int k = 0;
            int m = 0;
            while (k < j) {
                String str = arrayOfString[k];
                int n = arrayOfByte[(m / 8)];
                if (localSet.contains(str)) {
                    n |= 128 >> m % 8;
                    System.out.println(m);
                }
                arrayOfByte[(m / 8)] = ((byte) n);
                m++;
                k++;
            }
            localStringBuilder.append(com.alipay.security.mobile.module.a.a.a.a(arrayOfByte));
            label268:
            return localStringBuilder.toString();
        } catch (Throwable localThrowable) {
            break label268;
        }
    }

    public static String a(byte[] paramArrayOfByte) {
        try {
            MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
            localMessageDigest.update(paramArrayOfByte);
            byte[] arrayOfByte = localMessageDigest.digest();
            StringBuffer localStringBuffer = new StringBuffer(arrayOfByte.length << 1);
            for (int i = 0; i < arrayOfByte.length; i++) {
                localStringBuffer.append(Character.forDigit((0xF0 & arrayOfByte[i]) >> 4, 16));
                localStringBuffer.append(Character.forDigit(0xF & arrayOfByte[i], 16));
            }
            String str = localStringBuffer.toString();
            return str;
        } catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {
        }
        return "";
    }

    private static ArrayList<com.mob.a.a.f> a(Context paramContext, String paramString, String[] paramArrayOfString) {
        ArrayList localArrayList;
        com.mob.a.a.f localf;
        Cursor localCursor;
        try {
            localArrayList = new ArrayList();
            localf = new com.mob.a.a.f();
            com.mob.a.a.c localc = com.mob.a.a.c.a(paramContext);
            String str = " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception group by exception_md5 having max(_id)";
            if ((!TextUtils.isEmpty(paramString)) && (paramArrayOfString != null) && (paramArrayOfString.length > 0))
                str = " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception where " + paramString + " group by exception_md5 having max(_id)";
            localCursor = localc.a(str, paramArrayOfString);
            while ((localCursor != null) && (localCursor.moveToNext())) {
                localf.b.add(localCursor.getString(0));
                HashMap localHashMap = new HashMap();
                localHashMap.put("type", Integer.valueOf(localCursor.getInt(1)));
                localHashMap.put("errat", Long.valueOf(localCursor.getLong(2)));
                localHashMap.put("msg", Base64.encodeToString(localCursor.getString(3).getBytes(), 2));
                localHashMap.put("times", Integer.valueOf(localCursor.getInt(4)));
                localf.a.add(localHashMap);
                if (localf.b.size() == 50) {
                    localArrayList.add(localf);
                    localf = new com.mob.a.a.f();
                }
            }
        } finally {
        }
        localCursor.close();
        if (localf.b.size() != 0)
            localArrayList.add(localf);
        return localArrayList;
    }

    public static ArrayList<com.mob.a.a.f> a(Context paramContext, String[] paramArrayOfString) {
        String str = "exception_level = ?";
        if (paramArrayOfString != null) ;
        while (true) {
            try {
                if (paramArrayOfString.length > 0) {
                    if (com.mob.a.a.c.a(paramContext).a("table_exception") > 0) {
                        ArrayList localArrayList2 = a(paramContext, str, paramArrayOfString);
                        localArrayList1 = localArrayList2;
                        return localArrayList1;
                    }
                    ArrayList localArrayList1 = new ArrayList();
                    continue;
                }
            } finally {
            }
            str = null;
            paramArrayOfString = null;
        }
    }

    public static List<String> a(SQLiteDatabase paramSQLiteDatabase) {
        ArrayList localArrayList = new ArrayList();
        Cursor localCursor = null;
        try {
            localCursor = paramSQLiteDatabase.rawQuery("select * from sqlite_master where type = ?", new String[]{"table"});
            if (localCursor.moveToFirst()) {
                boolean bool;
                do {
                    String str = localCursor.getString(localCursor.getColumnIndexOrThrow("tbl_name"));
                    if (!localArrayList.contains(str))
                        localArrayList.add(str);
                    bool = localCursor.moveToNext();
                }
                while (bool);
            }
            return localArrayList;
        } catch (Exception localException) {
            localException.printStackTrace();
            throw new DatabaseGenerateException(localException.getMessage());
        } finally {
            if (localCursor != null)
                localCursor.close();
        }
    }

    public static List<com.integralblue.httpresponsecache.compat.libcore.net.http.c> a(C paramC, String paramString) {
        ArrayList localArrayList = new ArrayList();
        for (int i = 0; i < paramC.e(); i++)
            if (paramString.equalsIgnoreCase(paramC.a(i))) {
                String str1 = paramC.b(i);
                int j = 0;
                while (j < str1.length()) {
                    int k = b(str1, j, " ");
                    String str2 = str1.substring(j, k).trim();
                    j = c(str1, k);
                    if (str1.regionMatches(j, "realm=\"", 0, 7)) {
                        int m = j + 7;
                        int n = b(str1, m, "\"");
                        String str3 = str1.substring(m, n);
                        j = c(str1, 1 + b(str1, n + 1, ","));
                        localArrayList.add(new com.integralblue.httpresponsecache.compat.libcore.net.http.c(str2, str3));
                    }
                }
            }
        return localArrayList;
    }

    public static Map<String, String> a(Context paramContext, int paramInt, String paramString) {
        HashMap localHashMap = new HashMap();
        localHashMap.put("uid", com.ushaqi.zhuishushenqi.util.e.c(paramContext));
        localHashMap.put("iid", paramString);
        localHashMap.put("iids", n());
        localHashMap.put("num", "20");
        return localHashMap;
    }

    public static Map<String, String> a(Context paramContext, Map<String, String> paramMap) {
        try {
            HashMap localHashMap = new HashMap();
            String str1 = am.a(paramMap, "tid", "");
            String str2 = am.a(paramMap, "utdid", "");
            String str3 = am.d(paramContext);
            String str4 = am.a(paramMap, "userId", "");
            localHashMap.put("AC1", str1);
            localHashMap.put("AC2", str2);
            localHashMap.put("AC3", "");
            localHashMap.put("AC4", str3);
            localHashMap.put("AC5", str4);
            return localHashMap;
        } finally {
            localObject =finally;
            throw localObject;
        }
    }

    public static JSONObject a(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
        JSONObject localJSONObject1 = new JSONObject();
        while (true) {
            int i;
            try {
                JSONObject[] arrayOfJSONObject = {paramJSONObject1, paramJSONObject2};
                i = 0;
                if (i < 2) {
                    JSONObject localJSONObject2 = arrayOfJSONObject[i];
                    if (localJSONObject2 == null)
                        break label91;
                    Iterator localIterator = localJSONObject2.keys();
                    if (!localIterator.hasNext())
                        break label91;
                    String str = (String) localIterator.next();
                    localJSONObject1.put(str, localJSONObject2.get(str));
                    continue;
                }
            } catch (JSONException localJSONException) {
            }
            return localJSONObject1;
            label91:
            i++;
        }
    }

    public static short a(byte[] paramArrayOfByte, int paramInt, ByteOrder paramByteOrder) {
        if (paramByteOrder == ByteOrder.BIG_ENDIAN)
            return (short) (paramArrayOfByte[0] << 8 | 0xFF & paramArrayOfByte[1]);
        return (short) (paramArrayOfByte[1] << 8 | 0xFF & paramArrayOfByte[0]);
    }

    public static void a(int paramInt1, int paramInt2, int paramInt3) {
        if (((paramInt2 | paramInt3) < 0) || (paramInt2 > paramInt1) || (paramInt1 - paramInt2 < paramInt3))
            throw new ArrayIndexOutOfBoundsException(paramInt1, paramInt2, paramInt3);
    }

    public static void a(Activity paramActivity) {
        String[] arrayOfString = (String[]) com.xiaomi.mipush.sdk.d.b(paramActivity).toArray(new String[0]);
        ArrayList localArrayList1 = new ArrayList();
        if (arrayOfString != null) {
            int i = arrayOfString.length;
            int j = 0;
            if (j < i) {
                String str3 = arrayOfString[j];
                if ((str3 != null) && (str3.length() > 5)) ;
                for (String str4 = str3.substring(5); ; str4 = "") {
                    localArrayList1.add(str4);
                    j++;
                    break;
                }
            }
        }
        ArrayList localArrayList2 = new ArrayList();
        HashSet localHashSet = new HashSet();
        List localList = BookReadRecord.getAll();
        if (localList != null) {
            Iterator localIterator1 = localList.iterator();
            while (localIterator1.hasNext())
                localArrayList2.add(((BookReadRecord) localIterator1.next()).getBookId());
            localHashSet.addAll(localArrayList1);
            localHashSet.retainAll(localArrayList2);
            Iterator localIterator2 = localArrayList1.iterator();
            while (localIterator2.hasNext()) {
                String str2 = (String) localIterator2.next();
                if (!localHashSet.contains(str2))
                    t(str2);
            }
            Iterator localIterator3 = localArrayList2.iterator();
            while (localIterator3.hasNext()) {
                String str1 = (String) localIterator3.next();
                if (!localHashSet.contains(str1))
                    r(str1);
            }
        }
    }

    public static void a(Activity paramActivity, HPaySMS paramHPaySMS, y paramy) {
        b("dalongTest", "startMgdmPay");
        String str1 = paramHPaySMS.mOrderidHR;
        String str2 = paramHPaySMS.mCorpFeeCode;
        b("dalongTest", "oderid:" + str1);
        b("dalongTest", "itemId:" + str2);
        MiguSdk.pay(paramActivity, str2, "assets/billing.xml", "", str1, new b(paramHPaySMS, paramy, paramActivity, str2));
    }

    public static <T extends NotificationCompatBase.Action> void a(Notification paramNotification, Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, List<T> paramList, boolean paramBoolean2, PendingIntent paramPendingIntent) {
        int i = Math.min(paramList.size(), 5);
        if (i <= 3) ;
        RemoteViews localRemoteViews1;
        for (int j = R.layout.notification_template_big_media_narrow; ; j = R.layout.notification_template_big_media) {
            localRemoteViews1 = a(paramContext, paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramBitmap, paramCharSequence4, paramBoolean1, paramLong, j, false);
            localRemoteViews1.removeAllViews(R.id.media_actions);
            if (i <= 0)
                break;
            for (int k = 0; k < i; k++) {
                RemoteViews localRemoteViews2 = a(paramContext, (NotificationCompatBase.Action) paramList.get(k));
                localRemoteViews1.addView(R.id.media_actions, localRemoteViews2);
            }
        }
        if (paramBoolean2) {
            localRemoteViews1.setViewVisibility(R.id.cancel_action, 0);
            localRemoteViews1.setInt(R.id.cancel_action, "setAlpha", paramContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
            localRemoteViews1.setOnClickPendingIntent(R.id.cancel_action, paramPendingIntent);
        }
        while (true) {
            paramNotification.bigContentView = localRemoteViews1;
            if (paramBoolean2)
                paramNotification.flags = (0x2 | paramNotification.flags);
            return;
            localRemoteViews1.setViewVisibility(R.id.cancel_action, 8);
        }
    }

    public static void a(Context paramContext, int paramInt1, int paramInt2) {
        String str = T.a(paramInt1);
        if (str != null) {
            if (paramInt2 != 1)
                break label23;
            com.umeng.a.b.a(paramContext, "share_book_info_platform", str);
        }
        label23:
        do {
            return;
            if (paramInt2 == 2) {
                com.umeng.a.b.a(paramContext, "share_post_detail_platform", str);
                return;
            }
        }
        while (paramInt2 != 3);
        com.umeng.a.b.a(paramContext, "share_book_list_platform", str);
    }

    // am_CommonUtil.configListView
    public static void a(Context paramContext, ListView paramListView) {
        int i = paramContext.getResources().getDimensionPixelSize(R.dimen.tab_overlap);
        View localView = new View(paramContext);
        localView.setLayoutParams(new AbsListView.LayoutParams(-2, i));
        if (a(paramContext, "customer_night_theme", false)) {
            localView.setBackgroundResource(R.drawable.bg_dark_list_item);
        } else {
            localView.setBackgroundResource(R.drawable.bg_list_item);
        }
        localView.setEnabled(false);
        paramListView.addHeaderView(localView);
    }

    public static void a(Context paramContext, Advert paramAdvert) {
        if (paramAdvert == null)
            e(paramContext, "ad_shelf_show", null);
        String str1;
        String str2;
        do {
            return;
            str1 = paramAdvert.get_id();
            str2 = d(paramContext, "ad_shelf_show", null);
        }
        while ((str2 != null) && (str2.contains(str1)));
        com.umeng.a.b.a(paramContext, "zssq_ad_show_" + paramAdvert.getPosition(), paramAdvert.getTitle());
        e(paramContext, "ad_shelf_show", str2 + str1);
    }

    public static void a(Context paramContext, BookInfo paramBookInfo) {
        HashMap localHashMap = new HashMap();
        localHashMap.put("iid", paramBookInfo.getId());
        localHashMap.put("title", paramBookInfo.getTitle());
        localHashMap.put("cat", paramBookInfo.getCat());
        localHashMap.put("author", paramBookInfo.getAuthor());
        if (paramBookInfo.getIsSerial()) ;
        for (String str = "serialize"; ; str = "end") {
            localHashMap.put("tag", str);
            localHashMap.put("attr", a(paramBookInfo));
            com.a.a.a.d(paramContext, paramBookInfo.getId(), localHashMap);
            return;
        }
    }

    // ERROR //
    public static void a(Context paramContext, String paramString) {
        // Byte code:
        //   0: ldc 2
        //   2: monitorenter
        //   3: aload_0
        //   4: ldc_w 1947
        //   7: iconst_0
        //   8: invokevirtual 437	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   11: invokeinterface 522 1 0
        //   16: astore 4
        //   18: aload 4
        //   20: ifnull +29 -> 49
        //   23: aload 4
        //   25: ldc_w 1949
        //   28: invokestatic 1952	com/alipay/security/mobile/module/a/a/b:a	()Ljava/lang/String;
        //   31: aload_1
        //   32: invokestatic 1954	com/alipay/security/mobile/module/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   35: invokeinterface 1957 3 0
        //   40: pop
        //   41: aload 4
        //   43: invokeinterface 531 1 0
        //   48: pop
        //   49: ldc 2
        //   51: monitorexit
        //   52: return
        //   53: astore_3
        //   54: ldc 2
        //   56: monitorexit
        //   57: aload_3
        //   58: athrow
        //   59: astore_2
        //   60: goto -11 -> 49
        //
        // Exception table:
        //   from	to	target	type
        //   3	18	53	finally
        //   23	49	53	finally
        //   3	18	59	java/lang/Throwable
        //   23	49	59	java/lang/Throwable
    }

    public static void a(Context paramContext, String paramString, Map<String, String> paramMap) {
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences(paramString, 0).edit();
        if (localEditor != null) {
            localEditor.clear();
            Iterator localIterator = paramMap.keySet().iterator();
            while (localIterator.hasNext()) {
                String str = (String) localIterator.next();
                localEditor.putString(str, (String) paramMap.get(str));
            }
            localEditor.commit();
        }
    }

    public static void a(FragmentActivity paramFragmentActivity) {
        if (paramFragmentActivity == null)
            return;
        FragmentManager localFragmentManager = paramFragmentActivity.getSupportFragmentManager();
        FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
        Fragment localFragment = localFragmentManager.findFragmentByTag("dialog_gender_intro");
        if (localFragment != null)
            localFragmentTransaction.remove(localFragment);
        DialogUtil.GenderIntroDialog localGenderIntroDialog = new DialogUtil.GenderIntroDialog();
        localGenderIntroDialog.setCancelable(false);
        localGenderIntroDialog.show(localFragmentTransaction, "dialog_gender_intro");
    }

    public static void a(FragmentActivity paramFragmentActivity, ReaderTocDialog paramReaderTocDialog) {
        FragmentManager localFragmentManager = paramFragmentActivity.getSupportFragmentManager();
        FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
        Fragment localFragment = localFragmentManager.findFragmentByTag("ReaderTocDialog");
        if (localFragment != null)
            localFragmentTransaction.remove(localFragment);
        try {
            localFragmentTransaction.add(paramReaderTocDialog, "ReaderTocDialog");
            localFragmentTransaction.commitAllowingStateLoss();
            return;
        } catch (IllegalStateException localIllegalStateException) {
            localIllegalStateException.printStackTrace();
        }
    }

    public static <T extends NotificationCompatBase.Action> void a(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, List<T> paramList, int[] paramArrayOfInt, boolean paramBoolean2, PendingIntent paramPendingIntent) {
        RemoteViews localRemoteViews1 = a(paramContext, paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramBitmap, paramCharSequence4, paramBoolean1, paramLong, R.layout.notification_template_media, true);
        int i = paramList.size();
        int j;
        if (paramArrayOfInt == null) {
            j = 0;
            localRemoteViews1.removeAllViews(R.id.media_actions);
            if (j <= 0) ;
        } else {
            for (int k = 0; ; k++) {
                if (k >= j)
                    break label162;
                if (k >= i) {
                    Object[] arrayOfObject = new Object[2];
                    arrayOfObject[0] = Integer.valueOf(k);
                    arrayOfObject[1] = Integer.valueOf(i - 1);
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", arrayOfObject));
                    j = Math.min(paramArrayOfInt.length, 3);
                    break;
                }
                RemoteViews localRemoteViews2 = a(paramContext, (NotificationCompatBase.Action) paramList.get(paramArrayOfInt[k]));
                localRemoteViews1.addView(R.id.media_actions, localRemoteViews2);
            }
        }
        label162:
        if (paramBoolean2) {
            localRemoteViews1.setViewVisibility(R.id.end_padder, 8);
            localRemoteViews1.setViewVisibility(R.id.cancel_action, 0);
            localRemoteViews1.setOnClickPendingIntent(R.id.cancel_action, paramPendingIntent);
            localRemoteViews1.setInt(R.id.cancel_action, "setAlpha", paramContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
        }
        while (true) {
            paramNotificationBuilderWithBuilderAccessor.getBuilder().setContent(localRemoteViews1);
            if (paramBoolean2)
                paramNotificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
            return;
            localRemoteViews1.setViewVisibility(R.id.end_padder, 0);
            localRemoteViews1.setViewVisibility(R.id.cancel_action, 8);
        }
    }

    // ERROR //
    public static void a(View paramView) {
        // Byte code:
        //   0: aload_0
        //   1: ifnull +9 -> 10
        //   4: invokestatic 2038	com/arcsoft/hpay100/a/a:k	()Z
        //   7: ifne +4 -> 11
        //   10: return
        //   11: iconst_1
        //   12: anewarray 464	java/lang/Class
        //   15: astore_2
        //   16: aload_2
        //   17: iconst_0
        //   18: getstatic 472	java/lang/Integer:TYPE	Ljava/lang/Class;
        //   21: aastore
        //   22: ldc_w 972
        //   25: ldc_w 2040
        //   28: aload_2
        //   29: invokevirtual 478	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //   32: astore_3
        //   33: ldc_w 972
        //   36: ldc_w 2042
        //   39: invokevirtual 2046	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
        //   42: astore 4
        //   44: iconst_1
        //   45: anewarray 4	java/lang/Object
        //   48: astore 5
        //   50: aload 5
        //   52: iconst_0
        //   53: aload 4
        //   55: aconst_null
        //   56: invokevirtual 2049	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
        //   59: aastore
        //   60: aload_3
        //   61: aload_0
        //   62: aload 5
        //   64: invokevirtual 499	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //   67: pop
        //   68: return
        //   69: astore_1
        //   70: aload_1
        //   71: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   74: return
        //   75: astore 6
        //   77: goto -17 -> 60
        //
        // Exception table:
        //   from	to	target	type
        //   11	50	69	java/lang/Exception
        //   60	68	69	java/lang/Exception
        //   50	60	75	java/lang/Exception
    }

    public static void a(View paramView, Runnable paramRunnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            paramView.postOnAnimation(paramRunnable);
            return;
        }
        paramView.postDelayed(paramRunnable, 16L);
    }

    public static void a(com.alipay.b.a.d paramd) {
        try {
            boolean bool = am.a(paramd.a());
            if (bool) ;
            while (true) {
                return;
                if (!paramd.a().equals(a())) {
                    String str1 = paramd.a() + "`" + paramd.d();
                    if (str1 != null)
                        try {
                            String str2 = com.alipay.security.mobile.module.a.a.b.a(com.alipay.security.mobile.module.a.a.b.a(), str1);
                            JSONObject localJSONObject = new JSONObject();
                            localJSONObject.put("device", str2);
                            am.c("deviceid_v2", localJSONObject.toString());
                        } catch (Exception localException) {
                        }
                }
            }
        } finally {
        }
    }

    public static void a(TocSource paramTocSource, String paramString) {
        String str1 = paramTocSource.getSource();
        String str2 = paramTocSource.getSourceId();
        SourceRecord localSourceRecord = SourceRecord.get(paramString, str1);
        if (localSourceRecord == null)
            SourceRecord.create(paramString, str1, str2);
        while (localSourceRecord.getSourceId() != null)
            return;
        localSourceRecord.setSourceId(str2);
        localSourceRecord.save();
    }

    public static void a(Closeable paramCloseable) {
        if (paramCloseable != null) ;
        try {
            paramCloseable.close();
            return;
        } catch (IOException localIOException) {
        }
    }

    public static void a(File paramFile) {
        if (!paramFile.exists())
            return;
        if (paramFile.isFile()) {
            paramFile.delete();
            return;
        }
        String[] arrayOfString = paramFile.list();
        if ((arrayOfString == null) || (arrayOfString.length <= 0)) {
            paramFile.delete();
            return;
        }
        int i = arrayOfString.length;
        int j = 0;
        if (j < i) {
            File localFile = new File(paramFile, arrayOfString[j]);
            if (localFile.isDirectory())
                a(localFile);
            while (true) {
                j++;
                break;
                localFile.delete();
            }
        }
        paramFile.delete();
    }

    public static void a(FileInputStream paramFileInputStream, FileOutputStream paramFileOutputStream) {
        byte[] arrayOfByte = new byte[65536];
        for (int i = paramFileInputStream.read(arrayOfByte); i > 0; i = paramFileInputStream.read(arrayOfByte))
            paramFileOutputStream.write(arrayOfByte, 0, i);
        paramFileInputStream.close();
        paramFileOutputStream.close();
    }

    public static <T> void a(T paramT, String paramString1, String paramString2) {
        try {
            File localFile = new File(J(paramString1), paramString2);
            if (!localFile.exists())
                localFile.createNewFile();
            ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(new FileOutputStream(localFile));
            localObjectOutputStream.writeObject(paramT);
            localObjectOutputStream.flush();
            localObjectOutputStream.close();
            return;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
    }

    public static void a(String paramString1, Activity paramActivity, String paramString2) {
        DownloadManager.Query localQuery = new DownloadManager.Query();
        DownloadManager localDownloadManager = (DownloadManager) paramActivity.getSystemService("download");
        Cursor localCursor = localDownloadManager.query(localQuery);
        String str = null;
        int i = 0;
        if (localCursor != null)
            while (localCursor.moveToNext())
                if (B(localCursor.getString(localCursor.getColumnIndex("uri"))))
                    if (localCursor.getInt(localCursor.getColumnIndex("status")) == 8) {
                        i = 1;
                        str = localCursor.getString(localCursor.getColumnIndex("local_uri"));
                    } else {
                        com.ushaqi.zhuishushenqi.util.e.a(paramActivity, "正在下载,请稍后");
                    }
        do {
            return;
            localCursor.close();
            if ((i == 0) || (str == null))
                break;
        }
        while (a(paramActivity, new File(Uri.parse(str).getPath())));
        a(paramString1, paramString2, localDownloadManager);
        return;
        a(paramString1, paramString2, localDownloadManager);
    }

    public static void a(String paramString, com.koushikdutta.async.http.b.b paramb) {
        int i = 0;
        while (i < paramString.length()) {
            int j = b(paramString, i, "=,");
            String str1 = paramString.substring(i, j).trim();
            if ((j == paramString.length()) || (paramString.charAt(j) == ',')) {
                i = j + 1;
                paramb.a(str1, null);
            } else {
                int k = c(paramString, j + 1);
                String str3;
                if ((k < paramString.length()) && (paramString.charAt(k) == '"')) {
                    int n = k + 1;
                    int i1 = b(paramString, n, "\"");
                    str3 = paramString.substring(n, i1);
                    i = i1 + 1;
                }
                String str2;
                for (Object localObject = str3; ; localObject = str2) {
                    paramb.a(str1, (String) localObject);
                    break;
                    int m = b(paramString, k, ",");
                    str2 = paramString.substring(k, m).trim();
                    i = m;
                }
            }
        }
    }

    private static void a(String paramString, BookSyncRecord.BookModifyType paramBookModifyType) {
        BookSyncRecord.updateOrCreate(o(), paramString, BookSyncRecord.getTypeId(paramBookModifyType));
        if ((am.e() == null) || (am.e().getUser() == null)) ;
        String str1;
        String str2;
        List localList;
        do {
            return;
            str1 = am.e().getToken();
            str2 = am.e().getUser().getId();
            localList = BookSyncRecord.find(str2, BookSyncRecord.getTypeId(paramBookModifyType));
        }
        while ((localList == null) || (localList.size() == 0));
        String[] arrayOfString = new String[localList.size()];
        for (int i = 0; i < localList.size(); i++)
            arrayOfString[i] = ((BookSyncRecord) localList.get(i)).getBookId();
        new X(str2, str1, paramBookModifyType, arrayOfString).b(new Void[0]);
    }

    public static void a(String paramString1, String paramString2, DownloadManager paramDownloadManager) {
        DownloadManager.Request localRequest = new DownloadManager.Request(Uri.parse(paramString1));
        localRequest.setTitle(paramString2);
        String str = N(paramString1);
        if (g()) {
            localRequest.allowScanningByMediaScanner();
            localRequest.setNotificationVisibility(1);
        }
        localRequest.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, str);
        try {
            paramDownloadManager.enqueue(localRequest);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    public static void a(String paramString, Map<String, String> paramMap) {
        a(paramMap, com.ushaqi.zhuishushenqi.c.c, paramString);
    }

    public static void a(Socket paramSocket) {
        if (paramSocket != null) ;
        try {
            paramSocket.close();
            return;
        } catch (Exception localException) {
        }
    }

    public static <T extends org.apache.thrift.b<T, ?>> void a(T paramT, byte[] paramArrayOfByte) {
        if (paramArrayOfByte == null)
            throw new org.apache.thrift.e("the message byte is empty.");
        new org.apache.thrift.d().a(paramT, paramArrayOfByte);
    }

    public static void a(Closeable[] paramArrayOfCloseable) {
        int i = paramArrayOfCloseable.length;
        int j = 0;
        while (true)
            if (j < i) {
                Closeable localCloseable = paramArrayOfCloseable[j];
                if (localCloseable != null) ;
                try {
                    localCloseable.close();
                    label24:
                    j++;
                } catch (IOException localIOException) {
                    break label24;
                }
            }
    }

    public static void a(String[] paramArrayOfString) {
        a(paramArrayOfString, BookSyncRecord.BookModifyType.SHELF_ADD);
    }

    private static void a(String[] paramArrayOfString, BookSyncRecord.BookModifyType paramBookModifyType) {
        int i = paramArrayOfString.length;
        for (int j = 0; j < i; j++) {
            String str3 = paramArrayOfString[j];
            BookSyncRecord.updateOrCreate(o(), str3, BookSyncRecord.getTypeId(paramBookModifyType));
        }
        if ((am.e() == null) || (am.e().getUser() == null)) ;
        String str1;
        String str2;
        List localList;
        do {
            return;
            str1 = am.e().getToken();
            str2 = am.e().getUser().getId();
            localList = BookSyncRecord.find(str2, BookSyncRecord.getTypeId(paramBookModifyType));
        }
        while ((localList == null) || (localList.size() == 0));
        String[] arrayOfString = new String[localList.size()];
        for (int k = 0; k < localList.size(); k++)
            arrayOfString[k] = ((BookSyncRecord) localList.get(k)).getBookId();
        new X(str2, str1, paramBookModifyType, arrayOfString).b(new Void[0]);
    }

    public static boolean a(byte paramByte, int paramInt) {
        return (paramByte & 1 << paramInt) != 0;
    }

    public static boolean a(Context paramContext, com.e.a.a.a.a.a parama) {
        if (paramContext == null) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessage", "send fail, invalid argument");
            return false;
        }
        if (com.e.a.a.b.c.a(parama.b)) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessage", "send fail, action is null");
            return false;
        }
        boolean bool = com.e.a.a.b.c.a(parama.a);
        String str1 = null;
        if (!bool)
            str1 = parama.a + ".permission.MM_MESSAGE";
        Intent localIntent = new Intent(parama.b);
        String str2 = paramContext.getPackageName();
        localIntent.putExtra("_mmessage_sdkVersion", 570425345);
        localIntent.putExtra("_mmessage_appPackage", str2);
        localIntent.putExtra("_mmessage_content", parama.c);
        localIntent.putExtra("_mmessage_checksum", a(parama.c, 570425345, str2));
        paramContext.sendBroadcast(localIntent, str1);
        com.e.a.a.b.a.c("MicroMsg.SDK.MMessage", "send mm message, intent=" + localIntent + ", perm=" + str1);
        return true;
    }

    public static boolean a(Context paramContext, com.e.a.a.a.a parama) {
        if (paramContext == null) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid argument");
            return false;
        }
        if (com.e.a.a.b.c.a(parama.a)) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid targetPkgName, targetPkgName = " + parama.a);
            return false;
        }
        if (com.e.a.a.b.c.a(parama.b))
            parama.b = (parama.a + ".wxapi.WXEntryActivity");
        com.e.a.a.b.a.c("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + parama.a + ", targetClassName = " + parama.b);
        Intent localIntent = new Intent();
        localIntent.setClassName(parama.a, parama.b);
        if (parama.e != null)
            localIntent.putExtras(parama.e);
        String str = paramContext.getPackageName();
        localIntent.putExtra("_mmessage_sdkVersion", 570425345);
        localIntent.putExtra("_mmessage_appPackage", str);
        localIntent.putExtra("_mmessage_content", parama.c);
        localIntent.putExtra("_mmessage_checksum", a(parama.c, 570425345, str));
        if (parama.d == -1)
            localIntent.addFlags(268435456).addFlags(134217728);
        try {
            while (true) {
                paramContext.startActivity(localIntent);
                com.e.a.a.b.a.c("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + localIntent);
                return true;
                localIntent.setFlags(parama.d);
            }
        } catch (Exception localException) {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = localException.getMessage();
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, ex = %s", arrayOfObject);
        }
        return false;
    }

    public static boolean a(Context paramContext, File paramFile) {
        if (paramContext == null) ;
        while (!paramFile.exists())
            return false;
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setDataAndType(Uri.parse("file://" + paramFile.toString()), "application/vnd.android.package-archive");
        localIntent.setFlags(268435456);
        try {
            paramContext.startActivity(localIntent);
            return true;
        } catch (ActivityNotFoundException localActivityNotFoundException) {
            localActivityNotFoundException.printStackTrace();
        }
        return false;
    }

    // am_CommonUtil.getBooleanSetting
    public static boolean a(Context paramContext, String paramString, boolean paramBoolean) {
        if (paramContext == null)
            return paramBoolean;
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(paramString, paramBoolean);
    }

    public static boolean a(Intent paramIntent) {
        return paramIntent.getData() != null;
    }

    private static boolean a(com.nostra13.universalimageloader.b.c paramc, int paramInt1, int paramInt2) {
        return (paramc != null) && (!paramc.a(paramInt1, paramInt2)) && (paramInt1 * 100 / paramInt2 < 75);
    }

    public static boolean a(InputStream paramInputStream, OutputStream paramOutputStream, com.nostra13.universalimageloader.b.c paramc, int paramInt) {
        int i = paramInputStream.available();
        byte[] arrayOfByte = new byte[paramInt];
        if (a(paramc, 0, i))
            return false;
        int j = 0;
        do {
            int k = paramInputStream.read(arrayOfByte, 0, paramInt);
            if (k == -1)
                break;
            paramOutputStream.write(arrayOfByte, 0, k);
            j += k;
        }
        while (!a(paramc, j, i));
        return false;
        paramOutputStream.flush();
        return true;
    }

    public static boolean a(Class<?> paramClass) {
        if (paramClass.isPrimitive()) ;
        while ((paramClass.equals(String.class)) || (paramClass.equals(Integer.class)) || (paramClass.equals(Long.class)) || (paramClass.equals(Double.class)) || (paramClass.equals(Float.class)) || (paramClass.equals(Boolean.class)) || (paramClass.equals(Short.class)) || (paramClass.equals(Character.class)) || (paramClass.equals(Byte.class)) || (paramClass.equals(Void.class)))
            return true;
        return false;
    }

    public static boolean a(Object paramObject1, Object paramObject2) {
        return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
    }

    // ERROR //
    public static boolean a(String paramString, SQLiteDatabase paramSQLiteDatabase) {
        // Byte code:
        //   0: aload_0
        //   1: invokestatic 644	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
        //   4: ifne +120 -> 124
        //   7: aload_0
        //   8: ldc_w 2440
        //   11: invokevirtual 2443	java/lang/String:matches	(Ljava/lang/String;)Z
        //   14: ifeq +110 -> 124
        //   17: aload_1
        //   18: ldc_w 2445
        //   21: aconst_null
        //   22: aconst_null
        //   23: aconst_null
        //   24: aconst_null
        //   25: aconst_null
        //   26: aconst_null
        //   27: invokevirtual 2448	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   30: astore 5
        //   32: aload 5
        //   34: astore_3
        //   35: aload_3
        //   36: invokeinterface 1654 1 0
        //   41: ifeq +73 -> 114
        //   44: aload_0
        //   45: aload_3
        //   46: aload_3
        //   47: ldc_w 2450
        //   50: invokeinterface 1659 2 0
        //   55: invokeinterface 1605 2 0
        //   60: invokevirtual 774	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
        //   63: ifeq +38 -> 101
        //   66: aload_3
        //   67: aload_3
        //   68: ldc_w 1611
        //   71: invokeinterface 1659 2 0
        //   76: invokeinterface 1613 2 0
        //   81: istore 7
        //   83: iload 7
        //   85: iconst_1
        //   86: if_icmpne +28 -> 114
        //   89: aload_3
        //   90: ifnull +9 -> 99
        //   93: aload_3
        //   94: invokeinterface 1634 1 0
        //   99: iconst_1
        //   100: ireturn
        //   101: aload_3
        //   102: invokeinterface 1601 1 0
        //   107: istore 6
        //   109: iload 6
        //   111: ifne -67 -> 44
        //   114: aload_3
        //   115: ifnull +9 -> 124
        //   118: aload_3
        //   119: invokeinterface 1634 1 0
        //   124: iconst_0
        //   125: ireturn
        //   126: astore 4
        //   128: aconst_null
        //   129: astore_3
        //   130: aload 4
        //   132: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   135: aload_3
        //   136: ifnull -12 -> 124
        //   139: aload_3
        //   140: invokeinterface 1634 1 0
        //   145: goto -21 -> 124
        //   148: astore_2
        //   149: aconst_null
        //   150: astore_3
        //   151: aload_3
        //   152: ifnull +9 -> 161
        //   155: aload_3
        //   156: invokeinterface 1634 1 0
        //   161: aload_2
        //   162: athrow
        //   163: astore_2
        //   164: goto -13 -> 151
        //   167: astore 4
        //   169: goto -39 -> 130
        //
        // Exception table:
        //   from	to	target	type
        //   17	32	126	java/lang/Exception
        //   17	32	148	finally
        //   35	44	163	finally
        //   44	83	163	finally
        //   101	109	163	finally
        //   130	135	163	finally
        //   35	44	167	java/lang/Exception
        //   44	83	167	java/lang/Exception
        //   101	109	167	java/lang/Exception
    }

    public static boolean a(String paramString1, String paramString2, SQLiteDatabase paramSQLiteDatabase) {
        if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
            return false;
        try {
            boolean bool = a(c(paramString2, paramSQLiteDatabase).b(), paramString1);
            return bool;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public static boolean a(String paramString1, String paramString2, String paramString3) {
        try {
            PublicKey localPublicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(com.ushaqi.zhuishushenqi.pay.a.f.a(paramString3)));
            Signature localSignature = Signature.getInstance("SHA1WithRSA");
            localSignature.initVerify(localPublicKey);
            localSignature.update(paramString1.getBytes("utf-8"));
            boolean bool = localSignature.verify(com.ushaqi.zhuishushenqi.pay.a.f.a(paramString2));
            return bool;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public static boolean a(String paramString1, String paramString2, String paramString3, Chapter paramChapter) {
        if (paramString3 == null)
            return false;
        String str = "/ZhuiShuShenQi/Chapter" + File.separator + paramString1 + File.separator + paramString2;
        File localFile = new File(com.ushaqi.zhuishushenqi.c.a, str);
        try {
            if (!localFile.exists())
                localFile.mkdirs();
            ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(localFile, paramString3)));
            localObjectOutputStream.writeObject(paramChapter);
            localObjectOutputStream.close();
            return true;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public static boolean a(String paramString1, String paramString2, String paramString3, Toc paramToc) {
        if (!d())
            return false;
        String str = "/ZhuiShuShenQi/Chapter" + File.separator + paramString1 + File.separator + paramString2;
        File localFile = new File(com.ushaqi.zhuishushenqi.c.a, str);
        try {
            if (!localFile.exists())
                localFile.mkdirs();
            ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(localFile, paramString3)));
            localObjectOutputStream.writeObject(paramToc);
            localObjectOutputStream.close();
            return true;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public static boolean a(Collection<String> paramCollection, String paramString) {
        if (paramCollection == null)
            return false;
        if (paramString == null)
            return paramCollection.contains(null);
        Iterator localIterator = paramCollection.iterator();
        if (!localIterator.hasNext()) ;
        for (boolean bool = false; ; bool = true) {
            return bool;
            if (!paramString.equalsIgnoreCase((String) localIterator.next()))
                break;
        }
    }

    private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2) {
        boolean bool;
        if (paramArrayOfByte1 == paramArrayOfByte2)
            bool = true;
        int i;
        int j;
        do {
            do {
                do {
                    return bool;
                    bool = false;
                }
                while (paramArrayOfByte1 == null);
                bool = false;
            }
            while (paramArrayOfByte2 == null);
            i = paramArrayOfByte1.length;
            j = paramArrayOfByte2.length;
            bool = false;
        }
        while (i < j);
        for (int k = 0; ; k++) {
            if (k >= paramArrayOfByte2.length)
                break label73;
            int m = paramArrayOfByte1[k];
            int n = paramArrayOfByte2[k];
            bool = false;
            if (m != n)
                break;
        }
        label73:
        return true;
    }

    public static byte[] a(int paramInt) {
        byte[] arrayOfByte = new byte[4];
        arrayOfByte[3] = ((byte) (paramInt % 256));
        int i = paramInt >> 8;
        arrayOfByte[2] = ((byte) (i % 256));
        int j = i >> 8;
        arrayOfByte[1] = ((byte) (j % 256));
        arrayOfByte[0] = ((byte) ((j >> 8) % 256));
        return arrayOfByte;
    }

    public static byte[] a(InputStream paramInputStream) {
        try {
            byte[] arrayOfByte1 = new byte[1024];
            MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
            for (int i = paramInputStream.read(arrayOfByte1); i != -1; i = paramInputStream.read(arrayOfByte1))
                localMessageDigest.update(arrayOfByte1, 0, i);
            byte[] arrayOfByte2 = localMessageDigest.digest();
            return arrayOfByte2;
        } catch (Throwable localThrowable) {
            com.mob.tools.e.a().w(localThrowable);
        }
        return null;
    }

    public static byte[] a(String paramString1, int paramInt, String paramString2) {
        StringBuffer localStringBuffer = new StringBuffer();
        if (paramString1 != null)
            localStringBuffer.append(paramString1);
        localStringBuffer.append(paramInt);
        localStringBuffer.append(paramString2);
        localStringBuffer.append("mMcShCsTr");
        return am.a(localStringBuffer.toString().substring(1, 9).getBytes()).getBytes();
    }

    public static <T extends org.apache.thrift.b<T, ?>> byte[] a(T paramT) {
        if (paramT == null)
            return null;
        try {
            byte[] arrayOfByte = new org.apache.thrift.g(new a.a()).a(paramT);
            return arrayOfByte;
        } catch (org.apache.thrift.e locale) {
            com.xiaomi.a.a.a.b.a("convertThriftObjectToBytes catch TException.", locale);
        }
        return null;
    }

    public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2) {
        int i = paramArrayOfByte.length;
        int j = paramInt2 - paramInt1;
        int k = Math.min(j, i - paramInt1);
        byte[] arrayOfByte = new byte[j];
        System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, k);
        return arrayOfByte;
    }

    public static <T> T[] a(List<T> paramList, Class<T> paramClass) {
        Object[] arrayOfObject = (Object[]) Array.newInstance(paramClass, paramList.size());
        for (int i = 0; i < paramList.size(); i++)
            arrayOfObject[i] = paramList.get(i);
        return arrayOfObject;
    }

    public static String[] a(String paramString) {
        int i = 1 + paramString.indexOf('(');
        int j = paramString.lastIndexOf(')');
        if ((i == 0) || (j == -1))
            return null;
        String[] arrayOfString = paramString.substring(i, j).split(",");
        if (arrayOfString != null)
            for (int k = 0; k < arrayOfString.length; k++)
                if (!TextUtils.isEmpty(arrayOfString[k])) {
                    arrayOfString[k] = arrayOfString[k].trim();
                    arrayOfString[k] = arrayOfString[k].replaceAll("'", "").replaceAll("\"", "");
                }
        return arrayOfString;
    }

    public static byte b(byte paramByte, int paramInt) {
        return (byte) (paramByte & (0xFFFFFFFF ^ 1 << paramInt));
    }

    public static int b(Context paramContext, int paramInt1, int paramInt2) {
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramInt2, new int[]{paramInt1});
        int i = localTypedArray.getColor(0, 0);
        localTypedArray.recycle();
        return i;
    }

    public static int b(Context paramContext, String paramString1, String paramString2) {
        int i = 0;
        if (paramContext != null) {
            boolean bool1 = TextUtils.isEmpty(paramString1);
            i = 0;
            if (!bool1) {
                boolean bool2 = TextUtils.isEmpty(paramString2);
                i = 0;
                if (!bool2)
                    break label34;
            }
        }
        label34:
        do {
            String str;
            boolean bool3;
            do {
                return i;
                str = paramContext.getPackageName();
                bool3 = TextUtils.isEmpty(str);
                i = 0;
            }
            while (bool3);
            i = paramContext.getResources().getIdentifier(paramString2, paramString1, str);
            if (i <= 0)
                i = paramContext.getResources().getIdentifier(paramString2.toLowerCase(), paramString1, str);
        }
        while (i > 0);
        System.err.println("failed to parse " + paramString1 + " resource \"" + paramString2 + "\"");
        return i;
    }

    public static int b(File paramFile) {
        File[] arrayOfFile = paramFile.listFiles();
        int i = 0;
        if (arrayOfFile != null) {
            int j = arrayOfFile.length;
            int k = arrayOfFile.length;
            i = j;
            for (int m = 0; m < k; m++) {
                File localFile = arrayOfFile[m];
                if (localFile.isDirectory())
                    i = -1 + (i + b(localFile));
            }
        }
        return i;
    }

    public static int b(String paramString, int paramInt) {
        try {
            int i = Integer.parseInt(paramString);
            return i;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return 0;
    }

    private static int b(String paramString1, int paramInt, String paramString2) {
        while ((paramInt < paramString1.length()) && (paramString2.indexOf(paramString1.charAt(paramInt)) == -1))
            paramInt++;
        return paramInt;
    }

    public static Bitmap.CompressFormat b(byte[] paramArrayOfByte) {
        String str = g(paramArrayOfByte);
        Bitmap.CompressFormat localCompressFormat = Bitmap.CompressFormat.JPEG;
        if ((str != null) && ((str.endsWith("png")) || (str.endsWith("gif"))))
            localCompressFormat = Bitmap.CompressFormat.PNG;
        return localCompressFormat;
    }

    public static N b(int paramInt) {
        return new N(paramInt % 16, paramInt / 16);
    }

    // ERROR //
    public static java.io.Serializable b(String paramString1, String paramString2, String paramString3) {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: aload_2
        //   3: ifnull +9 -> 12
        //   6: invokestatic 354	com/arcsoft/hpay100/a/a:d	()Z
        //   9: ifne +5 -> 14
        //   12: aconst_null
        //   13: areturn
        //   14: new 146	java/lang/StringBuilder
        //   17: dup
        //   18: ldc 193
        //   20: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   23: getstatic 200	java/io/File:separator	Ljava/lang/String;
        //   26: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   29: aload_0
        //   30: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   33: getstatic 200	java/io/File:separator	Ljava/lang/String;
        //   36: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   39: aload_1
        //   40: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   43: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   46: astore 4
        //   48: new 197	java/io/File
        //   51: dup
        //   52: getstatic 203	com/ushaqi/zhuishushenqi/c:a	Ljava/lang/String;
        //   55: aload 4
        //   57: invokespecial 206	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
        //   60: astore 5
        //   62: aload 5
        //   64: invokevirtual 223	java/io/File:exists	()Z
        //   67: ifne +5 -> 72
        //   70: aconst_null
        //   71: areturn
        //   72: new 197	java/io/File
        //   75: dup
        //   76: aload 5
        //   78: aload_2
        //   79: invokespecial 352	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
        //   82: astore 14
        //   84: aload 14
        //   86: invokevirtual 223	java/io/File:exists	()Z
        //   89: ifne +5 -> 94
        //   92: aconst_null
        //   93: areturn
        //   94: new 275	java/io/FileInputStream
        //   97: dup
        //   98: aload 14
        //   100: invokespecial 278	java/io/FileInputStream:<init>	(Ljava/io/File;)V
        //   103: astore 7
        //   105: new 2585	java/io/ObjectInputStream
        //   108: dup
        //   109: aload 7
        //   111: invokespecial 2588	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
        //   114: astore 11
        //   116: aload 11
        //   118: invokevirtual 2591	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
        //   121: checkcast 2593	java/io/Serializable
        //   124: astore 15
        //   126: aload 11
        //   128: invokevirtual 2594	java/io/ObjectInputStream:close	()V
        //   131: aload 7
        //   133: invokevirtual 700	java/io/FileInputStream:close	()V
        //   136: aload 15
        //   138: areturn
        //   139: astore 17
        //   141: aload 17
        //   143: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   146: aload 15
        //   148: areturn
        //   149: astore 16
        //   151: aload 16
        //   153: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   156: goto -25 -> 131
        //   159: astore 10
        //   161: aconst_null
        //   162: astore 11
        //   164: aconst_null
        //   165: astore 7
        //   167: aload 10
        //   169: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   172: aload 11
        //   174: ifnull +8 -> 182
        //   177: aload 11
        //   179: invokevirtual 2594	java/io/ObjectInputStream:close	()V
        //   182: aload 7
        //   184: ifnull +8 -> 192
        //   187: aload 7
        //   189: invokevirtual 700	java/io/FileInputStream:close	()V
        //   192: aconst_null
        //   193: areturn
        //   194: astore 13
        //   196: aload 13
        //   198: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   201: goto -19 -> 182
        //   204: astore 12
        //   206: aload 12
        //   208: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   211: goto -19 -> 192
        //   214: astore 6
        //   216: aconst_null
        //   217: astore 7
        //   219: aload_3
        //   220: ifnull +7 -> 227
        //   223: aload_3
        //   224: invokevirtual 2594	java/io/ObjectInputStream:close	()V
        //   227: aload 7
        //   229: ifnull +8 -> 237
        //   232: aload 7
        //   234: invokevirtual 700	java/io/FileInputStream:close	()V
        //   237: aload 6
        //   239: athrow
        //   240: astore 9
        //   242: aload 9
        //   244: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   247: goto -20 -> 227
        //   250: astore 8
        //   252: aload 8
        //   254: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   257: goto -20 -> 237
        //   260: astore 6
        //   262: aconst_null
        //   263: astore_3
        //   264: goto -45 -> 219
        //   267: astore 6
        //   269: aload 11
        //   271: astore_3
        //   272: goto -53 -> 219
        //   275: astore 10
        //   277: aconst_null
        //   278: astore 11
        //   280: goto -113 -> 167
        //   283: astore 10
        //   285: goto -118 -> 167
        //
        // Exception table:
        //   from	to	target	type
        //   131	136	139	java/lang/Exception
        //   126	131	149	java/lang/Exception
        //   62	70	159	java/lang/Exception
        //   72	92	159	java/lang/Exception
        //   94	105	159	java/lang/Exception
        //   177	182	194	java/lang/Exception
        //   187	192	204	java/lang/Exception
        //   62	70	214	finally
        //   72	92	214	finally
        //   94	105	214	finally
        //   223	227	240	java/lang/Exception
        //   232	237	250	java/lang/Exception
        //   105	116	260	finally
        //   116	126	267	finally
        //   167	172	267	finally
        //   105	116	275	java/lang/Exception
        //   116	126	283	java/lang/Exception
    }

    public static String b() {
        String str = com.arcsoft.hpay100.config.l.d;
        b("dalongTest", "kfPhone:" + str);
        return str;
    }

    public static String b(Context paramContext) {
        try {
            String str2 = a(paramContext, "profiles", "deviceid", "");
            String str3;
            if (am.a(str2)) {
                str3 = null;
                boolean bool = am.a(str3);
                str1 = null;
                if (!bool)
                    break label60;
            }
            while (true) {
                return str1;
                str3 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str2);
                break;
                label60:
                new com.alipay.b.a.a.a();
                Map localMap = com.alipay.b.a.a.a.a(str3);
                if (localMap == null)
                    break label98;
                str1 = (String) localMap.get("deviceId");
            }
        } catch (Throwable localThrowable) {
            while (true)
                label98:String str1 = "";
        } finally {
        }
    }

    // ERROR //
    public static String b(Context paramContext, String paramString, Map paramMap) {
        // Byte code:
        //   0: ldc_w 1398
        //   3: new 146	java/lang/StringBuilder
        //   6: dup
        //   7: ldc_w 2617
        //   10: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   13: aload_1
        //   14: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   17: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   20: invokestatic 1402	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   23: aload_0
        //   24: invokestatic 1405	com/arcsoft/hpay100/a/a:j	(Landroid/content/Context;)Z
        //   27: ifne +14 -> 41
        //   30: ldc_w 1398
        //   33: ldc_w 1407
        //   36: invokestatic 1402	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   39: aconst_null
        //   40: areturn
        //   41: aload_0
        //   42: invokestatic 2620	com/arcsoft/hpay100/b/c:a	(Landroid/content/Context;)Lcom/arcsoft/hpay100/b/c;
        //   45: astore 7
        //   47: aload 7
        //   49: astore 4
        //   51: aload_1
        //   52: aconst_null
        //   53: aload_2
        //   54: invokestatic 2623	com/arcsoft/hpay100/b/c:a	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/arcsoft/hpay100/b/d;
        //   57: astore 8
        //   59: aload 8
        //   61: ifnull +96 -> 157
        //   64: aload 8
        //   66: ldc 137
        //   68: invokevirtual 1420	com/arcsoft/hpay100/b/d:a	(Ljava/lang/String;)Ljava/lang/String;
        //   71: astore 9
        //   73: ldc_w 1398
        //   76: new 146	java/lang/StringBuilder
        //   79: dup
        //   80: ldc_w 2625
        //   83: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   86: aload 9
        //   88: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   91: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   94: invokestatic 1402	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   97: aload 4
        //   99: invokevirtual 1424	com/arcsoft/hpay100/b/c:a	()V
        //   102: aload 9
        //   104: areturn
        //   105: astore 6
        //   107: aconst_null
        //   108: astore 4
        //   110: aload 6
        //   112: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   115: aload 4
        //   117: ifnull -78 -> 39
        //   120: aload 4
        //   122: invokevirtual 1424	com/arcsoft/hpay100/b/c:a	()V
        //   125: aconst_null
        //   126: areturn
        //   127: astore_3
        //   128: aconst_null
        //   129: astore 4
        //   131: aload_3
        //   132: astore 5
        //   134: aload 4
        //   136: ifnull +8 -> 144
        //   139: aload 4
        //   141: invokevirtual 1424	com/arcsoft/hpay100/b/c:a	()V
        //   144: aload 5
        //   146: athrow
        //   147: astore 5
        //   149: goto -15 -> 134
        //   152: astore 6
        //   154: goto -44 -> 110
        //   157: aconst_null
        //   158: astore 9
        //   160: goto -87 -> 73
        //
        // Exception table:
        //   from	to	target	type
        //   41	47	105	java/lang/Exception
        //   41	47	127	finally
        //   51	59	147	finally
        //   64	73	147	finally
        //   73	97	147	finally
        //   110	115	147	finally
        //   51	59	152	java/lang/Exception
        //   64	73	152	java/lang/Exception
        //   73	97	152	java/lang/Exception
    }

    public static String b(Context paramContext, Map<String, String> paramMap) {
        try {
            String str = new com.alipay.b.a.a(paramContext).a(paramMap);
            return str;
        } finally {
            localObject =finally;
            throw localObject;
        }
    }

    public static String b(String paramString) {
        int i = 0;
        try {
            if (am.a(paramString))
                return null;
            MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
            localMessageDigest.update(paramString.getBytes("UTF-8"));
            byte[] arrayOfByte = localMessageDigest.digest();
            StringBuilder localStringBuilder = new StringBuilder();
            while (i < arrayOfByte.length) {
                Object[] arrayOfObject = new Object[1];
                arrayOfObject[0] = Byte.valueOf(arrayOfByte[i]);
                localStringBuilder.append(String.format("%02x", arrayOfObject));
                i++;
            }
            String str = localStringBuilder.toString();
            return str;
        } catch (Exception localException) {
        }
        return null;
    }

    public static URI b(URL paramURL) {
        return paramURL.toURI();
    }

    public static void b(Activity paramActivity) {
        Intent localIntent = new Intent("android.intent.action.GET_CONTENT").setType("image/*");
        try {
            paramActivity.startActivityForResult(localIntent, 9162);
            return;
        } catch (ActivityNotFoundException localActivityNotFoundException) {
            com.ushaqi.zhuishushenqi.util.e.a(paramActivity, "crop pick error");
        }
    }

    public static void b(Context paramContext, Advert paramAdvert) {
        if (paramAdvert == null)
            return;
        com.umeng.a.b.a(paramContext, "zssq_ad_click_" + paramAdvert.getPosition(), paramAdvert.getTitle());
    }

    // ERROR //
    public static void b(Context paramContext, String paramString) {
        // Byte code:
        //   0: ldc 2
        //   2: monitorenter
        //   3: aload_0
        //   4: ldc_w 1947
        //   7: iconst_0
        //   8: invokevirtual 437	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   11: invokeinterface 522 1 0
        //   16: astore 4
        //   18: aload 4
        //   20: ifnull +29 -> 49
        //   23: aload 4
        //   25: ldc_w 2662
        //   28: invokestatic 1952	com/alipay/security/mobile/module/a/a/b:a	()Ljava/lang/String;
        //   31: aload_1
        //   32: invokestatic 1954	com/alipay/security/mobile/module/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   35: invokeinterface 1957 3 0
        //   40: pop
        //   41: aload 4
        //   43: invokeinterface 531 1 0
        //   48: pop
        //   49: ldc 2
        //   51: monitorexit
        //   52: return
        //   53: astore_3
        //   54: ldc 2
        //   56: monitorexit
        //   57: aload_3
        //   58: athrow
        //   59: astore_2
        //   60: goto -11 -> 49
        //
        // Exception table:
        //   from	to	target	type
        //   3	18	53	finally
        //   23	49	53	finally
        //   3	18	59	java/lang/Throwable
        //   23	49	59	java/lang/Throwable
    }

    public static void b(Context paramContext, String paramString, float paramFloat) {
        if (paramContext == null)
            return;
        SharedPreferences.Editor localEditor = P(paramContext);
        localEditor.putFloat(paramString, paramFloat);
        localEditor.apply();
    }

    public static void b(Context paramContext, String paramString, int paramInt) {
        if (paramContext == null)
            return;
        SharedPreferences.Editor localEditor = P(paramContext);
        localEditor.putInt(paramString, paramInt);
        localEditor.apply();
    }

    public static void b(Context paramContext, String paramString, long paramLong) {
        if (paramContext == null)
            return;
        SharedPreferences.Editor localEditor = P(paramContext);
        localEditor.putLong(paramString, paramLong);
        localEditor.apply();
    }

    public static void b(Context paramContext, String paramString1, String paramString2, String paramString3) {
        d = paramString1;
        e = paramString2;
        f = paramString3;
        e(paramContext, "CIPHER_BOOK_ID", paramString1);
        e(paramContext, "CIPHER_TOC_ID", paramString2);
        e(paramContext, "CIPHER_CHECKSUM", paramString3);
    }

    public static void b(Context paramContext, String paramString, boolean paramBoolean) {
        if (paramContext == null)
            return;
        SharedPreferences.Editor localEditor = P(paramContext);
        localEditor.putBoolean(paramString, paramBoolean);
        localEditor.apply();
    }

    public static void b(Closeable paramCloseable) {
        if (paramCloseable != null) ;
        try {
            paramCloseable.close();
            return;
        } catch (RuntimeException localRuntimeException) {
            throw localRuntimeException;
        } catch (Exception localException) {
        }
    }

    public static void b(String paramString1, String paramString2) {
        if (w.b)
            Log.e(paramString1, paramString2);
    }

    public static void b(String[] paramArrayOfString) {
        a(paramArrayOfString, BookSyncRecord.BookModifyType.FEED_ADD);
    }

    public static boolean b(String paramString, SQLiteDatabase paramSQLiteDatabase) {
        try {
            boolean bool = a(a(paramSQLiteDatabase), paramString);
            return bool;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return false;
    }

    public static int c(Context paramContext, String paramString, int paramInt) {
        return paramContext.getSharedPreferences("mistat", 0).getInt(paramString, paramInt);
    }

    private static int c(String paramString, int paramInt) {
        while (paramInt < paramString.length()) {
            int i = paramString.charAt(paramInt);
            if ((i != 32) && (i != 9))
                break;
            paramInt++;
        }
        return paramInt;
    }

    public static long c(Context paramContext, String paramString, long paramLong) {
        if (paramContext == null)
            return paramLong;
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getLong(paramString, paramLong);
    }

    public static String c() {
        String str = com.arcsoft.hpay100.config.l.e;
        b("dalongTest", "appname:" + str);
        return str;
    }

    public static String c(int paramInt) {
        double d1 = Math.floor(paramInt / Math.pow(1024.0D, 2.0D));
        DecimalFormat localDecimalFormat = new DecimalFormat("0.0");
        return localDecimalFormat.format(d1) + "MB";
    }

    public static String c(Context paramContext, String paramString) {
        return new com.mob.tools.a.l().downloadCache(paramContext, paramString, "images", true, null);
    }

    public static String c(Context paramContext, Map<String, String> paramMap) {
        try {
            Object localObject2 = com.alipay.b.a.g.a();
            boolean bool = am.a((String) localObject2);
            if (!bool) ;
            while (true) {
                return localObject2;
                com.alipay.b.a.d locald = am.a(paramContext);
                if ((locald != null) && (!am.a(locald.a()))) {
                    localObject2 = locald.a();
                } else {
                    localObject2 = a(paramContext);
                    if (am.a((String) localObject2)) {
                        HashMap localHashMap = new HashMap();
                        localHashMap.put("utdid", am.a(paramMap, "utdid", ""));
                        localHashMap.put("tid", am.a(paramMap, "tid", ""));
                        localHashMap.put("userId", am.a(paramMap, "userId", ""));
                        com.alipay.b.e.a.a(paramContext).a(0, localHashMap, null);
                        String str = am.d(paramContext);
                        localObject2 = str;
                    }
                }
            }
        } finally {
        }
    }

    public static String c(byte[] paramArrayOfByte) {
        int i = paramArrayOfByte.length;
        StringBuffer localStringBuffer = new StringBuffer();
        if (paramArrayOfByte != null)
            for (int j = 0; j < i; j++) {
                Object[] arrayOfObject = new Object[1];
                arrayOfObject[0] = Byte.valueOf(paramArrayOfByte[j]);
                localStringBuffer.append(String.format("%02x", arrayOfObject));
            }
        return localStringBuffer.toString();
    }

    public static ArrayList<String> c(File paramFile) {
        ArrayList localArrayList = new ArrayList();
        File[] arrayOfFile = paramFile.listFiles();
        if (arrayOfFile != null) {
            int i = arrayOfFile.length;
            for (int j = 0; j < i; j++)
                localArrayList.add(arrayOfFile[j].getName());
        }
        return localArrayList;
    }

    public static org.litepal.d.a.b c(String paramString, SQLiteDatabase paramSQLiteDatabase) {
        Cursor localCursor = null;
        if (b(paramString, paramSQLiteDatabase)) {
            org.litepal.d.a.b localb = new org.litepal.d.a.b();
            localb.a(paramString);
            String str = "pragma table_info(" + paramString + ")";
            try {
                localCursor = paramSQLiteDatabase.rawQuery(str, null);
                if (localCursor.moveToFirst()) {
                    boolean bool;
                    do {
                        localb.a(localCursor.getString(localCursor.getColumnIndexOrThrow("name")), localCursor.getString(localCursor.getColumnIndexOrThrow("type")));
                        bool = localCursor.moveToNext();
                    }
                    while (bool);
                }
                return localb;
            } catch (Exception localException) {
                localException.printStackTrace();
                throw new DatabaseGenerateException(localException.getMessage());
            } finally {
                if (localCursor != null)
                    localCursor.close();
            }
        }
        throw new DatabaseGenerateException("Table doesn't exist when executing " + paramString);
    }

    public static void c(Context paramContext, String paramString1, String paramString2) {
        HashMap localHashMap = new HashMap();
        localHashMap.put("uid", com.ushaqi.zhuishushenqi.util.e.c(paramContext));
        com.a.a.a.a(paramContext, paramString2, paramString1, localHashMap);
    }

    public static void c(Closeable paramCloseable) {
        try {
            paramCloseable.close();
            return;
        } catch (Exception localException) {
        }
    }

    public static void c(String paramString1, String paramString2) {
        Log.w("PullToRefresh", "You're using the deprecated " + paramString1 + " attr, please switch over to " + paramString2);
    }

    public static void c(String[] paramArrayOfString) {
        if (paramArrayOfString != null) {
            int i = paramArrayOfString.length;
            if (i > 0) {
                String str1 = paramArrayOfString[0];
                boolean bool1 = TextUtils.isEmpty(str1);
                int j = 0;
                int k;
                Object localObject;
                if (!bool1) {
                    boolean bool2 = TextUtils.isEmpty("?");
                    j = 0;
                    if (!bool2) {
                        k = str1.indexOf("?");
                        localObject = str1;
                    }
                }
                while (true) {
                    if (k == -1) {
                        if (i == j + 1)
                            break;
                        throw new DataSupportException("The parameters in conditions are incorrect.");
                    }
                    int m = j + 1;
                    String str2 = ((String) localObject).substring(k + "?".length());
                    int n = str2.indexOf("?");
                    localObject = str2;
                    k = n;
                    j = m;
                }
            }
        }
    }

    public static boolean c(Context paramContext) {
        try {
            String str1 = a(paramContext, "vkeyid_settings", "log_switch", "");
            if (am.a(str1))
                return true;
            String str2 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str1);
            if (!am.a(str2)) {
                boolean bool = str2.equals("1");
                return bool;
            }
        } catch (Throwable localThrowable) {
        }
        return true;
    }

    public static boolean c(String paramString) {
        int i;
        boolean bool1;
        if (paramString != null) {
            i = paramString.length();
            if (i != 0) ;
        } else {
            bool1 = true;
            return bool1;
        }
        for (int j = 0; ; j++) {
            if (j >= i)
                break label47;
            boolean bool2 = Character.isWhitespace(paramString.charAt(j));
            bool1 = false;
            if (!bool2)
                break;
        }
        label47:
        return true;
    }

    public static int d(int paramInt) {
        switch (paramInt) {
            case 50:
            default:
                return 2;
            case 10:
                return 0;
            case 20:
                return 1;
            case 100:
                return 3;
            case 200:
        }
        return 4;
    }

    public static int d(Context paramContext, String paramString) {
        return b(paramContext, "drawable", paramString);
    }

    public static long d(Context paramContext) {
        try {
            String str1 = paramContext.getSharedPreferences("vkeyid_settings", 0).getString("vkey_valid", "");
            if (am.a(str1))
                return 0L;
            String str2 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str1);
            if (!am.a(str2)) {
                long l = Long.parseLong(str2);
                return l;
            }
        } catch (Throwable localThrowable) {
        }
        return 0L;
    }

    public static String d(Context paramContext, String paramString1, String paramString2) {
        if (paramContext == null)
            return paramString2;
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getString(paramString1, paramString2);
    }

    // ERROR //
    public static String d(String paramString) {
        // Byte code:
        //   0: new 146	java/lang/StringBuilder
        //   3: dup
        //   4: invokespecial 218	java/lang/StringBuilder:<init>	()V
        //   7: astore_1
        //   8: new 197	java/io/File
        //   11: dup
        //   12: aload_0
        //   13: invokespecial 219	java/io/File:<init>	(Ljava/lang/String;)V
        //   16: invokevirtual 223	java/io/File:exists	()Z
        //   19: ifne +5 -> 24
        //   22: aconst_null
        //   23: areturn
        //   24: new 271	java/io/BufferedReader
        //   27: dup
        //   28: new 273	java/io/InputStreamReader
        //   31: dup
        //   32: new 275	java/io/FileInputStream
        //   35: dup
        //   36: aload_0
        //   37: invokespecial 304	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
        //   40: ldc 137
        //   42: invokespecial 284	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
        //   45: invokespecial 287	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
        //   48: astore 6
        //   50: aload 6
        //   52: invokevirtual 1251	java/io/BufferedReader:readLine	()Ljava/lang/String;
        //   55: astore 10
        //   57: aload 10
        //   59: ifnull +31 -> 90
        //   62: aload_1
        //   63: aload 10
        //   65: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   68: pop
        //   69: goto -19 -> 50
        //   72: astore 9
        //   74: aload 6
        //   76: astore_3
        //   77: aload_3
        //   78: ifnull +7 -> 85
        //   81: aload_3
        //   82: invokevirtual 1264	java/io/BufferedReader:close	()V
        //   85: aload_1
        //   86: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   89: areturn
        //   90: aload 6
        //   92: invokevirtual 1264	java/io/BufferedReader:close	()V
        //   95: goto -10 -> 85
        //   98: astore 12
        //   100: goto -15 -> 85
        //   103: astore 5
        //   105: aconst_null
        //   106: astore 6
        //   108: aload 5
        //   110: astore 7
        //   112: aload 6
        //   114: ifnull +8 -> 122
        //   117: aload 6
        //   119: invokevirtual 1264	java/io/BufferedReader:close	()V
        //   122: aload 7
        //   124: athrow
        //   125: astore 4
        //   127: goto -42 -> 85
        //   130: astore 8
        //   132: goto -10 -> 122
        //   135: astore 7
        //   137: goto -25 -> 112
        //   140: astore_2
        //   141: aconst_null
        //   142: astore_3
        //   143: goto -66 -> 77
        //
        // Exception table:
        //   from	to	target	type
        //   50	57	72	java/io/IOException
        //   62	69	72	java/io/IOException
        //   90	95	98	java/lang/Throwable
        //   8	22	103	finally
        //   24	50	103	finally
        //   81	85	125	java/lang/Throwable
        //   117	122	130	java/lang/Throwable
        //   50	57	135	finally
        //   62	69	135	finally
        //   8	22	140	java/io/IOException
        //   24	50	140	java/io/IOException
    }

    public static String d(byte[] paramArrayOfByte) {
        if (paramArrayOfByte == null) ;
        byte[] arrayOfByte;
        do {
            return null;
            arrayOfByte = e(paramArrayOfByte);
        }
        while (arrayOfByte == null);
        return com.mob.tools.b.d.a(arrayOfByte);
    }

    public static void d(Context paramContext, String paramString, int paramInt) {
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("mistat", 0).edit();
        localEditor.putInt(paramString, paramInt);
        localEditor.commit();
    }

    public static void d(Context paramContext, String paramString, long paramLong) {
        if (paramContext == null)
            return;
        SharedPreferences.Editor localEditor = P(paramContext);
        localEditor.putLong(paramString, paramLong);
        localEditor.apply();
    }

    public static boolean d() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static byte[] d(String paramString1, String paramString2) {
        if ((paramString1 == null) || (paramString2 == null))
            return null;
        byte[] arrayOfByte1 = paramString1.getBytes("UTF-8");
        byte[] arrayOfByte2 = new byte[16];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, Math.min(arrayOfByte1.length, 16));
        byte[] arrayOfByte3 = paramString2.getBytes("UTF-8");
        SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte2, "AES");
        Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
        localCipher.init(1, localSecretKeySpec);
        byte[] arrayOfByte4 = new byte[localCipher.getOutputSize(arrayOfByte3.length)];
        localCipher.doFinal(arrayOfByte4, localCipher.update(arrayOfByte3, 0, arrayOfByte3.length, arrayOfByte4, 0));
        return arrayOfByte4;
    }

    public static int e(int paramInt) {
        switch (paramInt) {
            case 2:
            default:
                return 50;
            case 0:
                return 10;
            case 1:
                return 20;
            case 3:
                return 100;
            case 4:
        }
        return 200;
    }

    public static int e(Context paramContext, String paramString) {
        return b(paramContext, "string", paramString);
    }

    public static int e(String paramString) {
        try {
            long l = Long.parseLong(paramString);
            if (l > 2147483647L)
                return 2147483647;
            if (l < 0L)
                return 0;
            return (int) l;
        } catch (NumberFormatException localNumberFormatException) {
        }
        return -1;
    }

    public static long e() {
        if (d())
            try {
                StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                long l = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks() / 1024L;
                return l;
            } catch (Exception localException) {
                localException.printStackTrace();
                return 0L;
            }
        return -1L;
    }

    public static long e(Context paramContext, String paramString, long paramLong) {
        return paramContext.getSharedPreferences("mistat", 0).getLong(paramString, paramLong);
    }

    public static String e(Context paramContext) {
        try {
            String str2 = paramContext.getSharedPreferences("vkeyid_settings", 0).getString("vkey_applist", "");
            if (am.a(str2))
                str1 = "";
            while (true) {
                return str1;
                str1 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str2);
                if (am.a(str1))
                    str1 = "";
            }
        } catch (Throwable localThrowable) {
            while (true)
                String str1 = "";
        } finally {
        }
    }

    public static String e(String paramString1, String paramString2) {
        String str1 = null;
        if (paramString1 != null) {
            str1 = null;
            if (paramString2 != null)
                break label14;
        }
        while (true) {
            return str1;
            try {
                label14:
                str1 = Base64.encodeToString(d(paramString2, paramString1), 0);
                if ((!TextUtils.isEmpty(str1)) && (str1.contains("\n"))) {
                    String str2 = str1.replace("\n", "");
                    return str2;
                }
            } catch (Throwable localThrowable) {
                com.mob.tools.e.a().w(localThrowable);
            }
        }
        return str1;
    }

    public static void e(Context paramContext, String paramString1, String paramString2) {
        if (paramContext == null)
            return;
        SharedPreferences.Editor localEditor = P(paramContext);
        localEditor.putString(paramString1, paramString2);
        localEditor.apply();
    }

    public static byte[] e(byte[] paramArrayOfByte) {
        if (paramArrayOfByte == null)
            return null;
        try {
            ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
            arrayOfByte = a(localByteArrayInputStream);
            localByteArrayInputStream.close();
            return arrayOfByte;
        } catch (Throwable localThrowable) {
            while (true) {
                com.mob.tools.e.a().w(localThrowable);
                byte[] arrayOfByte = null;
            }
        }
    }

    public static int f(Context paramContext, String paramString) {
        return b(paramContext, "layout", paramString);
    }

    public static Bitmap f(String paramString) {
        if (TextUtils.isEmpty(paramString)) ;
        File localFile;
        do {
            return null;
            localFile = new File(paramString);
        }
        while (!localFile.exists());
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        Bitmap localBitmap = a(localFileInputStream, 1);
        localFileInputStream.close();
        return localBitmap;
    }

    public static String f(Context paramContext) {
        try {
            String str2 = paramContext.getSharedPreferences("vkeyid_settings", 0).getString("vkey_applist_version", "");
            if (am.a(str2))
                str1 = "";
            while (true) {
                return str1;
                str1 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str2);
                if (am.a(str1))
                    str1 = "";
            }
        } catch (Throwable localThrowable) {
            while (true)
                String str1 = "";
        } finally {
        }
    }

    public static String f(Context paramContext, String paramString1, String paramString2) {
        return paramContext.getSharedPreferences("mistat", 0).getString(paramString1, paramString2);
    }

    public static String f(String paramString1, String paramString2) {
        String str = URLEncoder.encode(paramString1, paramString2);
        if (TextUtils.isEmpty(str))
            return str;
        return str.replace("+", "%20");
    }

    public static List<BookFile> f() {
        ArrayList localArrayList = new ArrayList();
        File[] arrayOfFile = J(com.ushaqi.zhuishushenqi.c.g).listFiles();
        if (arrayOfFile != null) {
            int i = arrayOfFile.length;
            for (int j = 0; j < i; j++) {
                File localFile = arrayOfFile[j];
                BookFile localBookFile = new BookFile();
                localBookFile.setSize(a(localFile.length(), true));
                localBookFile.setName(localFile.getName());
                localArrayList.add(localBookFile);
            }
        }
        return localArrayList;
    }

    public static void f(Context paramContext, String paramString, long paramLong) {
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("mistat", 0).edit();
        localEditor.putLong(paramString, paramLong);
        localEditor.commit();
    }

    public static boolean f(int paramInt) {
        return (paramInt == 4) || (paramInt == 1) || (paramInt == 2);
    }

    public static byte[] f(byte[] paramArrayOfByte) {
        if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
            return null;
        Deflater localDeflater = new Deflater();
        localDeflater.setInput(paramArrayOfByte);
        localDeflater.finish();
        byte[] arrayOfByte = new byte[8192];
        a = 0;
        try {
            localByteArrayOutputStream = new ByteArrayOutputStream();
            try {
                while (true) {
                    if (localDeflater.finished()) {
                        localDeflater.end();
                        localByteArrayOutputStream.close();
                        return localByteArrayOutputStream.toByteArray();
                    }
                    int i = localDeflater.deflate(arrayOfByte);
                    a = i + a;
                    localByteArrayOutputStream.write(arrayOfByte, 0, i);
                }
            } finally {
            }
            if (localByteArrayOutputStream != null)
                localByteArrayOutputStream.close();
            throw localObject1;
        } finally {
            Object localObject2 = localObject3;
            ByteArrayOutputStream localByteArrayOutputStream = null;
        }
    }

    public static int g(Context paramContext, String paramString) {
        return b(paramContext, "id", paramString);
    }

    public static Bitmap.CompressFormat g(String paramString) {
        String str1 = paramString.toLowerCase();
        if ((str1.endsWith("png")) || (str1.endsWith("gif")))
            return Bitmap.CompressFormat.PNG;
        if ((str1.endsWith("jpg")) || (str1.endsWith("jpeg")) || (str1.endsWith("bmp")) || (str1.endsWith("tif")))
            return Bitmap.CompressFormat.JPEG;
        String str2 = W(paramString);
        if ((str2.endsWith("png")) || (str2.endsWith("gif")))
            return Bitmap.CompressFormat.PNG;
        return Bitmap.CompressFormat.JPEG;
    }

    public static String g(int paramInt) {
        switch (paramInt) {
            default:
                return "mix";
            case 5:
                return "mix";
            case 0:
                return "zhineng";
            case 4:
                return "shenma";
            case 1:
                return "baidu";
            case 2:
                return "tieba";
            case 6:
                return "soso";
            case 7:
                return "sogou";
            case 8:
                return "leidian";
            case 3:
                return "easou";
            case 9:
        }
        return "zhuishuvip";
    }

    private static String g(byte[] paramArrayOfByte) {
        byte[] arrayOfByte1 = {-1, -40, -1, -32};
        byte[] arrayOfByte2 = {-1, -40, -1, -31};
        if ((a(paramArrayOfByte, arrayOfByte1)) || (a(paramArrayOfByte, arrayOfByte2)))
            return "jpg";
        if (a(paramArrayOfByte, new byte[]{-119, 80, 78, 71}))
            return "png";
        if (a(paramArrayOfByte, "GIF".getBytes()))
            return "gif";
        if (a(paramArrayOfByte, "BM".getBytes()))
            return "bmp";
        byte[] arrayOfByte3 = {73, 73, 42};
        byte[] arrayOfByte4 = {77, 77, 42};
        if ((a(paramArrayOfByte, arrayOfByte3)) || (a(paramArrayOfByte, arrayOfByte4)))
            return "tif";
        return null;
    }

    public static Map<String, String> g(Context paramContext) {
        try {
            com.alipay.security.mobile.module.b.d.a();
            HashMap localHashMap = new HashMap();
            localHashMap.put("AE1", com.alipay.security.mobile.module.b.d.b());
            StringBuilder localStringBuilder1 = new StringBuilder();
            String str1;
            StringBuilder localStringBuilder2;
            if (com.alipay.security.mobile.module.b.d.c()) {
                str1 = "1";
                localHashMap.put("AE2", str1);
                localStringBuilder2 = new StringBuilder();
                if (!com.alipay.security.mobile.module.b.d.a(paramContext))
                    break label275;
            }
            label275:
            for (String str2 = "1"; ; str2 = "0") {
                localHashMap.put("AE3", str2);
                localHashMap.put("AE4", com.alipay.security.mobile.module.b.d.d());
                localHashMap.put("AE5", com.alipay.security.mobile.module.b.d.e());
                localHashMap.put("AE6", com.alipay.security.mobile.module.b.d.f());
                localHashMap.put("AE7", com.alipay.security.mobile.module.b.d.g());
                localHashMap.put("AE8", com.alipay.security.mobile.module.b.d.h());
                localHashMap.put("AE9", com.alipay.security.mobile.module.b.d.i());
                localHashMap.put("AE10", com.alipay.security.mobile.module.b.d.j());
                localHashMap.put("AE11", com.alipay.security.mobile.module.b.d.k());
                localHashMap.put("AE12", com.alipay.security.mobile.module.b.d.l());
                localHashMap.put("AE13", com.alipay.security.mobile.module.b.d.m());
                localHashMap.put("AE14", com.alipay.security.mobile.module.b.d.n());
                localHashMap.put("AE15", com.alipay.security.mobile.module.b.d.o());
                return localHashMap;
                str1 = "0";
                break;
            }
        } finally {
        }
    }

    public static void g(Context paramContext, String paramString1, String paramString2) {
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("mistat", 0).edit();
        localEditor.putString(paramString1, paramString2);
        localEditor.commit();
    }

    public static boolean g() {
        return Build.VERSION.SDK_INT >= 11;
    }

    public static boolean g(String paramString1, String paramString2) {
        if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) ;
        while (!new File(paramString1).exists())
            return false;
        try {
            a(new FileInputStream(paramString1), new FileOutputStream(paramString2));
            return true;
        } catch (Throwable localThrowable) {
        }
        return false;
    }

    public static com.alipay.security.mobile.module.http.a h(Context paramContext) {
        if (paramContext == null)
            return null;
        return com.alipay.security.mobile.module.http.b.a(paramContext);
    }

    public static String h(Context paramContext, String paramString) {
        String str = paramContext.getFilesDir().getAbsolutePath() + "/Mob/cache/";
        com.mob.tools.b.a locala = com.mob.tools.b.a.a(paramContext);
        if (com.mob.tools.b.a.p())
            str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Mob/" + locala.k() + "/cache/";
        if (!TextUtils.isEmpty(paramString))
            str = str + paramString + "/";
        File localFile = new File(str);
        if (!localFile.exists())
            localFile.mkdirs();
        return str;
    }

    public static String h(String paramString) {
        if (paramString == null) ;
        byte[] arrayOfByte;
        do {
            return null;
            arrayOfByte = i(paramString);
        }
        while (arrayOfByte == null);
        return com.mob.tools.b.d.a(arrayOfByte);
    }

    public static String h(String paramString1, String paramString2) {
        try {
            String str1 = ByteString.of((paramString1 + ":" + paramString2).getBytes("ISO-8859-1")).base64();
            String str2 = "Basic " + str1;
            return str2;
        } catch (UnsupportedEncodingException localUnsupportedEncodingException) {
        }
        throw new AssertionError();
    }

    public static boolean h() {
        return Build.VERSION.SDK_INT >= 14;
    }

    public static boolean h(int paramInt) {
        return (paramInt == 6) || (paramInt == 7) || (paramInt == 8) || (paramInt == 3);
    }

    public static int i(Context paramContext) {
        ConnectivityManager localConnectivityManager = (ConnectivityManager) paramContext.getSystemService("connectivity");
        NetworkInfo localNetworkInfo;
        try {
            localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
            if (localNetworkInfo == null)
                return -1;
        } catch (Exception localException) {
            localException.printStackTrace();
            return -1;
        }
        if (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
            if (localNetworkInfo.getType() == 1)
                return 6;
            if (localNetworkInfo.getType() == 0) {
                String str3 = localNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(str3))
                    return 1;
                String str4 = str3.toLowerCase();
                if (str4.equals("cmwap"))
                    return 0;
                if (str4.equals("cmnet"))
                    return 1;
                if (str4.equals("3gwap"))
                    return 7;
                if (str4.equals("3gnet"))
                    return 8;
                if (str4.equals("uniwap"))
                    return 2;
                if (str4.equals("uninet"))
                    return 3;
                if (str4.equals("ctwap"))
                    return 4;
                if ((str4.equals("ctnet")) || (str4.equals("#777")))
                    return 5;
                return 1;
            }
            return 1;
        }
        NetworkInfo[] arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
        if (arrayOfNetworkInfo == null)
            return -1;
        int i = arrayOfNetworkInfo.length;
        for (int j = 0; ; j++) {
            if (j >= i)
                return -1;
            if ((arrayOfNetworkInfo[j].getState() == NetworkInfo.State.CONNECTED) && (arrayOfNetworkInfo[j].getType() == 0)) {
                String str1 = localNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(str1))
                    return 1;
                String str2 = str1.toLowerCase();
                if (str2.equals("cmwap"))
                    return 0;
                if (str2.equals("cmnet"))
                    return 1;
                if (str2.equals("3gwap"))
                    return 7;
                if (str2.equals("3gnet"))
                    return 8;
                if (str2.equals("uniwap"))
                    return 2;
                if (str2.equals("uninet"))
                    return 3;
                if (str2.equals("ctwap"))
                    return 4;
                if ((str2.equals("ctnet")) || (str2.equals("#777")))
                    return 5;
                return 1;
            }
        }
    }

    public static String i(int paramInt) {
        if (paramInt / 10000 > 0)
            return paramInt / 10000 + "万";
        if (paramInt / 1000 > 0)
            return paramInt / 1000 + "千";
        if (paramInt / 100 > 0)
            return paramInt / 100 + "百";
        return String.valueOf(paramInt);
    }

    public static JSONObject i(String paramString1, String paramString2) {
        int i = 0;
        JSONObject localJSONObject = new JSONObject();
        try {
            String[] arrayOfString1 = paramString1.split(paramString2);
            while (i < arrayOfString1.length) {
                String[] arrayOfString2 = arrayOfString1[i].split("=");
                localJSONObject.put(arrayOfString2[0], arrayOfString1[i].substring(1 + arrayOfString2[0].length()));
                i++;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return localJSONObject;
    }

    public static void i(Context paramContext, String paramString) {
        HashMap localHashMap = new HashMap();
        localHashMap.put("uid", com.ushaqi.zhuishushenqi.util.e.c(paramContext));
        com.a.a.a.a(paramContext, paramString, localHashMap);
    }

    public static boolean i() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static byte[] i(String paramString) {
        if (paramString == null)
            return null;
        try {
            byte[] arrayOfByte = e(paramString.getBytes("utf-8"));
            return arrayOfByte;
        } catch (Throwable localThrowable) {
            com.mob.tools.e.a().w(localThrowable);
        }
        return null;
    }

    public static int j(int paramInt) {
        if (Build.VERSION.SDK_INT >= 11)
            return 0xFF & paramInt >> 8;
        return 0xFF & paramInt >> 8;
    }

    public static String j(String paramString) {
        try {
            String str = f(paramString, "utf-8");
            return str;
        } catch (Throwable localThrowable) {
            com.mob.tools.e.a().w(localThrowable);
        }
        return null;
    }

    public static ArrayList<String> j(String paramString1, String paramString2) {
        String str = "/ZhuiShuShenQi/Chapter" + File.separator + paramString1 + File.separator + paramString2;
        return c(new File(com.ushaqi.zhuishushenqi.c.a, str));
    }

    public static boolean j() {
        return Build.VERSION.SDK_INT == 19;
    }

    public static boolean j(Context paramContext) {
        return i(paramContext) != -1;
    }

    public static boolean j(Context paramContext, String paramString) {
        PackageManager localPackageManager = paramContext.getPackageManager();
        try {
            localPackageManager.getPackageInfo(paramString, 128);
            return true;
        } catch (PackageManager.NameNotFoundException localNameNotFoundException) {
        }
        return false;
    }

    public static long k(String paramString) {
        try {
            Date localDate = new Date(paramString);
            Calendar localCalendar = Calendar.getInstance();
            localCalendar.setTime(localDate);
            long l = localCalendar.getTimeInMillis();
            return l;
        } catch (Throwable localThrowable) {
            com.mob.tools.e.a().w(localThrowable);
        }
        return 0L;
    }

    // ERROR //
    public static Bitmap k(Context paramContext, String paramString) {
        // Byte code:
        //   0: aload_0
        //   1: aload_1
        //   2: invokevirtual 3137	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
        //   5: astore 9
        //   7: aload 9
        //   9: astore_3
        //   10: aload_3
        //   11: invokestatic 426	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //   14: astore 10
        //   16: aload 10
        //   18: astore 6
        //   20: aload_3
        //   21: ifnull +7 -> 28
        //   24: aload_3
        //   25: invokevirtual 700	java/io/FileInputStream:close	()V
        //   28: aload 6
        //   30: areturn
        //   31: astore 11
        //   33: aload 11
        //   35: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   38: aload 6
        //   40: areturn
        //   41: astore_2
        //   42: aconst_null
        //   43: astore_3
        //   44: aload_2
        //   45: invokevirtual 3138	java/lang/Throwable:printStackTrace	()V
        //   48: aconst_null
        //   49: astore 6
        //   51: aload_3
        //   52: ifnull -24 -> 28
        //   55: aload_3
        //   56: invokevirtual 700	java/io/FileInputStream:close	()V
        //   59: aconst_null
        //   60: areturn
        //   61: astore 7
        //   63: aload 7
        //   65: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   68: aconst_null
        //   69: areturn
        //   70: astore 8
        //   72: aconst_null
        //   73: astore_3
        //   74: aload 8
        //   76: astore 4
        //   78: aload_3
        //   79: ifnull +7 -> 86
        //   82: aload_3
        //   83: invokevirtual 700	java/io/FileInputStream:close	()V
        //   86: aload 4
        //   88: athrow
        //   89: astore 5
        //   91: aload 5
        //   93: invokevirtual 429	java/lang/Exception:printStackTrace	()V
        //   96: goto -10 -> 86
        //   99: astore 4
        //   101: goto -23 -> 78
        //   104: astore_2
        //   105: goto -61 -> 44
        //   108: astore_2
        //   109: aconst_null
        //   110: astore_3
        //   111: goto -67 -> 44
        //   114: astore_2
        //   115: goto -71 -> 44
        //
        // Exception table:
        //   from	to	target	type
        //   24	28	31	java/lang/Exception
        //   0	7	41	java/io/FileNotFoundException
        //   55	59	61	java/lang/Exception
        //   0	7	70	finally
        //   82	86	89	java/lang/Exception
        //   10	16	99	finally
        //   44	48	99	finally
        //   10	16	104	java/io/FileNotFoundException
        //   0	7	108	java/lang/OutOfMemoryError
        //   10	16	114	java/lang/OutOfMemoryError
    }

    public static <T> T k(String paramString1, String paramString2) {
        try {
            File localFile = new File(J(paramString1), paramString2);
            if (!localFile.exists())
                return null;
            Object localObject = new ObjectInputStream(new FileInputStream(localFile)).readObject();
            return localObject;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
            return null;
        } catch (ClassNotFoundException localClassNotFoundException) {
            localClassNotFoundException.printStackTrace();
        }
        return null;
    }

    public static boolean k() {
        try {
            boolean bool = ((Boolean) Class.forName("android.os.Build").getMethod("hasSmartBar", new Class[0]).invoke(null, new Object[0])).booleanValue();
            return bool;
        } catch (Exception localException) {
        }
        return Build.DEVICE.equals("mx2");
    }

    public static boolean k(Context paramContext) {
        int i = i(paramContext);
        boolean bool;
        if ((i != 0) && (i != 1) && (i != 7) && (i != 8) && (i != 9)) {
            bool = false;
            if (i != 10) ;
        } else {
            bool = true;
        }
        return bool;
    }

    public static Bundle l(String paramString) {
        int i = paramString.indexOf("://");
        String str;
        if (i >= 0)
            str = "http://" + paramString.substring(i + 1);
        try {
            while (true) {
                URL localURL = new URL(str);
                Bundle localBundle = m(localURL.getQuery());
                localBundle.putAll(m(localURL.getRef()));
                return localBundle;
                str = "http://" + paramString;
            }
        } catch (Throwable localThrowable) {
            com.mob.tools.e.a().w(localThrowable);
        }
        return new Bundle();
    }

    public static String l(String paramString1, String paramString2) {
        if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
            if (paramString1.toLowerCase().compareTo(paramString2.toLowerCase()) <= 0)
                return paramString1 + "_" + paramString2;
            return paramString2 + "_" + paramString1;
        }
        return null;
    }

    public static boolean l() {
        return !"0".equals(com.umeng.a.b.b(MyApplication.a(), "force_encrypt_chapter"));
    }

    public static boolean l(Context paramContext, String paramString) {
        return a(paramContext, paramString, true);
    }

    public static int[] l(Context paramContext) {
        // Byte code:
        //   0: aload_0
        //   1: ldc_w 378
        //   4: invokevirtual 384	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
        //   7: checkcast 386	android/view/WindowManager
        //   10: astore_3
        //   11: aload_3
        //   12: ifnonnull +29 -> 41
        //   15: iconst_2
        //   16: newarray int
        //   18: dup
        //   19: iconst_0
        //   20: iconst_0
        //   21: iastore
        //   22: dup
        //   23: iconst_1
        //   24: iconst_0
        //   25: iastore
        //   26: areturn
        //   27: astore_1
        //   28: invokestatic 707	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
        //   31: aload_1
        //   32: invokevirtual 713	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
        //   35: pop
        //   36: aconst_null
        //   37: astore_3
        //   38: goto -27 -> 11
        //   41: aload_3
        //   42: invokeinterface 390 1 0
        //   47: astore 4
        //   49: getstatic 1099	android/os/Build$VERSION:SDK_INT	I
        //   52: bipush 13
        //   54: if_icmpge +45 -> 99
        //   57: new 375	android/util/DisplayMetrics
        //   60: dup
        //   61: invokespecial 376	android/util/DisplayMetrics:<init>	()V
        //   64: astore 5
        //   66: aload 4
        //   68: aload 5
        //   70: invokevirtual 396	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
        //   73: iconst_2
        //   74: newarray int
        //   76: astore 6
        //   78: aload 6
        //   80: iconst_0
        //   81: aload 5
        //   83: getfield 3178	android/util/DisplayMetrics:widthPixels	I
        //   86: iastore
        //   87: aload 6
        //   89: iconst_1
        //   90: aload 5
        //   92: getfield 399	android/util/DisplayMetrics:heightPixels	I
        //   95: iastore
        //   96: aload 6
        //   98: areturn
        //   99: new 3180	android/graphics/Point
        //   102: dup
        //   103: invokespecial 3181	android/graphics/Point:<init>	()V
        //   106: astore 7
        //   108: aload 4
        //   110: invokevirtual 1038	java/lang/Object:getClass	()Ljava/lang/Class;
        //   113: ldc_w 3183
        //   116: iconst_1
        //   117: anewarray 464	java/lang/Class
        //   120: dup
        //   121: iconst_0
        //   122: ldc_w 3180
        //   125: aastore
        //   126: invokevirtual 478	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //   129: astore 10
        //   131: aload 10
        //   133: iconst_1
        //   134: invokevirtual 3186	java/lang/reflect/Method:setAccessible	(Z)V
        //   137: aload 10
        //   139: aload 4
        //   141: iconst_1
        //   142: anewarray 4	java/lang/Object
        //   145: dup
        //   146: iconst_0
        //   147: aload 7
        //   149: aastore
        //   150: invokevirtual 499	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //   153: pop
        //   154: iconst_2
        //   155: newarray int
        //   157: astore 12
        //   159: aload 12
        //   161: iconst_0
        //   162: aload 7
        //   164: getfield 3189	android/graphics/Point:x	I
        //   167: iastore
        //   168: aload 12
        //   170: iconst_1
        //   171: aload 7
        //   173: getfield 3192	android/graphics/Point:y	I
        //   176: iastore
        //   177: aload 12
        //   179: areturn
        //   180: astore 8
        //   182: invokestatic 707	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
        //   185: aload 8
        //   187: invokevirtual 713	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
        //   190: pop
        //   191: iconst_2
        //   192: newarray int
        //   194: dup
        //   195: iconst_0
        //   196: iconst_0
        //   197: iastore
        //   198: dup
        //   199: iconst_1
        //   200: iconst_0
        //   201: iastore
        //   202: areturn
        //
        // Exception table:
        //   from	to	target	type
        //   0	11	27	java/lang/Throwable
        //   99	177	180	java/lang/Throwable
    }

    public static Bundle m(String paramString) {
        Bundle localBundle = new Bundle();
        if (paramString != null) {
            String[] arrayOfString1 = paramString.split("&");
            int i = arrayOfString1.length;
            int j = 0;
            if (j < i) {
                String[] arrayOfString2 = arrayOfString1[j].split("=");
                if ((arrayOfString2.length < 2) || (arrayOfString2[1] == null))
                    localBundle.putString(URLDecoder.decode(arrayOfString2[0]), "");
                while (true) {
                    j++;
                    break;
                    localBundle.putString(URLDecoder.decode(arrayOfString2[0]), URLDecoder.decode(arrayOfString2[1]));
                }
            }
        }
        return localBundle;
    }

    public static File m(Context paramContext) {
        return a(paramContext, true);
    }

    private static String m() {
        String str1 = am.d("deviceid_v2");
        try {
            String str2 = new JSONObject(str1).getString("device");
            String str3 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str2);
            return str3;
        } catch (Exception localException) {
        }
        return null;
    }

    public static void m(Context paramContext, String paramString) {
        if (paramString == null)
            e(paramContext, "ad_splash_show", null);
        String str;
        do {
            return;
            str = d(paramContext, "ad_splash_show", null);
        }
        while ((str != null) && (str.contains(paramString)));
        com.umeng.a.b.a(paramContext, "ad_splash_show", paramString);
        e(paramContext, "ad_splash_show", str + paramString);
    }

    public static int n(String paramString) {
        int i = 1;
        if (paramString == null)
            throw X(paramString);
        int j = paramString.length();
        if (j == 0)
            throw X(paramString);
        if (paramString.charAt(0) == '-') ;
        for (int k = i; k != 0; k = 0) {
            if (i != j)
                break label58;
            throw X(paramString);
        }
        i = 0;
        label58:
        int m = paramString.length();
        int n = i;
        int i1 = 0;
        while (n < m) {
            int i2 = n + 1;
            int i3 = a(paramString.charAt(n), 10);
            if (i3 == -1)
                throw X(paramString);
            if (-214748364 > i1)
                throw X(paramString);
            int i4 = i1 * 10 - i3;
            if (i4 > i1)
                throw X(paramString);
            i1 = i4;
            n = i2;
        }
        if (k == 0) {
            i1 = -i1;
            if (i1 < 0)
                throw X(paramString);
        }
        return i1;
    }

    public static File n(Context paramContext) {
        File localFile1 = a(paramContext, true);
        File localFile2 = new File(localFile1, "uil-images");
        if ((!localFile2.exists()) && (!localFile2.mkdir()))
            return localFile1;
        return localFile2;
    }

    private static String n() {
        List localList = BookReadRecord.getAll();
        StringBuilder localStringBuilder = new StringBuilder();
        if (localList.size() > 0) {
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext()) {
                localStringBuilder.append(((BookReadRecord) localIterator.next()).getBookId());
                localStringBuilder.append("|");
            }
            localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
        }
        return localStringBuilder.toString();
    }

    public static void n(Context paramContext, String paramString) {
        com.umeng.a.b.a(paramContext, "home_ab_menu_click", paramString);
    }

    public static long o(String paramString) {
        int i = 1;
        if (paramString == null)
            throw new Throwable("Invalid long: \"" + paramString + "\"");
        int j = paramString.length();
        if (j == 0)
            throw new Throwable("Invalid long: \"" + paramString + "\"");
        if (paramString.charAt(0) == '-') ;
        for (int k = i; k != 0; k = 0) {
            if (i != j)
                break label136;
            throw new Throwable("Invalid long: \"" + paramString + "\"");
        }
        i = 0;
        label136:
        return a(paramString, i, 10, k);
    }

    private static String o() {
        if ((am.e() != null) && (am.e().getUser() != null))
            return am.e().getUser().getId();
        return "";
    }

    public static Map<String, String> o(Context paramContext) {
        Map localMap = p(paramContext);
        localMap.put("iid", n());
        return localMap;
    }

    public static void o(Context paramContext, String paramString) {
        com.umeng.a.b.a(paramContext, "splash_ad_click", paramString);
    }

    public static Map<String, String> p(Context paramContext) {
        HashMap localHashMap = new HashMap();
        localHashMap.put("uid", com.ushaqi.zhuishushenqi.util.e.c(paramContext));
        return localHashMap;
    }

    public static void p(Context paramContext, String paramString) {
        com.umeng.a.b.a(paramContext, "book_category_major_click", paramString);
    }

    public static boolean p(String paramString) {
        return (paramString.equals("POST")) || (paramString.equals("PUT")) || (paramString.equals("PATCH"));
    }

    public static void q(Context paramContext) {
        d = d(paramContext, "CIPHER_BOOK_ID", null);
        e = d(paramContext, "CIPHER_TOC_ID", null);
        f = d(paramContext, "CIPHER_CHECKSUM", null);
    }

    public static void q(Context paramContext, String paramString) {
        com.umeng.a.b.a(paramContext, "reader_menu_event", paramString);
    }

    public static boolean q(String paramString) {
        return (p(paramString)) || (paramString.equals("DELETE"));
    }

    public static int r(Context paramContext) {
        NetworkInfo localNetworkInfo = ((ConnectivityManager) paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (localNetworkInfo == null)
            return 0;
        int i = localNetworkInfo.getType();
        int j;
        if (i == 0) {
            String str = localNetworkInfo.getExtraInfo();
            if (Q(str))
                break label76;
            if (str.toLowerCase().equals("cmnet"))
                j = 3;
        }
        while (true) {
            return j;
            j = 2;
            continue;
            if (i == 1)
                j = 1;
            else
                label76:j = 0;
        }
    }

    public static void r(String paramString) {
        String str = s(paramString);
        BookSubRecord.create(str);
        com.xiaomi.mipush.sdk.d.b(MyApplication.a(), str, null);
    }

    public static boolean r(Context paramContext, String paramString) {
        return "1".equals(com.umeng.a.b.b(paramContext, paramString));
    }

    public static String s(String paramString) {
        return "book:" + paramString;
    }

    public static void s(Context paramContext, String paramString) {
        com.umeng.a.b.a(paramContext, "post_official_open", paramString);
    }

    public static boolean s(Context paramContext) {
        return r(paramContext) == 1;
    }

    public static void t(Context paramContext, String paramString) {
        com.umeng.a.b.a(paramContext, "HOT_KEY_WORD_CLICK", paramString);
    }

    public static void t(String paramString) {
        String str = s(paramString);
        BookUnSubRecord.create(str);
        com.xiaomi.mipush.sdk.d.c(MyApplication.a(), str, null);
    }

    public static boolean t(Context paramContext) {
        ConnectivityManager localConnectivityManager = (ConnectivityManager) paramContext.getSystemService("connectivity");
        if (localConnectivityManager == null)
            return false;
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        return (localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting());
    }

    public static float u(Context paramContext, String paramString) {
        String str = com.umeng.a.b.b(paramContext, paramString);
        try {
            float f1 = Float.parseFloat(str);
            return f1;
        } catch (Exception localException) {
        }
        return 0.0F;
    }

    public static void u(Context paramContext) {
        int i = t.a();
        if (i != a(paramContext, "key_all_post_open_by_day", 0)) {
            com.umeng.a.b.a(paramContext, "all_post_open_by_day");
            b(paramContext, "key_all_post_open_by_day", i);
        }
    }

    public static void u(String paramString) {
        a(paramString, BookSyncRecord.BookModifyType.SHELF_ADD);
    }

    public static float v(Context paramContext, String paramString) {
        String str = com.umeng.a.b.b(paramContext, paramString);
        try {
            float f1 = Float.parseFloat(str);
            return f1;
        } catch (Exception localException) {
        }
        return 1.0F;
    }

    public static void v(Context paramContext) {
        int i = t.a();
        if (i != a(paramContext, "key_audiobook_listen_count", 0)) {
            com.umeng.a.b.a(paramContext, "audiobook_listen_count");
            b(paramContext, "key_audiobook_listen_count", i);
        }
    }

    public static void v(String paramString) {
        a(paramString, BookSyncRecord.BookModifyType.SHELF_REMOVE);
    }

    public static void w(String paramString) {
        a(paramString, BookSyncRecord.BookModifyType.FEED_ADD);
    }

    public static boolean w(Context paramContext) {
        if ("com.ushaqi.zhuishushenqitest".equals("com.ushaqi.zhuishushenqi"))
            return true;
        String str = am.n(paramContext);
        int i = b(com.umeng.a.b.b(paramContext, "home_game_center_toggle"), 0);
        if (am.f(paramContext) < i) ;
        for (boolean bool = true; ; bool = false) {
            if ((!"Anzhi".equals(str)) && (!"Taobao".equals(str)) && (!"Uc".equals(str)) && (!"Zhihuiyun".equals(str)) && (!"Tencent".equals(str)))
                break label109;
            if ((bool) && (am.o(paramContext)))
                break;
            return false;
        }
        label109:
        return bool;
    }

    public static boolean w(Context paramContext, String paramString) {
        String str = com.umeng.a.b.b(paramContext, paramString);
        try {
            float f1 = Float.parseFloat(str);
            return Math.random() < f1;
        } catch (Exception localException) {
        }
        return true;
    }

    public static void x(String paramString) {
        a(paramString, BookSyncRecord.BookModifyType.FEED_REMOVE);
    }

    public static boolean x(Context paramContext) {
        String str1 = am.n(paramContext);
        String str2 = com.umeng.a.b.b(paramContext, "game_center_disabled_at_channel");
        if ((str2 != null) && (str2.length() > 0)) {
            String[] arrayOfString = str2.split(",");
            int i = arrayOfString.length;
            for (int j = 0; j < i; j++)
                if (arrayOfString[j].equals(str1))
                    return false;
        }
        return true;
    }

    public static boolean x(Context paramContext, String paramString) {
        return paramContext.getSharedPreferences("mistat", 0).contains(paramString);
    }

    public static String y(String paramString) {
        String str1;
        String str2;
        label29:
        String str4;
        if (paramString != null) {
            str1 = paramString.replaceAll("(?m)^[ 　\t]+", "");
            if (str1 == null)
                break label115;
            str2 = str1.replaceAll("(?m)^", "　　");
            if (str2 == null)
                break label140;
            str4 = str2.replaceAll("&nbsp", "　").replaceAll("&quot", "\"");
            str3 = null;
            if (str4 == null) ;
        }
        label140:
        for (String str3 = str4.replaceAll("^　{3,}", "　　").replaceAll("\n　{3,}", "\n　　"); ; str3 = str2) {
            if ((str3 == null) || (str3.length() == 0) || (str3.charAt(-1 + str3.length()) == '\n')) {
                return str3;
                str1 = null;
                break;
                label115:
                str2 = null;
                break label29;
            }
            return str3 + '\n';
        }
    }

    public static boolean y(Context paramContext) {
        return "1".equals(com.umeng.a.b.b(paramContext, "show_remove_ad"));
    }

    public static String z(String paramString) {
        if (paramString != null)
            return paramString.replaceAll("\\n[\\s]+", "\n").trim();
        return null;
    }

    public static boolean z(Context paramContext) {
        String str1 = am.n(paramContext);
        String str2 = com.umeng.a.b.b(paramContext, "one_yuan_disabled_channel");
        if ((str2 != null) && (str2.length() > 0)) {
            String[] arrayOfString = str2.split(",");
            int i = arrayOfString.length;
            for (int j = 0; j < i; j++)
                if (arrayOfString[j].equals(str1))
                    return false;
        }
        return true;
    }

    public void a(am paramam) {
        this.b.setCurrentItem(paramam.a());
    }
}
