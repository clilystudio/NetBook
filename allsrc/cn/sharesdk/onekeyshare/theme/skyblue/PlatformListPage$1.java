package cn.sharesdk.onekeyshare.theme.skyblue;

import android.os.AsyncTask;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;

class PlatformListPage$1 extends AsyncTask<Void, Void, Platform[]>
{
  protected Platform[] doInBackground(Void[] paramArrayOfVoid)
  {
    return ShareSDK.getPlatformList();
  }

  protected void onPostExecute(Platform[] paramArrayOfPlatform)
  {
    PlatformListPage.access$100(this.this$0).setData(paramArrayOfPlatform, PlatformListPage.access$000(this.this$0));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage.1
 * JD-Core Version:    0.6.0
 */