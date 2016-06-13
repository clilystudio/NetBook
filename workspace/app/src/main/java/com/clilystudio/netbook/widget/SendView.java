package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class SendView
        extends LinearLayout {
    @InjectView(value = 2131494004)
    EditText mSendContent;
    @InjectView(value = 2131494005)
    ImageView mSendView;

    public SendView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(SendView sendView) {
        sendView.d();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void d() {
        ImageView imageView = this.mSendView;
        boolean bl = this.mSendContent.getText().toString().length() > 0;
        imageView.setEnabled(bl);
    }

    public final void a() {
        this.mSendContent.setText("");
    }

    public final EditText b() {
        return this.mSendContent;
    }

    public final ImageView c() {
        return this.mSendView;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject(this);
        this.d();
        this.mSendContent.addTextChangedListener(new ay(this));
    }

    public void setSendContent(EditText editText) {
        this.mSendContent = editText;
    }

    public void setSendView(ImageView imageView) {
        this.mSendView = imageView;
    }
}
