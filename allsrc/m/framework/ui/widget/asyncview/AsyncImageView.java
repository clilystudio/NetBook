package m.framework.ui.widget.asyncview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.Random;
import m.framework.utils.UIHandler;
import m.framework.utils.Utils;

public class AsyncImageView extends ImageView
  implements Handler.Callback, AsyncView, BitmapCallback
{
  public static final int DEFAULT_TRANSPARENT = 17170445;
  private static Bitmap DEFAULT_TRANSPARENT_BITMAP;
  private static final int MSG_IMG_GOT = 1;
  private static String cacheDir;
  private static final Random rnd = new Random();
  private int defaultRes;
  private OnImageGotListener onImageGotListener;
  private String url;

  public AsyncImageView(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }

  public AsyncImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }

  public AsyncImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }

  private Bitmap getDefaultBitmap(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return BitmapFactory.decodeResource(getResources(), paramInt);
    case 17170445:
    }
    if (DEFAULT_TRANSPARENT_BITMAP == null)
      DEFAULT_TRANSPARENT_BITMAP = BitmapFactory.decodeResource(getResources(), 17170445);
    return DEFAULT_TRANSPARENT_BITMAP;
  }

  private void init(Context paramContext)
  {
    UIHandler.prepare();
    if (TextUtils.isEmpty(cacheDir))
      cacheDir = Utils.getCachePath(getContext(), "images");
    BitmapProcessor.prepare(cacheDir);
    setOnImageGotListener(SimpleOnImageGotListener.INSTANCE);
  }

  public void execute(String paramString)
  {
    execute(paramString, 0);
  }

  public void execute(String paramString, int paramInt)
  {
    this.url = paramString;
    this.defaultRes = paramInt;
    if (Utils.isNullOrEmpty(paramString))
    {
      setImageResource(paramInt);
      return;
    }
    Bitmap localBitmap = BitmapProcessor.getBitmapFromCache(paramString);
    if ((localBitmap != null) && (!localBitmap.isRecycled()))
    {
      setImageBitmap(localBitmap);
      return;
    }
    if (paramInt > 0)
      setImageBitmap(getDefaultBitmap(paramInt));
    BitmapProcessor.process(paramString, this);
  }

  public String getUrl()
  {
    return this.url;
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      Object localObject1 = ((Object[])paramMessage.obj)[0];
      Object localObject2 = ((Object[])paramMessage.obj)[1];
      if ((localObject2 != null) && (localObject1 != null) && (localObject1.equals(this.url)))
        setImageBitmap((Bitmap)localObject2);
    }
    else
    {
      return false;
    }
    setImageResource(this.defaultRes);
    return false;
  }

  public void onImageGot(String paramString, Bitmap paramBitmap)
  {
    if (this.onImageGotListener != null)
      paramBitmap = this.onImageGotListener.onImageGot(this, paramBitmap, paramString);
    Message localMessage = new Message();
    localMessage.what = 1;
    localMessage.obj = new Object[] { paramString, paramBitmap };
    UIHandler.sendMessageDelayed(localMessage, rnd.nextInt(300), this);
  }

  public void setOnImageGotListener(OnImageGotListener paramOnImageGotListener)
  {
    this.onImageGotListener = paramOnImageGotListener;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.asyncview.AsyncImageView
 * JD-Core Version:    0.6.0
 */