package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;

public class BitmapProcessor$ImageReq
{
  private BitmapCallback callback;
  private Bitmap image;
  private long reqTime = System.currentTimeMillis();
  private String url;
  private BitmapProcessor.WorkerThread worker;

  private void throwComplete(Bitmap paramBitmap)
  {
    this.image = paramBitmap;
    if (this.callback != null)
      this.callback.onImageGot(this.url, this.image);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("url=").append(this.url);
    localStringBuilder.append("time=").append(this.reqTime);
    localStringBuilder.append("worker=").append(this.worker.getName()).append(" (").append(this.worker.getId());
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.BitmapProcessor.ImageReq
 * JD-Core Version:    0.6.0
 */