package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.widget.SAutoBgButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ReaderRandomEntranceActivity extends BaseActivity implements View.OnClickListener {
    @InjectView(value = 2131493156)
    SAutoBgButton mReadRandomBook;

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493156:
        }
        new b((Activity) this, 2131034218, true).b((Object[]) new String[0]);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903120);
        this.b("\u968f\u673a\u770b\u4e66");
        this.mReadRandomBook = (SAutoBgButton) findViewById(2131493156);
        this.mReadRandomBook.setOnClickListener(this);
    }
}
