package com.clilystudio.netbook.reader.random;

import android.os.Bundle;
import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.widget.SAutoBgButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ReaderRandomEntranceActivity extends BaseActivity implements View.OnClickListener {

    SAutoBgButton mReadRandomBook;

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case R.id.read_random_book:
        }
        new b(this, R.string.loading, true).b(new String[0]);
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(R.layout.activity_random_read_entrance);
        b("随机看书");
        mReadRandomBook = (SAutoBgButton)findViewById(R.id.read_random_book);
        this.mReadRandomBook.setOnClickListener(this);
    }
}

