package cn.sharesdk.onekeyshare.theme.skyblue;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.ImageView;

class FollowListPage$RotateImageView extends ImageView
{
  private int rotation;

  public FollowListPage$RotateImageView(Context paramContext)
  {
    super(paramContext);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.rotate(this.rotation, getWidth() / 2, getHeight() / 2);
    super.onDraw(paramCanvas);
  }

  public void setRotation(int paramInt)
  {
    this.rotation = paramInt;
    invalidate();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.FollowListPage.RotateImageView
 * JD-Core Version:    0.6.0
 */