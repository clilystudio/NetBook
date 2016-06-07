package cn.sharesdk.framework.a;

import android.text.TextUtils;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.a.c;
import com.mob.tools.a.i;
import com.mob.tools.a.l;
import com.mob.tools.a.p;
import com.mob.tools.a.q;
import java.util.ArrayList;

public class a extends l
{
  private static a a = null;

  public static a a()
  {
    if (a == null)
      a = new a();
    return a;
  }

  private void a(String paramString, int paramInt)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramInt <= 0))
      return;
    ShareSDK.logApiEvent(paramString, paramInt);
  }

  public String a(String paramString1, ArrayList<i<String>> paramArrayList, i<String> parami, String paramString2, int paramInt)
  {
    return a(paramString1, paramArrayList, parami, null, paramString2, paramInt);
  }

  public String a(String paramString1, ArrayList<i<String>> paramArrayList1, i<String> parami, ArrayList<i<String>> paramArrayList2, p paramp, String paramString2, int paramInt)
  {
    a(paramString2, paramInt);
    return super.httpPost(paramString1, paramArrayList1, parami, paramArrayList2, paramp);
  }

  public String a(String paramString1, ArrayList<i<String>> paramArrayList1, i<String> parami, ArrayList<i<String>> paramArrayList2, String paramString2, int paramInt)
  {
    return a(paramString1, paramArrayList1, parami, paramArrayList2, null, paramString2, paramInt);
  }

  public String a(String paramString1, ArrayList<i<String>> paramArrayList, String paramString2, int paramInt)
  {
    return a(paramString1, paramArrayList, null, null, paramString2, paramInt);
  }

  public String a(String paramString1, ArrayList<i<String>> paramArrayList1, ArrayList<i<String>> paramArrayList2, p paramp, String paramString2, int paramInt)
  {
    a(paramString2, paramInt);
    return super.httpGet(paramString1, paramArrayList1, paramArrayList2, paramp);
  }

  public void a(String paramString1, ArrayList<i<String>> paramArrayList, c paramc, q paramq, String paramString2, int paramInt)
  {
    a(paramString2, paramInt);
    super.rawPost(paramString1, paramArrayList, paramc, paramq, null);
  }

  public String b(String paramString1, ArrayList<i<String>> paramArrayList1, i<String> parami, ArrayList<i<String>> paramArrayList2, p paramp, String paramString2, int paramInt)
  {
    a(paramString2, paramInt);
    return super.httpPut(paramString1, paramArrayList1, parami, paramArrayList2, paramp);
  }

  public String b(String paramString1, ArrayList<i<String>> paramArrayList, String paramString2, int paramInt)
  {
    return a(paramString1, paramArrayList, null, paramString2, paramInt);
  }

  public String b(String paramString1, ArrayList<i<String>> paramArrayList1, ArrayList<i<String>> paramArrayList2, p paramp, String paramString2, int paramInt)
  {
    a(paramString2, paramInt);
    return super.jsonPost(paramString1, paramArrayList1, paramArrayList2, paramp);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.a.a
 * JD-Core Version:    0.6.0
 */