package cn.sharesdk.framework.utils;

import android.util.Base64;
import com.mob.tools.a.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class a
{
  private a.b a = new a.b();
  private b b = new b("-._~", false);

  private ArrayList<i<String>> a(long paramLong, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new i("oauth_consumer_key", this.a.a));
    localArrayList.add(new i("oauth_signature_method", paramString));
    localArrayList.add(new i("oauth_timestamp", String.valueOf(paramLong / 1000L)));
    localArrayList.add(new i("oauth_nonce", String.valueOf(paramLong)));
    localArrayList.add(new i("oauth_version", "1.0"));
    String str = this.a.c;
    if ((str != null) && (str.length() > 0))
      localArrayList.add(new i("oauth_token", str));
    return localArrayList;
  }

  private ArrayList<i<String>> a(long paramLong, ArrayList<i<String>> paramArrayList, String paramString)
  {
    int i = 0;
    HashMap localHashMap = new HashMap();
    if (paramArrayList != null)
    {
      Iterator localIterator3 = paramArrayList.iterator();
      while (localIterator3.hasNext())
      {
        i locali2 = (i)localIterator3.next();
        localHashMap.put(a(locali2.a), a((String)locali2.b));
      }
    }
    ArrayList localArrayList1 = a(paramLong, paramString);
    if (localArrayList1 != null)
    {
      Iterator localIterator2 = localArrayList1.iterator();
      while (localIterator2.hasNext())
      {
        i locali1 = (i)localIterator2.next();
        localHashMap.put(a(locali1.a), a((String)locali1.b));
      }
    }
    String[] arrayOfString = new String[localHashMap.size()];
    Iterator localIterator1 = localHashMap.entrySet().iterator();
    for (int j = 0; localIterator1.hasNext(); j++)
      arrayOfString[j] = ((String)((Map.Entry)localIterator1.next()).getKey());
    Arrays.sort(arrayOfString);
    ArrayList localArrayList2 = new ArrayList();
    int k = arrayOfString.length;
    while (i < k)
    {
      String str = arrayOfString[i];
      localArrayList2.add(new i(str, localHashMap.get(str)));
      i++;
    }
    return localArrayList2;
  }

  private ArrayList<i<String>> a(String paramString1, String paramString2, ArrayList<i<String>> paramArrayList, a.a parama)
  {
    String str1 = null;
    long l = System.currentTimeMillis();
    Object localObject;
    switch (a.1.a[parama.ordinal()])
    {
    default:
      localObject = null;
    case 1:
    case 2:
    }
    while (true)
    {
      ArrayList localArrayList = a(l, str1);
      localArrayList.add(new i("oauth_signature", localObject));
      return localArrayList;
      str1 = "HMAC-SHA1";
      SecretKeySpec localSecretKeySpec = new SecretKeySpec((a(this.a.b) + '&' + a(this.a.d)).getBytes("utf-8"), "HMAC-SHA1");
      Mac localMac = Mac.getInstance("HMAC-SHA1");
      localMac.init(localSecretKeySpec);
      String str2 = b(a(l, paramArrayList, str1));
      localObject = new String(Base64.encode(localMac.doFinal((paramString2 + '&' + a(paramString1.toLowerCase()) + '&' + a(str2)).getBytes("utf-8")), 0)).trim();
      continue;
      str1 = "PLAINTEXT";
      localObject = a(this.a.b) + '&' + a(this.a.d);
    }
  }

  private String b(ArrayList<i<String>> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() <= 0))
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramArrayList.iterator();
    for (int i = 0; localIterator.hasNext(); i++)
    {
      i locali = (i)localIterator.next();
      if (i > 0)
        localStringBuilder.append('&');
      localStringBuilder.append(locali.a).append('=').append((String)locali.b);
    }
    return localStringBuilder.toString();
  }

  public a.b a()
  {
    return this.a;
  }

  public String a(String paramString)
  {
    if (paramString == null)
      return "";
    return this.b.escape(paramString);
  }

  public ArrayList<i<String>> a(String paramString, ArrayList<i<String>> paramArrayList)
  {
    return a(paramString, paramArrayList, a.a.a);
  }

  public ArrayList<i<String>> a(String paramString, ArrayList<i<String>> paramArrayList, a.a parama)
  {
    return a(paramString, "POST", paramArrayList, parama);
  }

  public ArrayList<i<String>> a(ArrayList<i<String>> paramArrayList)
  {
    StringBuilder localStringBuilder = new StringBuilder("OAuth ");
    Iterator localIterator = paramArrayList.iterator();
    for (int i = 0; localIterator.hasNext(); i++)
    {
      i locali = (i)localIterator.next();
      if (i > 0)
        localStringBuilder.append(',');
      String str = a((String)locali.b);
      localStringBuilder.append(locali.a).append("=\"").append(str).append("\"");
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new i("Authorization", localStringBuilder.toString()));
    localArrayList.add(new i("Content-Type", "application/x-www-form-urlencoded"));
    return localArrayList;
  }

  public void a(String paramString1, String paramString2)
  {
    this.a.c = paramString1;
    this.a.d = paramString2;
  }

  public void a(String paramString1, String paramString2, String paramString3)
  {
    this.a.a = paramString1;
    this.a.b = paramString2;
    this.a.e = paramString3;
  }

  public ArrayList<i<String>> b(String paramString, ArrayList<i<String>> paramArrayList)
  {
    return b(paramString, paramArrayList, a.a.a);
  }

  public ArrayList<i<String>> b(String paramString, ArrayList<i<String>> paramArrayList, a.a parama)
  {
    return a(paramString, "GET", paramArrayList, parama);
  }

  public ArrayList<i<String>> c(String paramString, ArrayList<i<String>> paramArrayList, a.a parama)
  {
    return a(paramString, "PUT", paramArrayList, parama);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.utils.a
 * JD-Core Version:    0.6.0
 */