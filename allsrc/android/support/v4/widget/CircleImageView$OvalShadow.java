package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.shapes.OvalShape;

class CircleImageView$OvalShadow extends OvalShape
{
  private int mCircleDiameter;
  private RadialGradient mRadialGradient;
  private Paint mShadowPaint = new Paint();

  public CircleImageView$OvalShadow(CircleImageView paramCircleImageView, int paramInt1, int paramInt2)
  {
    CircleImageView.access$002(paramCircleImageView, paramInt1);
    this.mCircleDiameter = paramInt2;
    this.mRadialGradient = new RadialGradient(this.mCircleDiameter / 2, this.mCircleDiameter / 2, CircleImageView.access$000(paramCircleImageView), new int[] { 1023410176, 0 }, null, Shader.TileMode.CLAMP);
    this.mShadowPaint.setShader(this.mRadialGradient);
  }

  public void draw(Canvas paramCanvas, Paint paramPaint)
  {
    int i = this.this$0.getWidth();
    int j = this.this$0.getHeight();
    paramCanvas.drawCircle(i / 2, j / 2, this.mCircleDiameter / 2 + CircleImageView.access$000(this.this$0), this.mShadowPaint);
    paramCanvas.drawCircle(i / 2, j / 2, this.mCircleDiameter / 2, paramPaint);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.CircleImageView.OvalShadow
 * JD-Core Version:    0.6.0
 */