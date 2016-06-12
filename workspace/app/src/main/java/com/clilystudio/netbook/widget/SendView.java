package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;

import butterknife.ButterKnife;

public class SendView extends LinearLayout {

    EditText mSendContent;
    ImageView mSendView;
    public SendView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static void a(SendView SendView1) {
        SendView1.d();
    }

    private void d() {
        ImageView ImageView1 = mSendView;
        boolean boolean2;

        if (mSendContent.getText().toString().length() > 0)
            boolean2 = true;
        else
            boolean2 = false;
        ImageView1.setEnabled(boolean2);
    }

    public final void a() {
        mSendContent.setText((CharSequence) "");
    }

    public final EditText b() {
        return mSendContent;
    }

    public final ImageView c() {
        return mSendView;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject((View) this);
        d();
        mSendContent.addTextChangedListener((TextWatcher) new ay(this));
    }

    public void setSendContent(EditText EditText1) {
        mSendContent = EditText1;
    }

    public void setSendView(ImageView ImageView1) {
        mSendView = ImageView1;
    }
}
