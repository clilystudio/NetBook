package com.clilystudio.app.netbook.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.ClipboardManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.c_StoragePathConst;
import com.clilystudio.app.netbook.db.BookDlRecord;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.ui.AdWebViewActivity;
import com.clilystudio.app.netbook.ui.SplashActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;

import org.json.JSONObject;

public class am_CommonUtils {
//    private CharSequence a;
//    private int b = -1;
//    private final TabLayout c;
//
//    am_CommonUtils(TabLayout paramTabLayout) {
//        this.c = paramTabLayout;
//    }
//
//    private static String A(Context paramContext) {
//        String str = com.arcsoft.hpay100.a.a.a(paramContext, "vkeyid_profiles_v3", "deviceid", "");
//        if (a_isEmptyString(str))
//            return null;
//        return com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str);
//    }

//    private static String getVersionName(Context context) {
//        try {
//            return context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_INSTRUMENTATION).versionName;
//        } catch (PackageManager.NameNotFoundException e) {
//            return "0.0.0";
//        }
//    }

    private static PackageInfo getPackageInfo(Context paramContext) {
        try {
            return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int a_getTextColor(Context context, int resId) {
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(new int[]{resId});
        int textColor = typedArray.getColor(0, 0);
        typedArray.recycle();
        return textColor;
    }
//
//    public static int a(String paramString, int paramInt) {
//        while (paramInt < paramString.length()) {
//            int i = paramString.charAt(paramInt);
//            if ((i != 32) && (i != 9))
//                break;
//            paramInt++;
//        }
//        return paramInt;
//    }
//
//    public static int a(String paramString1, int paramInt, String paramString2) {
//        while ((paramInt < paramString1.length()) && (paramString2.indexOf(paramString1.charAt(paramInt)) == -1))
//            paramInt++;
//        return paramInt;
//    }

    public static Bitmap a_createNinePatchBitmap(int id, int width, int height, Context context) {
        Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), id);
        NinePatchDrawable ninePatchDrawable = new NinePatchDrawable(bitmap, bitmap.getNinePatchChunk(), new Rect(), null);
        ninePatchDrawable.setBounds(0, 0, width, height);
        Bitmap ninePatchBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        ninePatchDrawable.draw(new Canvas(ninePatchBitmap));
        return ninePatchBitmap;
    }
//
//    public static d a(Context paramContext) {
//        try {
//            String str = A(paramContext);
//            if (a_isEmptyString(str))
//                str = i();
//            boolean bool = a_isEmptyString(str);
//            Object localObject2 = null;
//            if (bool) ;
//            while (true) {
//                return localObject2;
//                try {
//                    JSONObject localJSONObject = new JSONObject(str);
//                    d locald = new d(localJSONObject.optString("apdid"), localJSONObject.optString("deviceInfoHash"), localJSONObject.optString("token"), localJSONObject.optString("timestamp"));
//                    localObject2 = locald;
//                } catch (Exception localException) {
//                    com.alipay.security.mobile.module.a.a.a(localException);
//                    localObject2 = null;
//                }
//            }
//        } finally {
//        }
//    }

    public static Account a_getLoginAccount(Activity activity) {
        if (activity == null) {
            return null;
        }
        Account account = e_getAccount();
        if (account != null) {
            return account;
        }
        e.a(activity, "请登录后再操作");
        activity.startActivity(AuthLoginActivity.a(activity));
        return null;
    }
//
//    public static String a(Map<String, String> paramMap, String paramString1, String paramString2) {
//        if (paramMap == null) ;
//        String str;
//        do {
//            return paramString2;
//            str = (String) paramMap.get(paramString1);
//        }
//        while (str == null);
//        return str;
//    }
//
//    public static String a(byte[] paramArrayOfByte) {
//        int i = 0;
//        char[] arrayOfChar1 = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
//        try {
//            MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
//            localMessageDigest.update(paramArrayOfByte);
//            byte[] arrayOfByte = localMessageDigest.digest();
//            int j = arrayOfByte.length;
//            char[] arrayOfChar2 = new char[j << 1];
//            int k = 0;
//            while (i < j) {
//                int m = arrayOfByte[i];
//                int n = k + 1;
//                arrayOfChar2[k] = arrayOfChar1[(0xF & m >>> 4)];
//                k = n + 1;
//                arrayOfChar2[n] = arrayOfChar1[(m & 0xF)];
//                i++;
//            }
//            String str = new String(arrayOfChar2);
//            return str;
//        } catch (Exception localException) {
//        }
//        return null;
//    }

    public static void a_startActivity(Activity activity, String uriString, String errorMessage) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(uriString));
        try {
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e1) {
            e1.printStackTrace();
            if (errorMessage == null) {
                e.a(activity, errorMessage);
            }
        }
    }

    public static void a_setNotifyTime(Context context, long notifyTime) {
//        com.arcsoft.hpay100.a.a.e(context, "pref_new_imp_notif_time", String.valueOf(notifyTime));
    }

    public static void a_hideSoftInput(Context context, View view) {
        ((InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

//    // ERROR //
//    public static void a(Context paramContext, d paramd) {
//        // Byte code:
//        //   0: ldc 2
//        //   2: monitorenter
//        //   3: new 167	org/json/JSONObject
//        //   6: dup
//        //   7: invokespecial 307	org/json/JSONObject:<init>	()V
//        //   10: astore_2
//        //   11: aload_2
//        //   12: ldc 174
//        //   14: aload_1
//        //   15: invokevirtual 308	com/alipay/b/a/d:a	()Ljava/lang/String;
//        //   18: invokevirtual 312	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
//        //   21: pop
//        //   22: aload_2
//        //   23: ldc 180
//        //   25: aload_1
//        //   26: invokevirtual 314	com/alipay/b/a/d:b	()Ljava/lang/String;
//        //   29: invokevirtual 312	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
//        //   32: pop
//        //   33: aload_2
//        //   34: ldc 182
//        //   36: aload_1
//        //   37: invokevirtual 316	com/alipay/b/a/d:c	()Ljava/lang/String;
//        //   40: invokevirtual 312	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
//        //   43: pop
//        //   44: aload_2
//        //   45: ldc 184
//        //   47: aload_1
//        //   48: invokevirtual 319	com/alipay/b/a/d:d	()Ljava/lang/String;
//        //   51: invokevirtual 312	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
//        //   54: pop
//        //   55: aload_2
//        //   56: invokevirtual 322	org/json/JSONObject:toString	()Ljava/lang/String;
//        //   59: astore 9
//        //   61: invokestatic 40	com/alipay/security/mobile/module/a/a/b:a	()Ljava/lang/String;
//        //   64: aload 9
//        //   66: invokestatic 324	com/alipay/security/mobile/module/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
//        //   69: astore 10
//        //   71: aload 10
//        //   73: invokestatic 35	android/support/design/widget/am:a	(Ljava/lang/String;)Z
//        //   76: ifne +32 -> 108
//        //   79: new 326	java/util/HashMap
//        //   82: dup
//        //   83: invokespecial 327	java/util/HashMap:<init>	()V
//        //   86: astore 11
//        //   88: aload 11
//        //   90: ldc 25
//        //   92: aload 10
//        //   94: invokeinterface 330 3 0
//        //   99: pop
//        //   100: aload_0
//        //   101: ldc 23
//        //   103: aload 11
//        //   105: invokestatic 333	com/arcsoft/hpay100/a/a:a	(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
//        //   108: aload 9
//        //   110: invokestatic 35	android/support/design/widget/am:a	(Ljava/lang/String;)Z
//        //   113: istore 13
//        //   115: iload 13
//        //   117: ifne +44 -> 161
//        //   120: invokestatic 40	com/alipay/security/mobile/module/a/a/b:a	()Ljava/lang/String;
//        //   123: aload 9
//        //   125: invokestatic 324	com/alipay/security/mobile/module/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
//        //   128: astore 15
//        //   130: new 167	org/json/JSONObject
//        //   133: dup
//        //   134: invokespecial 307	org/json/JSONObject:<init>	()V
//        //   137: astore 16
//        //   139: aload 16
//        //   141: ldc_w 335
//        //   144: aload 15
//        //   146: invokevirtual 312	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
//        //   149: pop
//        //   150: ldc_w 337
//        //   153: aload 16
//        //   155: invokevirtual 322	org/json/JSONObject:toString	()Ljava/lang/String;
//        //   158: invokestatic 340	android/support/design/widget/am:c	(Ljava/lang/String;Ljava/lang/String;)V
//        //   161: ldc 2
//        //   163: monitorexit
//        //   164: return
//        //   165: astore 4
//        //   167: aload 4
//        //   169: invokestatic 192	com/alipay/security/mobile/module/a/a:a	(Ljava/lang/Throwable;)V
//        //   172: goto -11 -> 161
//        //   175: astore_3
//        //   176: ldc 2
//        //   178: monitorexit
//        //   179: aload_3
//        //   180: athrow
//        //   181: astore 14
//        //   183: goto -22 -> 161
//        //
//        // Exception table:
//        //   from	to	target	type
//        //   3	108	165	org/json/JSONException
//        //   108	115	165	org/json/JSONException
//        //   120	161	165	org/json/JSONException
//        //   3	108	175	finally
//        //   108	115	175	finally
//        //   120	161	175	finally
//        //   167	172	175	finally
//        //   120	161	181	java/lang/Exception
//    }

//    public static void a(Context paramContext, Game paramGame) {
//        List localList = (List) com.arcsoft.hpay100.a.a.k(com.ushaqi.zhuishushenqi.c.h, "played_game.txt");
//        if (localList == null) ;
//        for (Object localObject = new ArrayList(); ; localObject = localList) {
//            Iterator localIterator = ((List) localObject).iterator();
//            Game localGame;
//            do {
//                if (!localIterator.hasNext())
//                    break;
//                localGame = (Game) localIterator.next();
//            }
//            while (!localGame.get_id().equals(paramGame.get_id()));
//            while (true) {
//                if (localGame != null)
//                    ((List) localObject).remove(localGame);
//                ((List) localObject).add(0, paramGame);
//                com.arcsoft.hpay100.a.a.a(localObject, com.ushaqi.zhuishushenqi.c.h, "played_game.txt");
//                b(paramContext, paramGame);
//                return;
//                localGame = null;
//            }
//        }
//    }

    public static void a_copyTextToClipboard(Context context, String text) {
        if (context != null && text != null) {
            ((ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE)).setText(text);
        }
    }

    public static void a_setEditText(EditText paramEditText, String name) {
        String text = MyApplication.a_getInstance().a_getProperty(name);
//        if (!com.arcsoft.hpay100.a.a.Q(text)) {
        paramEditText.setText(text);
        paramEditText.requestFocus();
        paramEditText.setSelection(text.length());
//        }
    }

    public static boolean a_isTaskStoped(AsyncTask task) {
        return (task == null) || (task.getStatus() == AsyncTask.Status.FINISHED) || (task.isCancelled());
    }

    public static boolean a_isEmptyString(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean a_isSameString(String str1, String str2) {
        if (str1 == null) {
            return str2 == null;
        } else {
            return str1.equals(str2);
        }
    }

    public static int b_getBackgroundResourceId(Context paramContext, int resId) {
        TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(new int[]{resId});
        int resourceId = typedArray.getResourceId(0, 0);
        typedArray.recycle();
        return resourceId;
    }
//
//    public static int b(String paramString, int paramInt) {
//        try {
//            long l = Long.parseLong(paramString);
//            if (l > 2147483647L)
//                return 2147483647;
//            if (l < 0L)
//                return 0;
//            return (int) l;
//        } catch (NumberFormatException localNumberFormatException) {
//        }
//        return paramInt;
//    }

    public static DisplayMetrics b_getMetrics(Activity activity) {
        DisplayMetrics metrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
        return metrics;
    }
//
//    public static d b(Context paramContext) {
//        try {
//            String str = A(paramContext);
//            boolean bool = a_isEmptyString(str);
//            Object localObject2 = null;
//            if (bool) ;
//            while (true) {
//                return localObject2;
//                try {
//                    JSONObject localJSONObject = new JSONObject(str);
//                    d locald = new d(localJSONObject.optString("apdid"), localJSONObject.optString("deviceInfoHash"), localJSONObject.optString("token"), localJSONObject.optString("timestamp"));
//                    localObject2 = locald;
//                } catch (Exception localException) {
//                    com.alipay.security.mobile.module.a.a.a(localException);
//                    localObject2 = null;
//                }
//            }
//        } finally {
//        }
//    }

    public static String b_convertString(Context context, String str) {
        if (str == null) {
            return null;
        }
        H localH = H.a_getInstance(context);
        int length = str.length();
        char[] convertedChars = new char[length];
        for (int i = 0; i < length; i++) {
            convertedChars[i] = localH.a_convertChar(str.charAt(i));
        }
        return new String(convertedChars);
    }
//
//    public static String b(String paramString) {
//        int i = 0;
//        try {
//            if (a_isEmptyString(paramString))
//                return null;
//            MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
//            localMessageDigest.update(paramString.getBytes("UTF-8"));
//            byte[] arrayOfByte = localMessageDigest.digest();
//            StringBuilder localStringBuilder = new StringBuilder();
//            while (i < arrayOfByte.length) {
//                Object[] arrayOfObject = new Object[1];
//                arrayOfObject[0] = Byte.valueOf(arrayOfByte[i]);
//                localStringBuilder.append(String.format("%02x", arrayOfObject));
//                i++;
//            }
//            String str = localStringBuilder.toString();
//            return str;
//        } catch (Exception localException) {
//        }
//        return null;
//    }

//    // ERROR //
//    public static String b(String paramString1, String paramString2) {
//        // Byte code:
//        //   0: aconst_null
//        //   1: astore_2
//        //   2: new 524	java/io/File
//        //   5: dup
//        //   6: aload_0
//        //   7: aload_1
//        //   8: invokespecial 526	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
//        //   11: astore_3
//        //   12: aload_3
//        //   13: invokevirtual 529	java/io/File:exists	()Z
//        //   16: istore 12
//        //   18: iload 12
//        //   20: ifne +19 -> 39
//        //   23: aconst_null
//        //   24: invokevirtual 534	java/io/FileReader:close	()V
//        //   27: aconst_null
//        //   28: areturn
//        //   29: astore 16
//        //   31: aload 16
//        //   33: invokevirtual 495	java/io/IOException:printStackTrace	()V
//        //   36: goto -9 -> 27
//        //   39: aload_3
//        //   40: invokevirtual 537	java/io/File:length	()J
//        //   43: l2i
//        //   44: newarray char
//        //   46: astore 9
//        //   48: new 531	java/io/FileReader
//        //   51: dup
//        //   52: aload_3
//        //   53: invokespecial 540	java/io/FileReader:<init>	(Ljava/io/File;)V
//        //   56: astore 7
//        //   58: aload 7
//        //   60: aload 9
//        //   62: invokevirtual 544	java/io/FileReader:read	([C)I
//        //   65: pop
//        //   66: aload 7
//        //   68: invokevirtual 534	java/io/FileReader:close	()V
//        //   71: aload 9
//        //   73: invokestatic 547	java/lang/String:valueOf	([C)Ljava/lang/String;
//        //   76: areturn
//        //   77: astore 14
//        //   79: aload 14
//        //   81: invokevirtual 495	java/io/IOException:printStackTrace	()V
//        //   84: goto -13 -> 71
//        //   87: astore 6
//        //   89: aconst_null
//        //   90: astore 7
//        //   92: aload 6
//        //   94: astore 8
//        //   96: aconst_null
//        //   97: astore 9
//        //   99: aload 8
//        //   101: invokevirtual 550	java/io/IOException:getMessage	()Ljava/lang/String;
//        //   104: pop
//        //   105: aload 7
//        //   107: invokevirtual 534	java/io/FileReader:close	()V
//        //   110: goto -39 -> 71
//        //   113: astore 11
//        //   115: aload 11
//        //   117: invokevirtual 495	java/io/IOException:printStackTrace	()V
//        //   120: goto -49 -> 71
//        //   123: astore 4
//        //   125: aload_2
//        //   126: invokevirtual 534	java/io/FileReader:close	()V
//        //   129: aload 4
//        //   131: athrow
//        //   132: astore 5
//        //   134: aload 5
//        //   136: invokevirtual 495	java/io/IOException:printStackTrace	()V
//        //   139: goto -10 -> 129
//        //   142: astore 4
//        //   144: aload 7
//        //   146: astore_2
//        //   147: goto -22 -> 125
//        //   150: astore 15
//        //   152: aload 15
//        //   154: astore 8
//        //   156: aconst_null
//        //   157: astore 7
//        //   159: goto -60 -> 99
//        //   162: astore 8
//        //   164: goto -65 -> 99
//        //
//        // Exception table:
//        //   from	to	target	type
//        //   23	27	29	java/io/IOException
//        //   66	71	77	java/io/IOException
//        //   2	18	87	java/io/IOException
//        //   39	48	87	java/io/IOException
//        //   105	110	113	java/io/IOException
//        //   2	18	123	finally
//        //   39	48	123	finally
//        //   48	58	123	finally
//        //   125	129	132	java/io/IOException
//        //   58	66	142	finally
//        //   99	105	142	finally
//        //   48	58	150	java/io/IOException
//        //   58	66	162	java/io/IOException
//    }
//
//    public static void b(Context paramContext, long paramLong) {
//        com.arcsoft.hpay100.a.a.e(paramContext, "pref_new_unimp_notif_time", String.valueOf(paramLong));
//    }

    public static void b_loadWebGame(Context context, Game game) {
        try {
            context.startActivity(AdWebViewActivity.a(context, game.getName(), game.getAndroidLink()));
        } catch (Exception localException) {
            if (context instanceof Activity) {
                e.a((Activity) context, "游戏载入出错，请稍后重试");
            }
//            com.umeng.a.b.a(context, "zhuishu_catch_exception", "AppHelper_launchMicroGame:" + localException.getMessage());
        }
    }

    public static <T> T c_getMetaData(Context context, String key) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.GET_META_DATA);
            if (applicationInfo.metaData != null) {
                return (T) applicationInfo.metaData.get(key);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    //
//    public static String c(String paramString) {
//        try {
//            byte[] arrayOfByte1 = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(paramString.length()).array();
//            ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramString.length());
//            GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
//            localGZIPOutputStream.write(paramString.getBytes("UTF-8"));
//            localGZIPOutputStream.close();
//            localByteArrayOutputStream.close();
//            byte[] arrayOfByte2 = new byte[4 + localByteArrayOutputStream.toByteArray().length];
//            System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, 4);
//            System.arraycopy(localByteArrayOutputStream.toByteArray(), 0, arrayOfByte2, 4, localByteArrayOutputStream.toByteArray().length);
//            String str = Base64.encodeToString(arrayOfByte2, 8);
//            return str;
//        } catch (Exception localException) {
//        }
//        return "";
//    }
//
//    public static Map<String, String> c(Context context) {
//        try {
//            HashMap localHashMap = new HashMap();
//            localHashMap.put("AA1", context.getPackageName());
//            localHashMap.put("AA2", getVersionName(context));
//            localHashMap.put("AA3", "security-sdk-token");
//            localHashMap.put("AA4", "3.0.2.20150525");
//            return localHashMap;
//        } finally {
//            localObject =finally;
//            throw localObject;
//        }
//    }
//
    public static void c_setReadMode(String paramString, int paramInt) {
        BookReadRecord localBookReadRecord = BookReadRecord.get(paramString);
        if (localBookReadRecord != null) {
            localBookReadRecord.setReadMode(paramInt);
            localBookReadRecord.save();
            return;
        }
        MyApplication.a_getInstance().a(paramInt);
    }

    public static boolean c_hasExternalStorage() {
//        public static boolean android_support_v7_app_f_c() {
        String v0 = Environment.getExternalStorageState();
        if (v0 == null) {
            return false;
        }
        if (v0.length() <= 0) {
            return false;
        }

        if (v0.equals("mounted") || v0.equals("mounted_ro")) {
            File v1 = Environment.getExternalStorageDirectory();
            if (v1 != null) {
                return true;
            }
        }
        return false;
    }

    public static void c_writeConfig(String name, String value) {
//         if (com.arcsoft.hpay100.a.a.c(value) == 0) {
        System.setProperty(name, value);
//        }
        if (c_hasExternalStorage()) {
            StringBuilder stringBuilder = new StringBuilder(".SystemConfig");
            stringBuilder = stringBuilder.append(File.separator);
            stringBuilder = stringBuilder.append(name);
            File file = new File(Environment.getExternalStorageDirectory(), stringBuilder.toString());
            if (!file.exists()) {
                file.getParentFile().mkdirs();
            }
            try {
                FileWriter writer = new FileWriter(new File(file.getAbsolutePath()), false);
                writer.write(value);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

//    public static d d() {
//        try {
//            String str = i();
//            boolean bool = a_isEmptyString(str);
//            Object localObject2 = null;
//            if (bool) ;
//            while (true) {
//                return localObject2;
//                try {
//                    JSONObject localJSONObject = new JSONObject(str);
//                    d locald = new d(localJSONObject.optString("apdid"), localJSONObject.optString("deviceInfoHash"), localJSONObject.optString("token"), localJSONObject.optString("timestamp"));
//                    localObject2 = locald;
//                } catch (Exception localException) {
//                    com.alipay.security.mobile.module.a.a.a(localException);
//                    localObject2 = null;
//                }
//            }
//        } finally {
//        }
//    }

//    public static String d(Context paramContext) {
//        String str = com.arcsoft.hpay100.a.a.a(paramContext, "alipay_vkey_random", "random", "");
//        if (a_isEmptyString(str)) {
//            str = com.arcsoft.hpay100.a.a.b(UUID.randomUUID().toString());
//            if (str != null) {
//                SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("alipay_vkey_random", 0).edit();
//                if (localEditor != null) {
//                    localEditor.clear();
//                    localEditor.putString("random", str);
//                    localEditor.commit();
//                }
//            }
//        }
//        return str;
//    }
//
//    public static String d(String paramString) {
//        Object localObject = "";
//        try {
//            String str = System.getProperty(paramString);
//            localObject = str;
//            label10:
//            if (com.arcsoft.hpay100.a.a.c((String) localObject))
//                localObject = f.b(".SystemConfig" + File.separator + paramString);
//            return localObject;
//        } catch (Throwable localThrowable) {
//            break label10;
//        }
//    }

    public static void d_startActivityForPackage(Context context, String packageName) {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
        context.startActivity(intent);
    }

    public static Account e_getAccount() {
        MyApplication application = MyApplication.a_getInstance();
        String userId = application.a_getProperty("user.id");
        String token = application.a_getProperty("account.token");
        Account localAccount;
        if (userId != null && token != null) {
            localAccount = new Account();
            User user = new User();
            user.setId(userId);
            user.setNickname(application.a_getProperty("user.name"));
            user.setAvatar(application.a_getProperty("user.avatar"));
//            user.setLv(com.arcsoft.hpay100.a.a.b(application.a_getProperty("user.lv"), 0));
            user.setLv(0);
            user.setGender(application.a_getProperty("user.gender"));
            localAccount.setOk(true);
            localAccount.setToken(token);
            localAccount.setUser(user);
            return localAccount;
        } else {
            return null;
        }
    }
//
//    public static String e(String paramString) {
//        if (paramString == null)
//            return null;
//        try {
//            String str = URLEncoder.encode(paramString, "UTF-8");
//            return str;
//        } catch (Exception localException) {
//            localException.printStackTrace();
//        }
//        return null;
//    }
//
//    public static boolean e(Context paramContext) {
//        try {
//            int i = Process.myPid();
//            Iterator localIterator = ((ActivityManager) paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
//            Object localObject2 = null;
//            while (true) {
//                boolean bool = localIterator.hasNext();
//                if (!bool) {
//                    localObject1 = localObject2;
//                    if ((!TextUtils.isEmpty(localObject1)) && (!paramContext.getPackageName().equals(localObject1)))
//                        break;
//                    return true;
//                }
//                ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) localIterator.next();
//                if (localRunningAppProcessInfo.pid == i) {
//                    String str = localRunningAppProcessInfo.processName.trim();
//                    localObject2 = str;
//                }
//            }
//        } catch (Exception localException) {
//            while (true)
//                Object localObject1 = null;
//        }
//        return false;
//    }

    public static int f_getVersionCode(Context paramContext) {
        PackageInfo packageInfo = getPackageInfo(paramContext);
        if (packageInfo != null) {
            return packageInfo.versionCode;
        } else {
            return 0;
        }
    }

    public static String f_decodeUrlString(String urlString) {
        if (urlString != null) {
            try {
                return URLDecoder.decode(urlString, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static boolean f_BookReadRecordIsFull() {
        return BookReadRecord.getAll().size() >= 300;
    }

    public static int g_getBookStatus(String bookId) {
        if (h_hasBook(bookId)) {
            BookDlRecord localBookDlRecord = BookDlRecord.get(bookId);
            if (localBookDlRecord != null) {
                return localBookDlRecord.getStatus();
            }
        }
        return BookDlRecord.IDLE;
    }

    public static String g_getVersionName(Context context) {
        PackageInfo packageInfo = getPackageInfo(context);
        if (packageInfo != null) {
            return packageInfo.versionName;
        }
        return "";
    }

    public static boolean g_hasLogined() {
        return e_getAccount() != null;
    }

    public static String h_getAndroidId() {
        return Settings.Secure.getString(MyApplication.a_getInstance().getContentResolver(), "android_id");
    }
//
//    public static String h(Context paramContext) {
//        String str = com.arcsoft.hpay100.a.a.d(paramContext, "pref_new_imp_notif_time", null);
//        if (str == null) {
//            str = "0";
//            com.arcsoft.hpay100.a.a.e(paramContext, "pref_new_imp_notif_time", str);
//        }
//        return str;
//    }

    public static boolean h_hasBook(String bookId) {
        List bookIdList = MyApplication.a_getInstance().f_getBookIdList();
        return (bookIdList != null) && (bookIdList.contains(bookId));
    }
//
//    private static String i() {
//        String str1 = d("wxcasxx_v3");
//        try {
//            String str2 = new JSONObject(str1).getString("wxcasxx");
//            String str3 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), str2);
//            return str3;
//        } catch (Exception localException) {
//        }
//        return null;
//    }
//
//    public static String i(Context paramContext) {
//        String str = com.arcsoft.hpay100.a.a.d(paramContext, "pref_new_unimp_notif_time", null);
//        if (str == null) {
//            str = "0";
//            com.arcsoft.hpay100.a.a.e(paramContext, "pref_new_unimp_notif_time", str);
//        }
//        return str;
//    }
//
    public static boolean i(String paramString) {
        try {
            Class.forName(paramString);
            return true;
        } catch (ClassNotFoundException localClassNotFoundException) {
        }
        return false;
    }

    public static void j_setNotifyTime(Context paramContext) {
        a_setNotifyTime(paramContext, System.currentTimeMillis());
    }

    public static int k_getStatusBarHeight(Context context) {
        try {
            Class<?> clazz = Class.forName("com.android.internal.R$dimen");
            Field field = clazz.getField("status_bar_height");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(field.get(clazz.newInstance()).toString()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
//
//    public static int l(Context paramContext) {
//        TypedValue localTypedValue = new TypedValue();
//        Resources.Theme localTheme = paramContext.getTheme();
//        int i = 0;
//        if (localTheme != null) {
//            boolean bool = paramContext.getTheme().resolveAttribute(2130772247, localTypedValue, true);
//            i = 0;
//            if (bool)
//                i = TypedValue.complexToDimensionPixelSize(localTypedValue.data, paramContext.getResources().getDisplayMetrics());
//        }
//        return i;
//    }
//
//    public static boolean m(Context paramContext) {
//        return com.arcsoft.hpay100.a.a.a(paramContext, "save_bandwidth", false);
//    }

    public static String n_getPushChannel(Context paramContext) {
        String pushChannel = (String) c_getMetaData(paramContext, "UMENG_CHANNEL");
        if (pushChannel != null) {
            return pushChannel;
        }
        return "";
    }
//
//    public static boolean o(Context paramContext) {
//        long l = com.arcsoft.hpay100.a.a.c(paramContext, "PREF_FIRST_LAUNCH_TIME", 0L);
//        return Calendar.getInstance().getTimeInMillis() - l >= 259200000L;
//    }

    public static boolean p_isFirstLaunch(Context paramContext) {
//        boolean bool = com.arcsoft.hpay100.a.a.a(paramContext, "is_first_launch_app", true);
//        if (bool)
//            com.arcsoft.hpay100.a.a.b(paramContext, "is_first_launch_app", false);
//        return bool;
        return false;
    }

    public static boolean q_shouldShowAd(Context context) {
//        return (o(context)) && (r(context));
        return false;
    }

    public static boolean r_shouldShowAdView(Context context) {
//        if (com.arcsoft.hpay100.a.a.a(context, "remove_ad_duration", 0L) <= 0L) {
//            String str1 = n(context);
//            String str2 = com.umeng.a.b.b(context, "hide_all_ads_channel");
//            int k;
//            if ((str2 != null) && (str2.length() > 0)) {
//                String[] arrayOfString = str2.split(",");
//                int j = arrayOfString.length;
//                k = 0;
//                if (k < j)
//                    if (!arrayOfString[k].equals(str1)) ;
//            }
//            for (int i = 1; ; i = 0) {
//                if (i != 0)
//                    break label92;
//                return true;
//                k++;
//                break;
//            }
//        }
//        label92:
        return false;
    }
//
//    public static void s(Context paramContext) {
//        String str1 = getPackageInfo(paramContext).packageName;
//        int i = Process.myPid();
//        Iterator localIterator = ((ActivityManager) paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
//        String str2;
//        while (localIterator.hasNext()) {
//            ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) localIterator.next();
//            if (localRunningAppProcessInfo.pid == i) {
//                str2 = localRunningAppProcessInfo.processName;
//                if (str1.equals(str2))
//                    break label83;
//            }
//        }
//        label83:
//        while (com.arcsoft.hpay100.a.a.a(paramContext, "key_short_cut", false)) {
//            return;
//            str2 = null;
//            break;
//        }
//        Intent localIntent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
//        localIntent.putExtra("duplicate", false);
//        localIntent.putExtra("android.intent.extra.shortcut.NAME", paramContext.getString(2131034211));
//        localIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, 2130837893));
//        localIntent.putExtra("android.intent.extra.shortcut.INTENT", new Intent(paramContext, SplashActivity.class));
//        paramContext.sendBroadcast(localIntent);
//        com.arcsoft.hpay100.a.a.b(paramContext, "key_short_cut", true);
//    }
//
//    public static String t(Context paramContext) {
//        return ((TelephonyManager) paramContext.getSystemService("phone")).getDeviceId();
//    }
//
//    public static int u(Context paramContext) {
//        return u.a.c.a(paramContext).a("umeng_common_progress_text");
//    }
//
//    public static int v(Context paramContext) {
//        return u.a.c.a(paramContext).a("umeng_common_icon_view");
//    }
//
//    public static int w(Context paramContext) {
//        return u.a.c.a(paramContext).a("umeng_common_progress_bar");
//    }
//
//    public static int x(Context paramContext) {
//        return u.a.c.a(paramContext).a("umeng_common_title");
//    }
//
//    public static int y(Context paramContext) {
//        return u.a.c.a(paramContext).a("umeng_common_rich_notification_continue");
//    }
//
//    public static int z(Context paramContext) {
//        return u.a.c.a(paramContext).a("umeng_common_rich_notification_cancel");
//    }

//    public final int a() {
//        return this.b;
//    }
//
//    public final am a(CharSequence paramCharSequence) {
//        this.a = paramCharSequence;
//        if (this.b >= 0)
//            TabLayout.a(this.c, this.b);
//        return this;
//    }
//
//    final void a(int paramInt) {
//        this.b = paramInt;
//    }
//
//    public final CharSequence b() {
//        return this.a;
//    }
//
//    public final void c() {
//        this.c.a(this);
//    }
}
