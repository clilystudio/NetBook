package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.widget.SAutoBgButton;

import butterknife.ButterKnife;

public class ReaderRandomEntranceActivity extends BaseActivity implements View$OnClickListener {

    SAutoBgButton mReadRandomBook;

    public void onClick(View View1) {
        switch (View1.getId()) {
            default:
                return;
            case 292:
                new b((Activity) this, 2131034218, true).b(new String[0]);
                return;
        }
    }

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903120);
        b("\u968F\u673A\u770B\u4E66");
        ButterKnife.inject((Activity) this);
        mReadRandomBook.setOnClickListener(this);
    }
}
