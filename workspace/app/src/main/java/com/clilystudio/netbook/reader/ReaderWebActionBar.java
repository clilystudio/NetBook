package com.clilystudio.netbook.reader;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ReaderWebActionBar extends RelativeLayout {
    private a a;
    private TextView b;
    private View c;
    private View d;
    private View e;
    private TextView f;

    public ReaderWebActionBar(Context context) {
        super(context);
    }

    public ReaderWebActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ReaderWebActionBar(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    static /* synthetic */ void a(ReaderWebActionBar readerWebActionBar, int n) {
        if (readerWebActionBar.a != null) {
            readerWebActionBar.a.a(n);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(boolean bl) {
        View view = this.findViewById(2131493893);
        int n = bl ? 0 : 8;
        view.setVisibility(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl) {
        View view = this.d;
        int n = bl ? 0 : 4;
        view.setVisibility(n);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (TextView) this.findViewById(2131493882);
        this.c = this.findViewById(2131493861);
        this.d = this.findViewById(2131493864);
        this.e = this.findViewById(2131493862);
        this.f = (TextView) this.findViewById(2131493894);
        View view = this.findViewById(2131493881);
        cA cA2 = new cA(this);
        this.c.setOnClickListener((View.OnClickListener) ((Object) cA2));
        this.e.setOnClickListener((View.OnClickListener) ((Object) cA2));
        this.findViewById(2131493893).setOnClickListener((View.OnClickListener) ((Object) cA2));
        view.setOnClickListener((View.OnClickListener) ((Object) cA2));
    }

    public void setChapterLink(String string) {
        if (string == null || "".equals(string)) {
            this.b(false);
            return;
        }
        this.b(true);
        this.f.setText(string);
    }

    public void setOnBtnClickListener$74b8600c(a a2) {
        this.a = a2;
    }

    public void setTitle(String string) {
        this.b.setText(string);
    }

    public void setTopicCount(String string) {
    }
}
