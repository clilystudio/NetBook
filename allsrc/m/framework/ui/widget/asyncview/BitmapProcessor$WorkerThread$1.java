package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;
import java.util.WeakHashMap;
import m.framework.network.ResponseCallback;
import m.framework.utils.Utils;

class BitmapProcessor$WorkerThread$1
  implements ResponseCallback
{
  public void onResponse(InputStream paramInputStream)
  {
    Bitmap localBitmap = Utils.getBitmap(new BitmapProcessor.PatchInputStream(paramInputStream));
    if ((localBitmap == null) || (localBitmap.isRecycled()))
    {
      BitmapProcessor.WorkerThread.access$3(this.this$1, null);
      return;
    }
    BitmapProcessor.WorkerThread.access$4(this.this$1, localBitmap, this.val$file);
    if (localBitmap != null)
    {
      BitmapProcessor.access$3(BitmapProcessor.WorkerThread.access$5(this.this$1)).put(BitmapProcessor.ImageReq.access$0(this.val$req), localBitmap);
      BitmapProcessor.ImageReq.access$2(this.val$req, localBitmap);
    }
    BitmapProcessor.WorkerThread.access$3(this.this$1, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.BitmapProcessor.WorkerThread.1
 * JD-Core Version:    0.6.0
 */