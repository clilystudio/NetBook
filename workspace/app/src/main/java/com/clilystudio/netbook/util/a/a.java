package com.clilystudio.netbook.util.a;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a {

    public static InsideLink a(String String1) {
        if (String1 == null || String1.length() < 4)
            throw new IllegalArgumentException(new StringBuilder().append(String1).append(" must have length above 4").toString());
        else {
            Matcher Matcher2 = Pattern.compile("^\\[\\[(.+?):(.+?) (.+)\\]\\]$").matcher((CharSequence) String1);

            if (!Matcher2.find())
                throw new IllegalArgumentException(new StringBuilder().append(String1).append(" is in wrong format").toString());
            else
                return InsideLinkFactory.create(Matcher2.group(1), Matcher2.group(2), Matcher2.group(3));
        }
    }
}
