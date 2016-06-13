package com.clilystudio.netbook.util.a;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a {
    public static InsideLink a(String string) {
        if (string == null || string.length() < 4) {
            throw new IllegalArgumentException(string + " must have length above 4");
        }
        Matcher matcher = Pattern.compile("^\\[\\[(.+?):(.+?) (.+)\\]\\]$").matcher(string);
        if (!matcher.find()) {
            throw new IllegalArgumentException(string + " is in wrong format");
        }
        return InsideLinkFactory.create(matcher.group(1), matcher.group(2), matcher.group(3));
    }
}
