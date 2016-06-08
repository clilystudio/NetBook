package com.clilystudio.netbook.b_pack;

import android.content.Context;
import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public abstract class b extends ClickableSpan {
    protected Context a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    public b(Context paramContext) {
        this.a = paramContext;
        this.b = this.a.getResources().getColor(2131427452);
        this.d = this.a.getResources().getColor(2131427453);
        this.c = this.a.getResources().getColor(17170445);
    }

    abstract Intent a();

    public final void a(boolean paramBoolean) {
        this.e = paramBoolean;
    }

    public void onClick(View paramView) {
        Intent localIntent = a();
        this.a.startActivity(localIntent);
    }

    public void updateDrawState(TextPaint paramTextPaint) {
        super.updateDrawState(paramTextPaint);
        paramTextPaint.setUnderlineText(false);
        paramTextPaint.setColor(this.b);
        if (this.e) ;
        for (int i = this.d; ; i = this.c) {
            paramTextPaint.bgColor = i;
            return;
        }
    }
}

