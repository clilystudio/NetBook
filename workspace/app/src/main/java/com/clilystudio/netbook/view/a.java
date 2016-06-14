package com.clilystudio.netbook.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;

public final class a extends Dialog implements DialogInterface {
    private View a;

    public a(Context context) {
        super(context, 2131165376);
    }

    public final a a(View view) {
        this.a = view;
        return this;
    }

    @Override
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context context = this.getContext();
        this.setCanceledOnTouchOutside(true);
        View view = View.inflate(context, 2130903169, null);
        ((ViewGroup) view.findViewById(2131493363)).addView(this.a);
        this.setContentView(view);
        WindowManager.LayoutParams layoutParams = this.getWindow().getAttributes();
        layoutParams.height = -2;
        layoutParams.width = -1;
        layoutParams.gravity = 80;
        this.getWindow().setAttributes(layoutParams);
    }
}
