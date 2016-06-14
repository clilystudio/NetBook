package com.clilystudio.netbook.reader.random;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ReaderRandomActionBar extends RelativeLayout {
    private TextView a;
    private a b;

    public ReaderRandomActionBar(Context context) {
        super(context);
    }

    public ReaderRandomActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ReaderRandomActionBar(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    static /* synthetic */ void a(ReaderRandomActionBar readerRandomActionBar, int n) {
        if (readerRandomActionBar.b != null) {
            readerRandomActionBar.b.a(n);
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, am.k((Context) this.getContext()), 0, 0);
        this.setLayoutParams(layoutParams);
        View view = this.findViewById(2131493934);
        this.a = (TextView) this.findViewById(2131493935);
        view.setOnClickListener((View.OnClickListener) ((Object) new c(this)));
    }

    public void setOnBtnClickListener$3ce42dcd(a a2) {
        this.b = a2;
    }

    public void setTitle(String string) {
        this.a.setText(string);
    }
}
