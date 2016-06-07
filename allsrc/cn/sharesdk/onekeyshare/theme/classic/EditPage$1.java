package cn.sharesdk.onekeyshare.theme.classic;

import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.ShareCore;
import com.mob.tools.b.j;
import java.util.ArrayList;

class EditPage$1 extends Thread
{
  public void run()
  {
    while (true)
    {
      int j;
      try
      {
        EditPage.access$002(this.this$0, ShareSDK.getPlatformList());
        if (EditPage.access$000(this.this$0) == null)
          return;
        ArrayList localArrayList = new ArrayList();
        Platform[] arrayOfPlatform = EditPage.access$000(this.this$0);
        int i = arrayOfPlatform.length;
        j = 0;
        if (j >= i)
          continue;
        Platform localPlatform = arrayOfPlatform[j];
        String str = localPlatform.getName();
        if ((!(localPlatform instanceof CustomPlatform)) && (!ShareCore.isUseClientToShare(str)))
        {
          localArrayList.add(localPlatform);
          break label170;
          EditPage.access$002(this.this$0, new Platform[localArrayList.size()]);
          int k = 0;
          if (k >= EditPage.access$000(this.this$0).length)
            continue;
          EditPage.access$000(this.this$0)[k] = ((Platform)localArrayList.get(k));
          k++;
          continue;
          j.a(1, new EditPage.1.1(this));
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        return;
      }
      label170: j++;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.EditPage.1
 * JD-Core Version:    0.6.0
 */