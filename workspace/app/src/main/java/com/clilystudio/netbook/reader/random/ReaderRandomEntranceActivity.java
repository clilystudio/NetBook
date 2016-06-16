package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.widget.SAutoBgButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ReaderRandomEntranceActivity extends BaseActivity implements View.OnClickListener {
    SAutoBgButton mReadRandomBook;

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.read_random_book:
        }
        new b((Activity) this, R.string.loading, true).b((Object[]) new String[0]);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_random_read_entrance);
        this.b("\u968f\u673a\u770b\u4e66");
        this.mReadRandomBook = (SAutoBgButton) findViewById(R.id.read_random_book);
        this.mReadRandomBook.setOnClickListener(this);
    }
}
