
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.ui.BaseActivity;

public class AddTopicCategoryActivity extends BaseActivity {

    private String a;
    private String b;
    private String c;
    private boolean e;

    static String a(AddTopicCategoryActivity AddTopicCategoryActivity1)
    {
        return AddTopicCategoryActivity1.a;
    }

    static String b(AddTopicCategoryActivity AddTopicCategoryActivity1)
    {
        return AddTopicCategoryActivity1.b;
    }

    static String c(AddTopicCategoryActivity AddTopicCategoryActivity1)
    {
        return AddTopicCategoryActivity1.c;
    }

    static boolean d(AddTopicCategoryActivity AddTopicCategoryActivity1)
    {
        return AddTopicCategoryActivity1.e;
    }

    public void onCreate(Bundle Bundle1)
    {
        View View3;
        View View4;

        super.onCreate( Bundle1 );
        setContentView( 2130903146 );
        b( 2131034294 );
        com.clilystudio.netbook.a.a();
        com.clilystudio.netbook.a.a( (Activity) this );
        a = getIntent().getStringExtra( "book_post_list_bookId" );
        b = getIntent().getStringExtra( "book_post_list_bookTitle" );
        c = getIntent().getStringExtra( "add_post_mode" );
        e = getIntent().getBooleanExtra( "book_post_list_from_reader", false );
        View3 = findViewById( 2131493266 );
        View4 = findViewById( 2131493268 );
        View3.setOnClickListener( (View$OnClickListener) new I( this ) );
        View4.setOnClickListener( (View$OnClickListener) new J( this ) );
    }
}
