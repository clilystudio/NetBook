
package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.text.Editable;
import android.widget.EditText;
import com.clilystudio.netbook.model.BookSummary;
import java.util.Map;

final class J implements DialogInterface$OnClickListener {

    J(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1, BookSummary BookSummary2, EditText EditText3)
    {
        c = UGCGuideEditBooksActivity1;
        a = BookSummary2;
        b = EditText3;
    }

    private BookSummary a;
    private EditText b;
    private UGCGuideEditBooksActivity c;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        c.a.put( a.getId(), b.getText().toString() );
    }
}
