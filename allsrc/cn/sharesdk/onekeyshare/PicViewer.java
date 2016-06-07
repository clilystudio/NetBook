package cn.sharesdk.onekeyshare;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.mob.tools.a;

public class PicViewer extends a
  implements View.OnTouchListener
{
  static final int DRAG = 1;
  static final float MAX_SCALE = 10.0F;
  static final int NONE = 0;
  static final int ZOOM = 2;
  float dist = 1.0F;
  DisplayMetrics dm;
  private ImageView ivViewer;
  Matrix matrix = new Matrix();
  PointF mid = new PointF();
  float minScaleR = 1.0F;
  int mode = 0;
  private Bitmap pic;
  PointF prev = new PointF();
  Matrix savedMatrix = new Matrix();

  private void CheckView()
  {
    float[] arrayOfFloat = new float[9];
    this.matrix.getValues(arrayOfFloat);
    if (this.mode == 2)
    {
      if (arrayOfFloat[0] < this.minScaleR)
        this.matrix.setScale(this.minScaleR, this.minScaleR);
      if (arrayOfFloat[0] > 10.0F)
        this.matrix.set(this.savedMatrix);
    }
    center();
  }

  private void center()
  {
    center(true, true);
  }

  private void midPoint(PointF paramPointF, MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0) + paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) + paramMotionEvent.getY(1);
    paramPointF.set(f1 / 2.0F, f2 / 2.0F);
  }

  private void minZoom()
  {
    this.minScaleR = Math.min(this.dm.widthPixels / this.pic.getWidth(), this.dm.heightPixels / this.pic.getHeight());
    this.matrix.setScale(this.minScaleR, this.minScaleR);
  }

  private float spacing(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
    return FloatMath.sqrt(f1 * f1 + f2 * f2);
  }

  protected void center(boolean paramBoolean1, boolean paramBoolean2)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.set(this.matrix);
    RectF localRectF = new RectF(0.0F, 0.0F, this.pic.getWidth(), this.pic.getHeight());
    localMatrix.mapRect(localRectF);
    float f1 = localRectF.height();
    float f2 = localRectF.width();
    int j;
    float f3;
    if (paramBoolean2)
    {
      j = this.dm.heightPixels;
      if (f1 < j)
        f3 = (j - f1) / 2.0F - localRectF.top;
    }
    while (true)
    {
      float f4 = 0.0F;
      int i;
      if (paramBoolean1)
      {
        i = this.dm.widthPixels;
        if (f2 >= i)
          break label208;
        f4 = (i - f2) / 2.0F - localRectF.left;
      }
      while (true)
      {
        this.matrix.postTranslate(f4, f3);
        return;
        if (localRectF.top > 0.0F)
        {
          f3 = -localRectF.top;
          break;
        }
        if (localRectF.bottom >= j)
          break label267;
        f3 = this.ivViewer.getHeight() - localRectF.bottom;
        break;
        label208: if (localRectF.left > 0.0F)
        {
          f4 = -localRectF.left;
          continue;
        }
        boolean bool = localRectF.right < i;
        f4 = 0.0F;
        if (!bool)
          continue;
        f4 = this.ivViewer.getWidth() - localRectF.right;
      }
      label267: f3 = 0.0F;
    }
  }

  public void onCreate()
  {
    this.ivViewer = new ImageView(this.activity);
    this.ivViewer.setScaleType(ImageView.ScaleType.MATRIX);
    this.ivViewer.setBackgroundColor(-1073741824);
    this.ivViewer.setOnTouchListener(this);
    if ((this.pic != null) && (!this.pic.isRecycled()))
      this.ivViewer.setImageBitmap(this.pic);
    this.dm = new DisplayMetrics();
    this.activity.getWindowManager().getDefaultDisplay().getMetrics(this.dm);
    minZoom();
    CheckView();
    this.ivViewer.setImageMatrix(this.matrix);
    this.activity.setContentView(this.ivViewer);
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 3:
    case 4:
    default:
    case 0:
    case 5:
    case 1:
    case 6:
    case 2:
    }
    while (true)
    {
      this.ivViewer.setImageMatrix(this.matrix);
      CheckView();
      return true;
      this.savedMatrix.set(this.matrix);
      this.prev.set(paramMotionEvent.getX(), paramMotionEvent.getY());
      this.mode = 1;
      continue;
      this.dist = spacing(paramMotionEvent);
      if (spacing(paramMotionEvent) <= 10.0F)
        continue;
      this.savedMatrix.set(this.matrix);
      midPoint(this.mid, paramMotionEvent);
      this.mode = 2;
      continue;
      this.mode = 0;
      continue;
      if (this.mode == 1)
      {
        this.matrix.set(this.savedMatrix);
        this.matrix.postTranslate(paramMotionEvent.getX() - this.prev.x, paramMotionEvent.getY() - this.prev.y);
        continue;
      }
      if (this.mode != 2)
        continue;
      float f1 = spacing(paramMotionEvent);
      if (f1 <= 10.0F)
        continue;
      this.matrix.set(this.savedMatrix);
      float f2 = f1 / this.dist;
      this.matrix.postScale(f2, f2, this.mid.x, this.mid.y);
    }
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    this.pic = paramBitmap;
    if (this.ivViewer != null)
      this.ivViewer.setImageBitmap(paramBitmap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.PicViewer
 * JD-Core Version:    0.6.0
 */