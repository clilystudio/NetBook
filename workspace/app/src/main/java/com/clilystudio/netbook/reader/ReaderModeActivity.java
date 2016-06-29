package com.clilystudio.netbook.reader;

import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

public class ReaderModeActivity extends BaseActivity {
    protected int a;
    protected String b;
    protected String c;

    private String g(String string) {
        if (this.getIntent() != null) {
            return this.getIntent().getStringExtra(string);
        }
        return null;
    }

    public final ReaderWebPageFragment a(String string) {
        ReaderWebPageFragment readerWebPageFragment = (ReaderWebPageFragment) this.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (readerWebPageFragment == null) {
            readerWebPageFragment = ReaderWebPageFragment.a(this.a, string);
        }
        return readerWebPageFragment;
    }

    public final void b() {
        this.startActivity(ModeListActivity.a(this, this.b, this.c, this.a));
        this.overridePendingTransition(R.anim.mode_list_enter_in, R.anim.mode_list_enter_out);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = this.g("BOOK_ID");
        this.c = this.g("BOOK_TITLE");
        this.a = bundle != null ? bundle.getInt("savedCurrentMode", 5) : this.getIntent().getIntExtra("BOOK_MODE", 5);
        this.getIntent().getBooleanExtra("SELECT_LAST", false);
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("savedCurrentMode", this.a);
    }
}
