package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Arrays;
import java.util.List;

public final class cC
{
  public final void a(Context paramContext)
  {
    SharedPreferences localSharedPreferences1 = com.arcsoft.hpay100.a.a.M(paramContext);
    if (localSharedPreferences1 == null)
      return;
    long l1 = localSharedPreferences1.getLong("a_start_time", 0L);
    long l2 = localSharedPreferences1.getLong("a_end_time", 0L);
    long l3 = System.currentTimeMillis();
    if ((l1 != 0L) && (l3 - l1 < com.umeng.a.a.h))
      bt.b("MobclickAgent", "onResume called before onPause");
    ch localch;
    String str2;
    String str3;
    long l4;
    for (int i = 0; ; i = 1)
    {
      if (i == 0)
        break label621;
      localch = ch.a(paramContext);
      str2 = bs.c(paramContext);
      str3 = com.umeng.a.a.a(paramContext);
      l4 = System.currentTimeMillis();
      if (str3 != null)
        break label124;
      throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
      if (l3 - l2 <= com.umeng.a.a.h)
        break;
    }
    label124: StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(l4).append(str3).append(str2);
    String str4 = bx.a(localStringBuilder.toString());
    SharedPreferences localSharedPreferences2 = com.arcsoft.hpay100.a.a.M(paramContext);
    String str5 = localSharedPreferences2.getString("session_id", null);
    Object localObject;
    if (str5 == null)
    {
      localObject = null;
      SharedPreferences.Editor localEditor3 = localSharedPreferences1.edit();
      localEditor3.putString("session_id", str4);
      localEditor3.putLong("session_start_time", System.currentTimeMillis());
      localEditor3.putLong("session_end_time", 0L);
      localEditor3.commit();
      if (localObject == null)
        break label612;
      localch.a((cx)localObject);
      label251: bt.a("MobclickAgent", "Start new session: " + str4);
    }
    while (true)
    {
      SharedPreferences.Editor localEditor1 = localSharedPreferences1.edit();
      localEditor1.putLong("a_start_time", System.currentTimeMillis());
      localEditor1.putLong("a_end_time", 0L);
      localEditor1.commit();
      return;
      long l5 = localSharedPreferences2.getLong("session_start_time", 0L);
      long l6 = localSharedPreferences2.getLong("session_end_time", 0L);
      long l7 = 0L;
      if (l6 != 0L)
      {
        l7 = l6 - l5;
        if (Math.abs(l7) > 86400000L)
          l7 = 0L;
      }
      af localaf = new af();
      localaf.a(str5);
      localaf.a(l5);
      localaf.b(l6);
      localaf.c(l7);
      double[] arrayOfDouble = com.umeng.a.a.a();
      aw localaw;
      if (arrayOfDouble != null)
      {
        localaw = new aw(arrayOfDouble[0], arrayOfDouble[1], System.currentTimeMillis());
        if (!localaf.y())
          break label591;
        localaf.a(localaw);
      }
      while (true)
      {
        be localbe = com.arcsoft.hpay100.a.a.N(paramContext);
        if (localbe != null)
          localaf.a(localbe);
        List localList = cF.a(localSharedPreferences2);
        if ((localList != null) && (localList.size() > 0))
          localaf.a(localList);
        SharedPreferences.Editor localEditor2 = localSharedPreferences2.edit();
        localEditor2.remove("session_start_time");
        localEditor2.remove("session_end_time");
        localEditor2.remove("session_id");
        localEditor2.remove("a_start_time");
        localEditor2.remove("a_end_time");
        localEditor2.putString("activities", "");
        localEditor2.commit();
        localObject = localaf;
        break;
        label591: localaf.b(Arrays.asList(new aw[] { localaw }));
      }
      label612: localch.a(null);
      break label251;
      label621: String str1 = localSharedPreferences1.getString("session_id", null);
      bt.a("MobclickAgent", "Extend current session: " + str1);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cC
 * JD-Core Version:    0.6.0
 */