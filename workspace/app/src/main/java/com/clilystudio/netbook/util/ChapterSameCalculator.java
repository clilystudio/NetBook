package com.clilystudio.netbook.util;

import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

public final class ChapterSameCalculator {
    private float a = 1.0f;
    private float b = 1.0f;

    private static int a(Set<Character> set, Set<Character> set2) {
        LinkedHashSet<Character> linkedHashSet = new LinkedHashSet<>();
        linkedHashSet.addAll(set);
        linkedHashSet.removeAll(set2);
        return linkedHashSet.size();
    }

    /*
     * Enabled aggressive block sorting
     */
    public final float a(String string, String string2) {
        int n;
        LinkedHashSet<Character> linkedHashSet = new LinkedHashSet<>();
        LinkedHashSet<Character> linkedHashSet2 = new LinkedHashSet<>();
        if (string == null && string2 != null) {
            String string3 = string2.toUpperCase(Locale.US);
            for (n = 0; n < string3.length(); ++n) {
                linkedHashSet2.add(string3.charAt(n));
            }
        } else if (string != null && string2 == null) {
            String string4 = string.toUpperCase(Locale.US);
            for (n = 0; n < string4.length(); ++n) {
                linkedHashSet.add(string4.charAt(n));
                ++n;
            }
        } else if (string != null && string2 != null) {
            String string5 = string.toUpperCase(Locale.US);
            String string6 = string2.toUpperCase(Locale.US);
            for (n = 0; n < string6.length(); ++n) {
                   linkedHashSet2.add(string6.charAt(n));
            }
            for (int i = 0; i < string5.length(); ++i) {
                linkedHashSet.add(string5.charAt(i));
            }
        }
        LinkedHashSet<Character> linkedHashSet3 = new LinkedHashSet<>();
        if (linkedHashSet.size() > linkedHashSet2.size()) {
            linkedHashSet3.addAll(linkedHashSet);
            linkedHashSet3.retainAll(linkedHashSet2);
        } else {
            linkedHashSet3.addAll(linkedHashSet2);
            linkedHashSet3.retainAll(linkedHashSet);
        }
        int n4 = linkedHashSet3.size();
        int n5 = ChapterSameCalculator.a(linkedHashSet, linkedHashSet2);
        int n6 = ChapterSameCalculator.a(linkedHashSet2, linkedHashSet);
        return (float) n4 / ((float) n4 + this.a * (float) n5 + this.b * (float) n6);
    }
}
