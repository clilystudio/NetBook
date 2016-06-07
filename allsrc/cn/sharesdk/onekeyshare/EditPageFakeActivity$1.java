package cn.sharesdk.onekeyshare;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.arcsoft.hpay100.a.a;
import java.util.ArrayList;
import java.util.Iterator;

class EditPageFakeActivity$1 extends AsyncTask<Object, Void, EditPageFakeActivity.ImageListResultsCallback>
{
  protected EditPageFakeActivity.ImageListResultsCallback doInBackground(Object[] paramArrayOfObject)
  {
    Iterator localIterator = EditPageFakeActivity.access$000(this.this$0).iterator();
    while (localIterator.hasNext())
    {
      EditPageFakeActivity.ImageInfo localImageInfo = (EditPageFakeActivity.ImageInfo)localIterator.next();
      if (localImageInfo.bitmap != null)
        continue;
      try
      {
        String str = localImageInfo.srcValue;
        if ((str.startsWith("http://")) || (str.startsWith("https://")))
          str = a.c(EditPageFakeActivity.access$100(this.this$0), str);
        Bitmap localBitmap = a.f(str);
        if (localBitmap == null)
          continue;
        localImageInfo.bitmap = localBitmap;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
    return (EditPageFakeActivity.ImageListResultsCallback)paramArrayOfObject[0];
  }

  protected void onPostExecute(EditPageFakeActivity.ImageListResultsCallback paramImageListResultsCallback)
  {
    paramImageListResultsCallback.onFinish(EditPageFakeActivity.access$000(this.this$0));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.EditPageFakeActivity.1
 * JD-Core Version:    0.6.0
 */