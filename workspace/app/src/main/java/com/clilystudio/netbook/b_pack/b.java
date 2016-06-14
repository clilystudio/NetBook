package com.clilystudio.netbook.b_pack;

import android.content.Context;
import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public abstract class b
        extends ClickableSpan {
    protected Context a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    public b(Context context) {
        this.a = context;
        this.b = this.a.getResources().getColor(2131427452);
        this.d = this.a.getResources().getColor(2131427453);
        this.c = this.a.getResources().getColor(17170445);
    }

    abstract Intent a();

    public final void a(boolean bl) {
        this.e = bl;
    }

    @Override
    public void onClick(View view) {
        Intent intent = this.a();
        this.a.startActivity(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
        textPaint.setColor(this.b);
        int n = this.e ? this.d : this.c;
        textPaint.bgColor = n;
    }
}
