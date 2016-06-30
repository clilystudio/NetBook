package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.d;

public class AddBookFailedActivity extends BaseActivity {
    public static Intent a(Context context, String string) {
        return new d().a(context, AddBookFailedActivity.class).a("bookTitle", string).a();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_add_book_failed);
        this.b(R.string.add_book_title);
        String string = this.getIntent().getStringExtra("bookTitle");
        String text = "追书君正奔走在找《" + string + "》的路上，请耐心等待";
        ((TextView) this.findViewById(R.id.add_book_failed_tips)).setText(text);
    }
}
