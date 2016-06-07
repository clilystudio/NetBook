package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;

public class SimpleOnImageGotListener
  implements OnImageGotListener
{
  public static final SimpleOnImageGotListener INSTANCE = new SimpleOnImageGotListener();

  public Bitmap onImageGot(AsyncView paramAsyncView, Bitmap paramBitmap, String paramString)
  {
    if ((paramString != null) && (paramString.trim().length() > 0) && (paramString.equals(paramAsyncView.getUrl())))
      return paramBitmap;
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.SimpleOnImageGotListener
 * JD-Core Version:    0.6.0
 */