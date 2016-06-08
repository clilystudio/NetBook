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
    private final Bitmap b = BitmapFactory.decodeResource(getResources(), 2130837799);
    private final Bitmap c = BitmapFactory.decodeResource(getResources(), 2130837797);
    private final Bitmap e = BitmapFactory.decodeResource(getResources(), 2130837800);
    private final Bitmap f = BitmapFactory.decodeResource(getResources(), 2130837801);
    private Bitmap d = BitmapFactory.decodeResource(getResources(), 2130837798);
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;

    public GameImageView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        ViewCompat.setElevation(this, 10.0F);
    }

    public final void a(Game paramGame) {
        this.g = paramGame.isFirsthand();
        this.h = paramGame.isRecommend();
        this.i = paramGame.isGiftFlag();
        this.j = paramGame.isActivityFlag();
        this.k = paramGame.isHotFlag();
        invalidate();
    }

    protected void onDraw(Canvas paramCanvas) {
        super.onDraw(paramCanvas);
        Bitmap localBitmap;
        if (this.h)
            localBitmap = this.e;
        while (true) {
            if (localBitmap != null)
                paramCanvas.drawBitmap(localBitmap, getWidth() - localBitmap.getWidth(), 0.0F, null);
            return;
            if (this.g) {
                localBitmap = this.f;
                continue;
            }
            if (this.i) {
                localBitmap = this.d;
                continue;
            }
            if (this.j) {
                localBitmap = this.c;
                continue;
            }
            if (this.k) {
                localBitmap = this.b;
                continue;
            }
            localBitmap = null;
        }
    }
}

