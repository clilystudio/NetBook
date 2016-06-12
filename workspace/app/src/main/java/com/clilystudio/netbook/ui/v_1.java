
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.ximalaya.ting.android.opensdk.model.tag.Tag;

final class v implements View$OnClickListener {

    v(AudiobookCategoryActivity AudiobookCategoryActivity1, Tag Tag2)
    {
        b = AudiobookCategoryActivity1;
        a = Tag2;
    }

    private Tag a;
    private AudiobookCategoryActivity b;

    public final void onClick(View View1)
    {
        b.startActivity( AudiobookCategoryListActivity.a( (Context) b, a.getTagName() ) );
    }
}
