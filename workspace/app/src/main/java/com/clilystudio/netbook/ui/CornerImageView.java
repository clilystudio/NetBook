package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.TempUtil;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

public class CornerImageView extends SmartImageView {
    private int b;

    public CornerImageView(Context context) {
        super(context);
        this.b = TempUtil.getDipSize(this.getContext(), 2.0f);
    }

    public CornerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.CornerSmartImageView);
        this.b = (int) typedArray.getDimension(typedArray.getIndex(R.styleable.CornerSmartImageView_radius), 2.0f);
        typedArray.recycle();
    }

    @Override
    protected BitmapDisplayer a() {
        return new BitmapDisplayer() {
            @Override
            public void display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom) {
                imageAware.setImageDrawable(new c(bitmap, b, 0));
            }
        };
    }

    @Override
    public void setImageURI(Uri uri) {
        this.setImageBitmap(TempUtil.getCircleBitmap(BitmapFactory.decodeFile(uri.getPath())));
    }

    @Override
    public void setImageUrl(String string, int n) {
        super.setImageUrl(string, n);
    }

    public final class c extends Drawable {
        private float a;
        private int b;
        private RectF c = new RectF();
        private RectF d;
        private BitmapShader e;
        private Paint f;

        public c(Bitmap bitmap, int size, int margin) {
            this.a = size;
            this.b = margin;
            this.e = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
            this.d = new RectF(margin, margin, bitmap.getWidth() - margin, bitmap.getHeight() - margin);
            this.f = new Paint();
            this.f.setAntiAlias(true);
            this.f.setShader(this.e);
        }


        @Override
        public void draw(Canvas canvas) {
            canvas.drawRoundRect(this.c, this.a, this.a, this.f);
        }

        @Override
        public void setAlpha(int alpha) {
            this.f.setAlpha(alpha);
        }

        @Override
        public void setColorFilter(ColorFilter colorFilter) {
            this.f.setColorFilter(colorFilter);
        }

        @Override
        public int getOpacity() {
            return PixelFormat.TRANSLUCENT;
        }

        @Override
        protected void onBoundsChange(Rect bounds) {
            super.onBoundsChange(bounds);
            this.c.set(this.b, this.b, bounds.width() - this.b, bounds.height() - this.b);
            Matrix localMatrix = new Matrix();
            localMatrix.setRectToRect(this.d, this.c, Matrix.ScaleToFit.FILL);
            this.e.setLocalMatrix(localMatrix);
        }
    }
}
