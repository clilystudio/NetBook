package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ReaderActionBar extends RelativeLayout {
    private View a;
    private com.umeng.update.a b;
    private bZ c;
    private TextView d;
    private ImageView e;
    private TextView f;
    private TextView g;
    private View h;
    private View i;
    private View j;
    private TextView k;

    public ReaderActionBar(Context context) {
        super(context);
    }

    public ReaderActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ReaderActionBar(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    static /* synthetic */ bZ a(ReaderActionBar readerActionBar) {
        return readerActionBar.c;
    }

    static /* synthetic */ void a(ReaderActionBar readerActionBar, int n) {
        if (readerActionBar.b != null) {
            readerActionBar.b.a(n);
        }
    }

    public final void a() {
        if (this.c.h()) {
            this.d.setText(2131034422);
            this.e.setImageResource(2130837898);
            return;
        }
        this.d.setText(2131034420);
        this.e.setImageResource(2130837897);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (bl) {
            layoutParams.setMargins(0, am.k((Context) this.getContext()), 0, 0);
        } else {
            layoutParams.setMargins(0, 0, 0, 0);
        }
        this.setLayoutParams(layoutParams);
    }

    public final TextView b() {
        return this.k;
    }

    public final void b(boolean bl) {
        TextView textView = (TextView) this.findViewById(2131493889);
        if (bl) {
            textView.setText(2131034451);
            return;
        }
        textView.setText(2131034452);
    }

    public final void c(boolean bl) {
        this.a.setVisibility(8);
    }

    public final void d(boolean bl) {
        this.h.setVisibility(8);
    }

    public final void e(boolean bl) {
        this.j.setVisibility(8);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void f(boolean bl) {
        View view = this.i;
        int n = bl ? 0 : 4;
        view.setVisibility(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void g(boolean bl) {
        View view = this.findViewById(2131493893);
        int n = bl ? 0 : 8;
        view.setVisibility(n);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, am.k((Context) this.getContext()), 0, 0);
        this.setLayoutParams(layoutParams);
        ah ah2 = new ah(this);
        this.f = (TextView) this.findViewById(2131493882);
        this.g = (TextView) this.findViewById(2131493859);
        if (!a.r(this.getContext(), "switch_xunfei_read")) {
            this.g.setVisibility(8);
        }
        this.h = this.findViewById(2131493861);
        this.i = this.findViewById(2131493864);
        this.d = (TextView) this.findViewById(2131493887);
        this.e = (ImageView) this.findViewById(2131493886);
        this.a = this.findViewById(2131493891);
        this.j = this.findViewById(2131493862);
        this.k = (TextView) this.findViewById(2131493894);
        this.g.setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.h.setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.j.setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.a.setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.findViewById(2131493893).setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.findViewById(2131493881).setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.findViewById(2131493890).setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.findViewById(2131493892).setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.findViewById(2131493888).setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.findViewById(2131493860).setOnClickListener((View.OnClickListener) ((Object) ah2));
        this.findViewById(2131493885).setOnClickListener((View.OnClickListener) ((Object) new ai(this)));
    }

    public void setChapterLink(String string) {
        if (string == null || "".equals(string)) {
            this.g(false);
            return;
        }
        this.g(true);
        this.k.setText(string);
    }

    public void setOnBtnClickListener$7ead76dc(com.umeng.update.a a2) {
        this.b = a2;
    }

    public void setReaderStyle(bZ bZ2) {
        this.c = bZ2;
        this.a();
    }

    public void setTitle(String string) {
        this.f.setText(string);
    }
}
