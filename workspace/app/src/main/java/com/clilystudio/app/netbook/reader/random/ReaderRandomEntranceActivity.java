package com.clilystudio.app.netbook.reader.random;

import android.os.Bundle;
import android.view.View;

import com.clilystudio.app.netbook.ui.BaseActivity;
import com.clilystudio.app.netbook.widget.SAutoBgButton;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ReaderRandomEntranceActivity extends BaseActivity
        implements View.OnClickListener {

    @InjectView(2131493156)
    SAutoBgButton mReadRandomBook;

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case 2131493156:
        }
        new b(this, 2131034218, true).b(new String[0]);
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903120);
        b_initContentView("随机看书");
        ButterKnife.inject(this);
        this.mReadRandomBook.setOnClickListener(this);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.ReaderRandomEntranceActivity
 * JD-Core Version:    0.6.2
 */