package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.a.i;
import com.mob.tools.a.l;
import com.mob.tools.a.p;
import java.util.ArrayList;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class c
{
  private Context a;
  private cn.sharesdk.framework.statistics.a.c b;
  private com.mob.tools.b.a c;
  private l d;
  private com.mob.tools.b.e e;
  private String f;
  private String g;
  private boolean h;

  public c(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = cn.sharesdk.framework.statistics.a.c.a(this.a);
    this.c = com.mob.tools.b.a.a(this.a);
    this.d = new l();
    this.e = new com.mob.tools.b.e();
    e();
  }

  private String c(String paramString1, String paramString2)
  {
    boolean bool1 = this.b.b();
    boolean bool2 = this.b.c();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(com.arcsoft.hpay100.a.a.f(this.c.k(), "utf-8")).append("|");
    localStringBuilder.append(com.arcsoft.hpay100.a.a.f(this.c.n(), "utf-8")).append("|");
    localStringBuilder.append(com.arcsoft.hpay100.a.a.f(String.valueOf(60000 + ShareSDK.getSDKVersionCode()), "utf-8")).append("|");
    localStringBuilder.append(com.arcsoft.hpay100.a.a.f("1", "utf-8")).append("|");
    localStringBuilder.append(com.arcsoft.hpay100.a.a.f(this.c.i(), "utf-8")).append("|");
    label260: String str;
    byte[] arrayOfByte1;
    byte[] arrayOfByte2;
    if (bool1)
    {
      localStringBuilder.append(com.arcsoft.hpay100.a.a.f(String.valueOf(Build.VERSION.SDK_INT), "utf-8")).append("|");
      localStringBuilder.append(com.arcsoft.hpay100.a.a.f(this.c.e(), "utf-8")).append("|");
      localStringBuilder.append(com.arcsoft.hpay100.a.a.f(Build.MANUFACTURER, "utf-8")).append("|");
      localStringBuilder.append(com.arcsoft.hpay100.a.a.f(Build.MODEL, "utf-8")).append("|");
      localStringBuilder.append(com.arcsoft.hpay100.a.a.f(this.c.f(), "utf-8")).append("|");
      if (!bool2)
        break label344;
      localStringBuilder.append(paramString2);
      str = localStringBuilder.toString();
      cn.sharesdk.framework.utils.d.a().i("shorLinkMsg ===>>>>", new Object[] { str });
      arrayOfByte1 = com.arcsoft.hpay100.a.a.i(String.format("%s:%s", new Object[] { this.c.j(), paramString1 }));
      if ((arrayOfByte1 != null) && (str != null))
        break label369;
      arrayOfByte2 = null;
    }
    while (true)
    {
      return Base64.encodeToString(arrayOfByte2, 2);
      localStringBuilder.append("|||||");
      break;
      label344: localStringBuilder.append(paramString2.split("\\|")[0]);
      localStringBuilder.append("|||||");
      break label260;
      label369: byte[] arrayOfByte3 = str.getBytes("UTF-8");
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
      localCipher.init(1, localSecretKeySpec);
      arrayOfByte2 = new byte[localCipher.getOutputSize(arrayOfByte3.length)];
      localCipher.doFinal(arrayOfByte2, localCipher.update(arrayOfByte3, 0, arrayOfByte3.length, arrayOfByte2, 0));
    }
  }

  private String c(String paramString, HashMap<String, Object> paramHashMap)
  {
    paramHashMap.put("type", "DEVICE");
    paramHashMap.put("key", this.c.j());
    paramHashMap.put("carrier", this.c.f());
    paramHashMap.put("appkey", paramString);
    paramHashMap.put("apppkg", this.c.k());
    paramHashMap.put("appver", String.valueOf(this.c.m()));
    paramHashMap.put("sdkver", Integer.valueOf(60000 + ShareSDK.getSDKVersionCode()));
    paramHashMap.put("networktype", this.c.i());
    return this.e.a(paramHashMap);
  }

  private void e()
  {
    String str1 = this.c.k() + "/" + this.c.n();
    String str2 = "ShareSDK/" + ShareSDK.getSDKVersionName();
    String str3 = "Android/" + Build.VERSION.SDK_INT;
    this.f = (str1 + " " + str2 + " " + str3);
    this.g = "http://api.share.mob.com:80";
    this.h = true;
  }

  private String f()
  {
    return this.g + "/conn";
  }

  private String g()
  {
    return this.g + "/date";
  }

  private String h()
  {
    return this.g + "/conf4";
  }

  private String i()
  {
    return this.g + "/data2";
  }

  private String j()
  {
    return "http://up.sharesdk.cn/upload/image";
  }

  private String k()
  {
    return this.g + "/log4";
  }

  private String l()
  {
    return "http://l.mob.com/url/ShareSdkMapping.do";
  }

  private String m()
  {
    return this.g + "/snsconf";
  }

  public long a()
  {
    if (!this.b.i())
      return 0L;
    Object localObject = "{}";
    try
    {
      String str = this.d.httpGet(g(), null, null, null);
      localObject = str;
      HashMap localHashMap = this.e.a((String)localObject);
      if (localHashMap.containsKey("timestamp"))
        try
        {
          long l1 = com.arcsoft.hpay100.a.a.o(String.valueOf(localHashMap.get("timestamp")));
          long l2 = System.currentTimeMillis() - l1;
          this.b.a("service_time", Long.valueOf(l2));
          return l2;
        }
        catch (Throwable localThrowable2)
        {
          cn.sharesdk.framework.utils.d.a().w(localThrowable2);
        }
      return this.b.a();
    }
    catch (Throwable localThrowable1)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable1);
    }
  }

  public HashMap<String, Object> a(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new i("appkey", paramString));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new i("User-Agent", this.f));
    p localp = new p();
    localp.a = 30000;
    localp.b = 30000;
    String str = this.d.httpPost(f(), localArrayList1, null, localArrayList2, localp);
    cn.sharesdk.framework.utils.d.a().i(" isConnectToServer response == %s", new Object[] { str });
    return this.e.a(str);
  }

  public HashMap<String, Object> a(String paramString1, String paramString2, ArrayList<String> paramArrayList, int paramInt, String paramString3)
  {
    if (!this.h);
    HashMap localHashMap;
    do
    {
      ArrayList localArrayList1;
      String str1;
      do
      {
        return null;
        localArrayList1 = new ArrayList();
        localArrayList1.add(new i("key", paramString2));
        for (int i = 0; i < paramArrayList.size(); i++)
          localArrayList1.add(new i("urls", ((String)paramArrayList.get(i)).toString()));
        localArrayList1.add(new i("deviceid", this.c.j()));
        localArrayList1.add(new i("snsplat", String.valueOf(paramInt)));
        str1 = c(paramString2, paramString3);
      }
      while (TextUtils.isEmpty(str1));
      localArrayList1.add(new i("m", str1));
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(new i("User-Agent", this.f));
      p localp = new p();
      localp.a = 5000;
      localp.b = 5000;
      String str2 = this.d.httpPost(l(), localArrayList1, null, localArrayList2, localp);
      cn.sharesdk.framework.utils.d.a().i("> SERVER_SHORT_LINK_URL  resp: %s", new Object[] { str2 });
      if (TextUtils.isEmpty(str2))
      {
        this.h = false;
        return null;
      }
      localHashMap = this.e.a(str2);
    }
    while (((Integer)localHashMap.get("status")).intValue() != 200);
    return localHashMap;
  }

  public void a(cn.sharesdk.framework.statistics.b.c paramc)
  {
    cn.sharesdk.framework.statistics.a.e.a(this.a, paramc.toString(), paramc.e);
  }

  public void a(String paramString1, String paramString2)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new i("m", paramString2));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new i("User-Agent", this.f));
    p localp = new p();
    localp.a = 10000;
    localp.b = 10000;
    String str = this.d.httpPost(i(), localArrayList1, null, localArrayList2, localp);
    cn.sharesdk.framework.utils.d.a().i("> uploadEXTDeviceData  resp: %s", new Object[] { str });
  }

  public void a(String paramString, ArrayList<HashMap<String, String>> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", paramString);
    localHashMap.put("plat", Integer.valueOf(1));
    localHashMap.put("device", this.c.j());
    localHashMap.put("list", paramArrayList);
    String str1 = new com.mob.tools.b.e().a(localHashMap);
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new i("m", com.arcsoft.hpay100.a.a.e(str1, "sdk.sharesdk.sdk")));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new i("User-Agent", this.f));
    p localp = new p();
    localp.a = 30000;
    localp.b = 30000;
    String str2 = this.d.httpPost(i(), localArrayList1, null, localArrayList2, localp);
    cn.sharesdk.framework.utils.d.a().i("> uploadApps list resp: %s", new Object[] { str2 });
  }

  public void a(String paramString, HashMap<String, Object> paramHashMap)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new i("m", com.arcsoft.hpay100.a.a.e(c(paramString, paramHashMap), "sdk.sharesdk.sdk")));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new i("User-Agent", this.f));
    p localp = new p();
    localp.a = 30000;
    localp.b = 30000;
    String str = this.d.httpPost(i(), localArrayList1, null, localArrayList2, localp);
    cn.sharesdk.framework.utils.d.a().i("> uploadDeviceData  resp: %s", new Object[] { str });
  }

  public void a(String paramString, boolean paramBoolean)
  {
    if ("none".equals(this.c.i()))
      throw new IllegalStateException("network is disconnected!");
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new i("m", paramString));
    if (paramBoolean);
    for (String str = "1"; ; str = "0")
    {
      localArrayList1.add(new i("t", str));
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(new i("User-Agent", this.f));
      p localp = new p();
      localp.a = 30000;
      localp.b = 30000;
      this.d.httpPost(k(), localArrayList1, null, localArrayList2, localp);
      return;
    }
  }

  public void a(ArrayList<String> paramArrayList)
  {
    cn.sharesdk.framework.statistics.a.e.a(this.a, paramArrayList);
  }

  public HashMap<String, Object> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("mac", this.c.c());
    localHashMap.put("udid", this.c.d());
    localHashMap.put("model", Build.MODEL);
    localHashMap.put("factory", Build.MANUFACTURER);
    localHashMap.put("plat", Integer.valueOf(1));
    localHashMap.put("sysver", String.valueOf(Build.VERSION.SDK_INT));
    localHashMap.put("breaked", Boolean.valueOf(false));
    localHashMap.put("screensize", this.c.e());
    localHashMap.put("androidid", this.c.q());
    String str = this.c.r();
    if (!TextUtils.isEmpty(str))
      localHashMap.put("adsid", str);
    return localHashMap;
  }

  public HashMap<String, Object> b(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new i("appkey", paramString));
    localArrayList1.add(new i("device", this.c.j()));
    localArrayList1.add(new i("plat", "1"));
    localArrayList1.add(new i("apppkg", this.c.k()));
    localArrayList1.add(new i("appver", String.valueOf(this.c.m())));
    localArrayList1.add(new i("sdkver", String.valueOf(60000 + ShareSDK.getSDKVersionCode())));
    localArrayList1.add(new i("networktype", this.c.i()));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new i("User-Agent", this.f));
    p localp = new p();
    localp.a = 10000;
    localp.b = 10000;
    String str = this.d.httpPost(h(), localArrayList1, null, localArrayList2, localp);
    cn.sharesdk.framework.utils.d.a().i(" get server config response == %s", new Object[] { str });
    return this.e.a(str);
  }

  public HashMap<String, Object> b(String paramString1, String paramString2)
  {
    byte[] arrayOfByte1 = Base64.decode(paramString2, 2);
    String str1 = this.c.j();
    byte[] arrayOfByte2 = com.arcsoft.hpay100.a.a.i(paramString1 + ":" + str1);
    byte[] arrayOfByte3;
    if ((arrayOfByte2 == null) || (arrayOfByte1 == null))
      arrayOfByte3 = null;
    while (true)
    {
      String str2 = new String(arrayOfByte3, "UTF-8").trim();
      return this.e.a(str2);
      byte[] arrayOfByte4 = new byte[16];
      System.arraycopy(arrayOfByte2, 0, arrayOfByte4, 0, Math.min(arrayOfByte2.length, 16));
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte4, "AES");
      Cipher localCipher = Cipher.getInstance("AES/ECB/NoPadding", "BC");
      localCipher.init(2, localSecretKeySpec);
      arrayOfByte3 = new byte[localCipher.getOutputSize(arrayOfByte1.length)];
      localCipher.doFinal(arrayOfByte3, localCipher.update(arrayOfByte1, 0, arrayOfByte1.length, arrayOfByte3, 0));
    }
  }

  public void b(String paramString, HashMap<String, Object> paramHashMap)
  {
    String str = this.e.a(paramHashMap);
    this.b.b(paramString, str);
  }

  public String c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "DEVEXT");
    localHashMap.put("plat", Integer.valueOf(1));
    localHashMap.put("device", this.c.j());
    localHashMap.put("phonename", this.c.g());
    localHashMap.put("signmd5", this.c.h());
    if (this.c.i().equals("wifi"))
    {
      localHashMap.put("ssid", this.c.a());
      localHashMap.put("bssid", this.c.b());
    }
    return this.e.a(localHashMap);
  }

  public void c(String paramString)
  {
    this.g = paramString;
  }

  public ArrayList<cn.sharesdk.framework.statistics.a.d> d()
  {
    ArrayList localArrayList = cn.sharesdk.framework.statistics.a.e.a(this.a);
    if (localArrayList == null)
      localArrayList = new ArrayList();
    return localArrayList;
  }

  public HashMap<String, Object> d(String paramString)
  {
    i locali = new i("file", paramString);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new i("User-Agent", this.f));
    String str = this.d.httpPost(j(), null, locali, localArrayList, null);
    cn.sharesdk.framework.utils.d.a().i("upload file response == %s", new Object[] { str });
    return this.e.a(str);
  }

  public HashMap<String, Object> e(String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new i("appkey", paramString));
    localArrayList1.add(new i("device", this.c.j()));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new i("User-Agent", this.f));
    p localp = new p();
    localp.a = 10000;
    localp.b = 10000;
    String str = this.d.httpPost(m(), localArrayList1, null, localArrayList2, localp);
    return this.e.a(str);
  }

  public HashMap<String, Object> f(String paramString)
  {
    String str = this.b.h(paramString);
    return this.e.a(str);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.c
 * JD-Core Version:    0.6.0
 */