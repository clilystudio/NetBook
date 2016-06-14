package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.SmartImageView;

public class GameImageView extends SmartImageView {
    private final Bitmap b;
    private final Bitmap c;
    private final Bitmap e;
    private final Bitmap f;
    private Bitmap d;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;

    public GameImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = BitmapFactory.decodeResource(this.getResources(), 2130837800);
        this.f = BitmapFactory.decodeResource(this.getResources(), 2130837801);
        this.d = BitmapFactory.decodeResource(this.getResources(), 2130837798);
        this.b = BitmapFactory.decodeResource(this.getResources(), 2130837799);
        this.c = BitmapFactory.decodeResource(this.getResources(), 2130837797);
        ViewCompat.setElevation(this, 10.0f);
    }

    public final void a(Game game) {
        this.g = game.isFirsthand();
        this.h = game.isRecommend();
        this.i = game.isGiftFlag();
        this.j = game.isActivityFlag();
        this.k = game.isHotFlag();
        this.invalidate();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        super.onDraw(canvas);
        if (this.h) {
            bitmap = this.e;
        } else if (this.g) {
            bitmap = this.f;
        } else if (this.i) {
            bitmap = this.d;
        } else if (this.j) {
            bitmap = this.c;
        } else {
            if (!this.k) {
                return;
            }
            bitmap = this.b;
        }
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, this.getWidth() - bitmap.getWidth(), 0.0f, null);
        }
    }
}
