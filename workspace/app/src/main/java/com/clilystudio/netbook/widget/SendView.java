package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.clilystudio.netbook.R;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class SendView extends LinearLayout {
    EditText mSendContent;
    ImageView mSendView;

    public SendView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    private void d() {
        ImageView localImageView = this.mSendView;
        if (this.mSendContent.getText().toString().length() > 0) ;
        for (boolean bool = true; ; bool = false) {
            localImageView.setEnabled(bool);
            return;
        }
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

    protected void onFinishInflate() {
        super.onFinishInflate();
        mSendContent = (EditText) findViewById(R.id.send_content);
        mSendView = (ImageView) findViewById(R.id.commit);
        d();
        this.mSendContent.addTextChangedListener(new ay(this));
    }

    public void setSendContent(EditText paramEditText) {
        this.mSendContent = paramEditText;
    }

    public void setSendView(ImageView paramImageView) {
        this.mSendView = paramImageView;
    }
}

