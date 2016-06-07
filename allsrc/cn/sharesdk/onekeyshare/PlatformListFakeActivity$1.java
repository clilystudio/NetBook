package cn.sharesdk.onekeyshare;

import com.mob.tools.a;
import java.util.HashMap;

class PlatformListFakeActivity$1 extends a
{
  public void onResult(HashMap<String, Object> paramHashMap)
  {
    if (paramHashMap == null);
    do
      return;
    while (!paramHashMap.containsKey("editRes"));
    HashMap localHashMap = (HashMap)paramHashMap.get("editRes");
    this.this$0.themeShareCallback.doShare(localHashMap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.PlatformListFakeActivity.1
 * JD-Core Version:    0.6.0
 */