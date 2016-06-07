package com.qq.e.comm.managers.status;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import com.qq.e.comm.util.Md5Util;
import com.qq.e.comm.util.StringUtil;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class DeviceStatus
{
  private String a;
  private String b;
  private int c;
  private int d;
  private int e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private volatile String k;
  private volatile String l;
  private volatile float m;
  public final String model;
  private Context n;

  // ERROR //
  public DeviceStatus(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 30	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: getstatic 35	android/os/Build:MODEL	Ljava/lang/String;
    //   8: putfield 37	com/qq/e/comm/managers/status/DeviceStatus:model	Ljava/lang/String;
    //   11: aload_0
    //   12: aload_1
    //   13: putfield 39	com/qq/e/comm/managers/status/DeviceStatus:n	Landroid/content/Context;
    //   16: aload_1
    //   17: invokevirtual 45	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   20: invokevirtual 51	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   23: astore_2
    //   24: aload_0
    //   25: invokevirtual 55	com/qq/e/comm/managers/status/DeviceStatus:getVersion	()I
    //   28: iconst_3
    //   29: if_icmple +89 -> 118
    //   32: aload_2
    //   33: getfield 60	android/util/DisplayMetrics:densityDpi	I
    //   36: istore_3
    //   37: aload_0
    //   38: iload_3
    //   39: putfield 62	com/qq/e/comm/managers/status/DeviceStatus:e	I
    //   42: aload_0
    //   43: invokevirtual 55	com/qq/e/comm/managers/status/DeviceStatus:getVersion	()I
    //   46: iconst_3
    //   47: if_icmple +77 -> 124
    //   50: aload_0
    //   51: aload_2
    //   52: getfield 65	android/util/DisplayMetrics:density	F
    //   55: aload_2
    //   56: getfield 68	android/util/DisplayMetrics:widthPixels	I
    //   59: invokespecial 71	com/qq/e/comm/managers/status/DeviceStatus:a	(FI)I
    //   62: istore 4
    //   64: aload_0
    //   65: iload 4
    //   67: putfield 73	com/qq/e/comm/managers/status/DeviceStatus:c	I
    //   70: aload_0
    //   71: invokevirtual 55	com/qq/e/comm/managers/status/DeviceStatus:getVersion	()I
    //   74: iconst_3
    //   75: if_icmple +58 -> 133
    //   78: aload_0
    //   79: aload_2
    //   80: getfield 65	android/util/DisplayMetrics:density	F
    //   83: aload_2
    //   84: getfield 76	android/util/DisplayMetrics:heightPixels	I
    //   87: invokespecial 71	com/qq/e/comm/managers/status/DeviceStatus:a	(FI)I
    //   90: istore 5
    //   92: aload_0
    //   93: iload 5
    //   95: putfield 78	com/qq/e/comm/managers/status/DeviceStatus:d	I
    //   98: aload_0
    //   99: getfield 39	com/qq/e/comm/managers/status/DeviceStatus:n	Landroid/content/Context;
    //   102: ldc 80
    //   104: invokevirtual 84	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   107: checkcast 86	android/location/LocationManager
    //   110: astore 7
    //   112: aload 7
    //   114: ifnonnull +28 -> 142
    //   117: return
    //   118: bipush 120
    //   120: istore_3
    //   121: goto -84 -> 37
    //   124: aload_2
    //   125: getfield 68	android/util/DisplayMetrics:widthPixels	I
    //   128: istore 4
    //   130: goto -66 -> 64
    //   133: aload_2
    //   134: getfield 76	android/util/DisplayMetrics:heightPixels	I
    //   137: istore 5
    //   139: goto -47 -> 92
    //   142: new 88	android/location/Criteria
    //   145: dup
    //   146: invokespecial 89	android/location/Criteria:<init>	()V
    //   149: astore 8
    //   151: aload 8
    //   153: iconst_2
    //   154: invokevirtual 93	android/location/Criteria:setAccuracy	(I)V
    //   157: aload 8
    //   159: iconst_0
    //   160: invokevirtual 97	android/location/Criteria:setAltitudeRequired	(Z)V
    //   163: aload 8
    //   165: iconst_0
    //   166: invokevirtual 100	android/location/Criteria:setBearingRequired	(Z)V
    //   169: aload 8
    //   171: iconst_1
    //   172: invokevirtual 103	android/location/Criteria:setCostAllowed	(Z)V
    //   175: aload 8
    //   177: iconst_1
    //   178: invokevirtual 106	android/location/Criteria:setPowerRequirement	(I)V
    //   181: aload 7
    //   183: aload 8
    //   185: iconst_1
    //   186: invokevirtual 110	android/location/LocationManager:getBestProvider	(Landroid/location/Criteria;Z)Ljava/lang/String;
    //   189: astore 10
    //   191: aload 7
    //   193: aload 10
    //   195: invokevirtual 114	android/location/LocationManager:getLastKnownLocation	(Ljava/lang/String;)Landroid/location/Location;
    //   198: astore 11
    //   200: aload 11
    //   202: ifnull +57 -> 259
    //   205: aload_0
    //   206: new 116	java/lang/StringBuilder
    //   209: dup
    //   210: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   213: aload 11
    //   215: invokevirtual 123	android/location/Location:getLatitude	()D
    //   218: invokevirtual 127	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   221: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   224: putfield 133	com/qq/e/comm/managers/status/DeviceStatus:k	Ljava/lang/String;
    //   227: aload_0
    //   228: new 116	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   235: aload 11
    //   237: invokevirtual 136	android/location/Location:getLongitude	()D
    //   240: invokevirtual 127	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   243: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: putfield 138	com/qq/e/comm/managers/status/DeviceStatus:l	Ljava/lang/String;
    //   249: aload_0
    //   250: aload 11
    //   252: invokevirtual 142	android/location/Location:getAccuracy	()F
    //   255: putfield 144	com/qq/e/comm/managers/status/DeviceStatus:m	F
    //   258: return
    //   259: new 146	com/qq/e/comm/managers/status/DeviceStatus$1
    //   262: dup
    //   263: aload_0
    //   264: aload 7
    //   266: invokespecial 149	com/qq/e/comm/managers/status/DeviceStatus$1:<init>	(Lcom/qq/e/comm/managers/status/DeviceStatus;Landroid/location/LocationManager;)V
    //   269: astore 12
    //   271: aload 7
    //   273: aload 10
    //   275: ldc2_w 150
    //   278: ldc 152
    //   280: aload 12
    //   282: invokevirtual 156	android/location/LocationManager:requestLocationUpdates	(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    //   285: return
    //   286: astore 13
    //   288: return
    //   289: astore 6
    //   291: return
    //   292: astore 9
    //   294: return
    //
    // Exception table:
    //   from	to	target	type
    //   271	285	286	java/lang/Throwable
    //   98	112	289	java/lang/Throwable
    //   142	181	289	java/lang/Throwable
    //   181	200	292	java/lang/Throwable
    //   205	258	292	java/lang/Throwable
    //   259	271	292	java/lang/Throwable
  }

  private int a(float paramFloat, int paramInt)
  {
    if ((0x2000 & this.n.getApplicationInfo().flags) != 0)
      paramInt = (int)(paramInt / paramFloat);
    return paramInt;
  }

  public Carrier getCarrier()
  {
    String str = getOperator();
    if (str != null)
    {
      if ((str.equals("46000")) || (str.equals("46002")) || (str.equals("46007")) || (str.equals("46020")))
        return Carrier.CMCC;
      if ((str.equals("46001")) || (str.equals("46006")))
        return Carrier.UNICOM;
      if ((str.equals("46003")) || (str.equals("46005")))
        return Carrier.TELECOM;
    }
    return Carrier.UNKNOWN;
  }

  public String getDataNet()
  {
    String str;
    try
    {
      NetworkInfo localNetworkInfo2 = ((ConnectivityManager)this.n.getSystemService("connectivity")).getActiveNetworkInfo();
      localNetworkInfo1 = localNetworkInfo2;
      if (localNetworkInfo1 == null)
        return null;
    }
    catch (Exception localException)
    {
      NetworkInfo localNetworkInfo1;
      while (true)
        localNetworkInfo1 = null;
      switch (localNetworkInfo1.getType())
      {
      default:
        str = "unknow";
      case 0:
      case 1:
      }
    }
    while (true)
    {
      this.i = str;
      return this.i;
      str = "ed";
      continue;
      str = "wi";
    }
  }

  public int getDeviceDensity()
  {
    return this.e;
  }

  public int getDeviceHeight()
  {
    return this.d;
  }

  public int getDeviceWidth()
  {
    return this.c;
  }

  public String getDid()
  {
    if (this.j == null);
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)this.n.getSystemService("phone");
      if (StringUtil.isEmpty(localTelephonyManager.getDeviceId()));
      for (this.j = ""; ; this.j = Md5Util.encode(localTelephonyManager.getDeviceId().toLowerCase(Locale.US)).toLowerCase(Locale.US))
        label36: return this.j;
    }
    catch (Exception localException)
    {
      break label36;
    }
  }

  public Map<String, String> getLacAndCeilId()
  {
    String str = getOperator();
    HashMap localHashMap = new HashMap();
    if ((!StringUtil.isEmpty(str)) && (!"null".equalsIgnoreCase(str)))
      while (true)
      {
        try
        {
          int i1 = Integer.parseInt(str.substring(0, 3));
          int i2 = Integer.parseInt(str.substring(3));
          if (i1 != 460)
            break;
          TelephonyManager localTelephonyManager = (TelephonyManager)this.n.getSystemService("phone");
          if ((i2 != 3) && (i2 != 5))
            continue;
          CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)localTelephonyManager.getCellLocation();
          i3 = localCdmaCellLocation.getNetworkId();
          i4 = localCdmaCellLocation.getBaseStationId();
          localHashMap.put("lac", String.valueOf(i3));
          localHashMap.put("cellid", String.valueOf(i4));
          return localHashMap;
          GsmCellLocation localGsmCellLocation = (GsmCellLocation)localTelephonyManager.getCellLocation();
          if (localGsmCellLocation != null)
          {
            i3 = localGsmCellLocation.getLac();
            int i5 = localGsmCellLocation.getCid();
            i4 = i5;
            continue;
          }
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
          return localHashMap;
        }
        int i4 = 0;
        int i3 = 0;
      }
    return localHashMap;
  }

  public String getLanguage()
  {
    if (this.b == null)
    {
      this.b = Locale.getDefault().getLanguage().toLowerCase(Locale.US);
      if (this.b.length() == 0)
        this.b = "en";
    }
    return this.b;
  }

  public String getLat()
  {
    return this.k;
  }

  public String getLng()
  {
    return this.l;
  }

  public float getLocationAccuracy()
  {
    return this.m;
  }

  public NetworkType getNetworkType()
  {
    String str = getDataNet();
    try
    {
      int i2 = Integer.parseInt(getPhoneNet());
      i1 = i2;
      if ((str != null) && (str.equals("wi")))
        return NetworkType.WIFI;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      int i1;
      while (true)
        i1 = 0;
      switch (i1)
      {
      default:
        return NetworkType.UNKNOWN;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 14:
      case 13:
      case 15:
      }
    }
    return NetworkType.NET_2G;
    return NetworkType.NET_3G;
    return NetworkType.NET_4G;
  }

  public String getOperator()
  {
    try
    {
      this.g = ((TelephonyManager)this.n.getSystemService("phone")).getNetworkOperator();
      label19: return this.g;
    }
    catch (Exception localException)
    {
      break label19;
    }
  }

  public String getPhoneNet()
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)this.n.getSystemService("phone");
      this.h = localTelephonyManager.getNetworkType();
      label34: return this.h;
    }
    catch (Exception localException)
    {
      break label34;
    }
  }

  public String getScreenOrientation()
  {
    if (this.n.getResources().getConfiguration().orientation == 2)
      this.f = "l";
    while (true)
    {
      return this.f;
      if (this.n.getResources().getConfiguration().orientation != 1)
        continue;
      this.f = "p";
    }
  }

  public String getUid()
  {
    String str1;
    if (this.a == null)
    {
      str1 = Settings.Secure.getString(this.n.getContentResolver(), "android_id");
      if (str1 != null)
        break label42;
    }
    label42: for (String str2 = Md5Util.encode("emulator"); ; str2 = Md5Util.encode(str1))
    {
      this.a = str2;
      return this.a;
    }
  }

  public int getVersion()
  {
    try
    {
      int i1 = Build.VERSION.SDK_INT;
      return i1;
    }
    catch (Exception localException)
    {
    }
    return 3;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.status.DeviceStatus
 * JD-Core Version:    0.6.0
 */