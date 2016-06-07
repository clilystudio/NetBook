package com.qq.e.comm.services;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Process;
import com.qq.e.comm.managers.GDTADManager;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.managers.setting.SM;
import com.qq.e.comm.managers.status.APPStatus;
import com.qq.e.comm.managers.status.DeviceStatus;
import com.qq.e.comm.net.NetworkClient;
import com.qq.e.comm.net.NetworkClient.Priority;
import com.qq.e.comm.net.NetworkClientImpl;
import com.qq.e.comm.net.rr.S2SSRequest;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class a
{
  private static final a a = new a();
  private volatile Boolean b = Boolean.valueOf(false);

  public static a a()
  {
    return a;
  }

  private static String a(Context paramContext)
  {
    int i = Process.myPid();
    Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
    while (localIterator.hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      if (localRunningAppProcessInfo.pid == i)
        return localRunningAppProcessInfo.processName;
    }
    return null;
  }

  // ERROR //
  private static String a(SM paramSM, PM paramPM, DeviceStatus paramDeviceStatus, APPStatus paramAPPStatus, Context paramContext, long paramLong)
  {
    // Byte code:
    //   0: new 77	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 78	org/json/JSONObject:<init>	()V
    //   7: astore 7
    //   9: aload_0
    //   10: invokestatic 83	com/qq/e/comm/a:a	(Lcom/qq/e/comm/managers/setting/SM;)Lorg/json/JSONObject;
    //   13: astore 11
    //   15: aload 11
    //   17: astore 9
    //   19: new 77	org/json/JSONObject
    //   22: dup
    //   23: invokespecial 78	org/json/JSONObject:<init>	()V
    //   26: astore 12
    //   28: aload_0
    //   29: ifnull +27 -> 56
    //   32: aload 12
    //   34: ldc 85
    //   36: aload_0
    //   37: invokevirtual 91	com/qq/e/comm/managers/setting/SM:getDevCloudSettingSig	()Ljava/lang/String;
    //   40: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   43: pop
    //   44: aload 12
    //   46: ldc 97
    //   48: aload_0
    //   49: invokevirtual 100	com/qq/e/comm/managers/setting/SM:getSdkCloudSettingSig	()Ljava/lang/String;
    //   52: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   55: pop
    //   56: aload_1
    //   57: ifnull +30 -> 87
    //   60: aload 12
    //   62: ldc 102
    //   64: aload_1
    //   65: invokevirtual 107	com/qq/e/comm/managers/plugin/PM:getLocalSig	()Ljava/lang/String;
    //   68: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   71: pop
    //   72: aload 12
    //   74: ldc 109
    //   76: aload_1
    //   77: invokevirtual 112	com/qq/e/comm/managers/plugin/PM:getPluginVersion	()I
    //   80: invokestatic 117	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   83: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   86: pop
    //   87: aload 9
    //   89: ldc 119
    //   91: aload 12
    //   93: invokevirtual 122	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   96: pop
    //   97: new 77	org/json/JSONObject
    //   100: dup
    //   101: invokespecial 78	org/json/JSONObject:<init>	()V
    //   104: astore 18
    //   106: aload_2
    //   107: ifnull +121 -> 228
    //   110: aload 18
    //   112: ldc 124
    //   114: aload_2
    //   115: invokevirtual 129	com/qq/e/comm/managers/status/DeviceStatus:getDid	()Ljava/lang/String;
    //   118: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   121: pop
    //   122: aload 18
    //   124: ldc 131
    //   126: aload_2
    //   127: getfield 134	com/qq/e/comm/managers/status/DeviceStatus:model	Ljava/lang/String;
    //   130: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   133: pop
    //   134: aload 18
    //   136: ldc 136
    //   138: aload_2
    //   139: invokevirtual 139	com/qq/e/comm/managers/status/DeviceStatus:getLanguage	()Ljava/lang/String;
    //   142: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   145: pop
    //   146: aload 18
    //   148: ldc 141
    //   150: aload_2
    //   151: invokevirtual 144	com/qq/e/comm/managers/status/DeviceStatus:getDeviceWidth	()I
    //   154: invokestatic 117	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   157: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   160: pop
    //   161: aload 18
    //   163: ldc 146
    //   165: aload_2
    //   166: invokevirtual 149	com/qq/e/comm/managers/status/DeviceStatus:getDeviceHeight	()I
    //   169: invokestatic 117	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   172: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   175: pop
    //   176: aload 18
    //   178: ldc 151
    //   180: aload_2
    //   181: invokevirtual 154	com/qq/e/comm/managers/status/DeviceStatus:getDeviceDensity	()I
    //   184: invokestatic 117	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   187: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   190: pop
    //   191: aload 18
    //   193: ldc 156
    //   195: aload_2
    //   196: invokevirtual 159	com/qq/e/comm/managers/status/DeviceStatus:getVersion	()I
    //   199: invokestatic 117	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   202: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   205: pop
    //   206: aload 18
    //   208: ldc 161
    //   210: ldc 163
    //   212: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   215: pop
    //   216: aload 18
    //   218: ldc 165
    //   220: aload_2
    //   221: invokevirtual 168	com/qq/e/comm/managers/status/DeviceStatus:getOperator	()Ljava/lang/String;
    //   224: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   227: pop
    //   228: aload 9
    //   230: ldc 170
    //   232: aload 18
    //   234: invokevirtual 122	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   237: pop
    //   238: aload 9
    //   240: ldc 85
    //   242: aload_3
    //   243: invokestatic 173	com/qq/e/comm/a:a	(Lcom/qq/e/comm/managers/status/APPStatus;)Lorg/json/JSONObject;
    //   246: invokevirtual 122	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   249: pop
    //   250: aload_2
    //   251: invokestatic 176	com/qq/e/comm/a:a	(Lcom/qq/e/comm/managers/status/DeviceStatus;)Lorg/json/JSONObject;
    //   254: astore 30
    //   256: aload 30
    //   258: ldc 178
    //   260: aload 4
    //   262: invokestatic 180	com/qq/e/comm/services/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   265: invokevirtual 95	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   268: pop
    //   269: aload 9
    //   271: ldc 182
    //   273: aload 30
    //   275: invokevirtual 122	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   278: pop
    //   279: aload 9
    //   281: ldc 97
    //   283: aload_1
    //   284: invokestatic 185	com/qq/e/comm/a:a	(Lcom/qq/e/comm/managers/plugin/PM;)Lorg/json/JSONObject;
    //   287: invokevirtual 122	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   290: pop
    //   291: new 77	org/json/JSONObject
    //   294: dup
    //   295: invokespecial 78	org/json/JSONObject:<init>	()V
    //   298: astore 34
    //   300: new 77	org/json/JSONObject
    //   303: dup
    //   304: invokespecial 78	org/json/JSONObject:<init>	()V
    //   307: astore 35
    //   309: aload 35
    //   311: ldc 187
    //   313: invokestatic 193	java/lang/System:nanoTime	()J
    //   316: lload 5
    //   318: lsub
    //   319: ldc2_w 194
    //   322: ldiv
    //   323: invokevirtual 198	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   326: pop
    //   327: aload 34
    //   329: ldc 200
    //   331: aload 35
    //   333: invokevirtual 122	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   336: pop
    //   337: aload 9
    //   339: ldc 202
    //   341: aload 34
    //   343: invokevirtual 122	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   346: pop
    //   347: aload 9
    //   349: invokevirtual 205	org/json/JSONObject:toString	()Ljava/lang/String;
    //   352: areturn
    //   353: astore 8
    //   355: aload 7
    //   357: astore 9
    //   359: aload 8
    //   361: astore 10
    //   363: ldc 207
    //   365: aload 10
    //   367: invokestatic 213	com/qq/e/comm/util/GDTLogger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   370: goto -23 -> 347
    //   373: astore 10
    //   375: goto -12 -> 363
    //
    // Exception table:
    //   from	to	target	type
    //   9	15	353	org/json/JSONException
    //   19	28	373	org/json/JSONException
    //   32	56	373	org/json/JSONException
    //   60	87	373	org/json/JSONException
    //   87	106	373	org/json/JSONException
    //   110	228	373	org/json/JSONException
    //   228	347	373	org/json/JSONException
  }

  public static void a(String paramString, Throwable paramThrowable)
  {
    if ((GDTADManager.getInstance() != null) && (GDTADManager.getInstance().isInitialized()))
      try
      {
        JSONObject localJSONObject = com.qq.e.comm.a.a(GDTADManager.getInstance().getSM());
        localJSONObject.put("c", com.qq.e.comm.a.a(GDTADManager.getInstance().getDeviceStatus()));
        localJSONObject.put("app", com.qq.e.comm.a.a(GDTADManager.getInstance().getAppStatus()));
        HashMap localHashMap = new HashMap();
        localJSONObject.put("biz", localHashMap);
        if (paramThrowable != null)
        {
          localHashMap.put("extype", paramThrowable.getClass().getName());
          localHashMap.put("ext", paramString + "\r" + paramThrowable.getMessage() + "\r" + Arrays.toString(paramThrowable.getStackTrace()));
        }
        while (true)
        {
          S2SSRequest localS2SSRequest = new S2SSRequest("http://sdk.e.qq.com/err", localJSONObject.toString().getBytes());
          NetworkClientImpl.getInstance().submit(localS2SSRequest);
          return;
          localHashMap.put("extype", "");
          localHashMap.put("ex", paramString);
        }
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.w("Exception While build s2ss error report req", localThrowable);
        return;
      }
    GDTLogger.w("Report Not Work while  ADManager  not Inited");
  }

  public final void a(Context paramContext, SM paramSM, PM paramPM, DeviceStatus paramDeviceStatus, APPStatus paramAPPStatus, long paramLong)
  {
    if (this.b.booleanValue())
      return;
    synchronized (this.b)
    {
      if (this.b.booleanValue())
        return;
    }
    String str1 = a(paramSM, paramPM, paramDeviceStatus, paramAPPStatus, paramContext, paramLong);
    String str2 = "http://sdk.e.qq.com/activate";
    if (!StringUtil.isEmpty(paramSM.getSuid()))
      str2 = "http://sdk.e.qq.com/launch";
    a.1 local1 = new a.1(paramSM, paramPM, System.currentTimeMillis());
    S2SSRequest localS2SSRequest = new S2SSRequest(str2, str1.getBytes());
    NetworkClientImpl.getInstance().submit(localS2SSRequest, NetworkClient.Priority.High, local1);
    this.b = Boolean.valueOf(true);
    monitorexit;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.services.a
 * JD-Core Version:    0.6.0
 */