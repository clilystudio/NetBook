package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.SmartImageView;

public class GameImageView extends SmartImageView {

    private final Bitmap e = BitmapFactory.decodeResource(getResources(), 2130837800);
    private final Bitmap f = BitmapFactory.decodeResource(getResources(), 2130837801);
    private final Bitmap b = BitmapFactory.decodeResource(getResources(), 2130837799);
    private final Bitmap c = BitmapFactory.decodeResource(getResources(), 2130837797);
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private Bitmap d = BitmapFactory.decodeResource(getResources(), 2130837798);
    public GameImageView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        ViewCompat.setElevation((View) this, 10.0F);
    }

    public final void a(Game Game1) {
        g = Game1.isFirsthand();
        h = Game1.isRecommend();
        i = Game1.isGiftFlag();
        j = Game1.isActivityFlag();
        k = Game1.isHotFlag();
        invalidate();
    }

    protected void onDraw(Canvas Canvas1) {
        Bitmap Bitmap2;

        super.onDraw(Canvas1);
        if (h)
            Bitmap2 = e;
        else if (g)
            Bitmap2 = f;
        else if (i)
            Bitmap2 = d;
        else if (j)
            Bitmap2 = c;
        else if (k)
            Bitmap2 = b;
        else
            Bitmap2 = null;
        if (Bitmap2 != null)
            Canvas1.drawBitmap(Bitmap2, (float) (getWidth() - Bitmap2.getWidth()), 0.0F, null);
    }
}
